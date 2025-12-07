id GEOGetVectorKitDisplayLinkVerificationLogicLog(void)
{
  if (GEOGetVectorKitDisplayLinkVerificationLogicLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitDisplayLinkVerificationLogicLog(void)::onceToken, &__block_literal_global_3268);
  }

  v1 = GEOGetVectorKitDisplayLinkVerificationLogicLog(void)::log;

  return v1;
}

BOOL gm::Box<double,2>::operator==(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  return a1[2] == a2[2] && a1[3] == a2[3];
}

double md::NavCamera::desiredPuckScreenPoint(float64x2_t *a1, float64x2_t a2, float64x2_t a3, float a4, float a5, float32x2_t a6, float32x2_t a7, float64x2_t a8, double a9)
{
  v9.f64[0] = a4;
  v10 = a5;
  v11.f64[0] = v9.f64[0];
  v11.f64[1] = 1.0 - v10;
  v12 = vdupq_lane_s64(*&a9, 0);
  v13 = vaddq_f64(v12, a2);
  v14 = vsubq_f64(a3, v12);
  v15 = vmaxnmq_f64(v14, a2);
  v16 = vminnmq_f64(vmaxnmq_f64(vmlaq_f64(a2, v11, vsubq_f64(a3, a2)), v13), v14);
  v17 = a1[1];
  v11.f64[0] = a1->f64[0];
  v11.f64[1] = a1[1].f64[1];
  v17.f64[1] = a1->f64[1];
  v9.f64[1] = v10 + -1.0;
  *&result = *&vminnmq_f64(vmaxnmq_f64(vminnmq_f64(vmaxnmq_f64(vmlaq_f64(vaddq_f64(vsubq_f64(v16, *a1), a8), v9, vsubq_f64(v11, v17)), vsubq_f64(v16, vcvtq_f64_f32(a6))), vaddq_f64(v16, vcvtq_f64_f32(a7))), vminnmq_f64(v13, a3)), v15);
  return result;
}

void sub_1B2AF4274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

long double md::MapDataAccess::_mercatorGroundCoordinateForScreenPoint(long double *a1, uint64_t a2, double a3)
{
  v13[0] = 0;
  v13[1] = 0;
  v13[2] = 0x3FF0000000000000;
  *&v13[3] = a3 * -0.0000000249532021;
  v4 = gm::PlaneUtils::rayPlaneIntersectionOrPoint<double>(v13, a2, a2);
  v6 = v5 * 40075017.0;
  v7 = v4 * 6.28318531;
  v9 = exp(v8 * 6.28318531 + -3.14159265);
  v10 = atan(v9) * 2.0 + -1.57079633;
  v11 = fmod(v7, 6.28318531);
  result = fmod(v11 + 6.28318531, 6.28318531) + -3.14159265;
  *a1 = v10;
  a1[1] = result;
  a1[2] = v6;
  return result;
}

void gdc::ViewDataAccess::screenPointForCoordinate(double *a1, uint64_t a2, double *a3)
{
  if (a1[47] * a1[46] != 0.0)
  {
    if (*a1 - 1 >= 3)
    {
      if (!*a1)
      {
        v18 = *(a2 + 8);
        v10 = tan(*a2 * 0.5 + 0.785398163);
        v11 = log(v10);
        v12.f64[0] = v18.f64[0];
        v12.f64[1] = v11;
        __asm { FMOV            V2.2D, #0.5 }

        v19 = vmlaq_f64(_Q2, vdupq_n_s64(0x3FC45F306DC9C883uLL), v12);
        v20 = vmuld_lane_f64(0.0000000249532021, v18, 1);
      }
    }

    else
    {
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
      v6 = __sincos_stret(*a2);
      v7 = 6378137.0 / sqrt(v6.__sinval * v6.__sinval * -0.00669437999 + 1.0);
      v8 = (v7 + v5) * v6.__cosval;
      v9 = __sincos_stret(v4);
      v19.f64[0] = v8 * v9.__cosval;
      v19.f64[1] = v8 * v9.__sinval;
      v20 = (v5 + v7 * 0.99330562) * v6.__sinval;
    }

    gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(a3, &v19);
  }
}

uint64_t gdc::Zoom::getZAdjustment(gdc::Zoom *this, int a2)
{
  v2 = 0;
  if (this && a2)
  {
    if (a2 >= this)
    {
      v2 = 0;
    }

    else
    {
      LODWORD(v2) = 0;
      do
      {
        v2 = (v2 + 1);
        a2 *= 2;
      }

      while (a2 < this);
    }

    if (a2 > this)
    {
      do
      {
        v2 = (v2 - 1);
        v3 = a2 <= 2 * this;
        LODWORD(this) = 2 * this;
      }

      while (!v3);
    }
  }

  return v2;
}

void std::__function::__func<gdc::ResourceManager::updateExpired(long long)::$_0,std::allocator<gdc::ResourceManager::updateExpired(long long)::$_0>,void ()(gdc::ResourceKey const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v4 = *(v2 + 56);
  v3 = *(v2 + 64);
  if (v4 != v3)
  {
    while (*(a2 + 2) != *v4)
    {
      v4 += 3;
      if (v4 == v3)
      {
        return;
      }
    }

    if (v4 != v3)
    {
      gdc::ResourceStore::resource(&v15, v4[1], a2);
      v7 = v15;
      if (v15)
      {
        v8 = *(v15 + 112);
        if (v8 >= 1 && *(v15 + 96) + v8 < *(a1 + 16))
        {
          if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
          {
            dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
          }

          v9 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v10 = (*(**(v2 + 448) + 16))(*(v2 + 448));
            gdc::ResourceKey::keysInt32Str(&__p, a2);
            v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            *buf = 136315394;
            v18 = v10;
            v19 = 2080;
            v20 = v11;
            _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_DEBUG, "%s Requested resource expired: %s", buf, 0x16u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          gdc::ResourceStore::erase(v4[1], a2);
          v12 = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((*(v2 + 312) + 8), a2);
          if (v12)
          {
            *(v12 + 28) = 0;
          }

          v13 = geo::linear_map<unsigned short,gdc::ResourceFetcher *,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,gdc::ResourceFetcher *>>,std::vector<std::pair<unsigned short,gdc::ResourceFetcher *>>>::operator[]((v2 + 32), *(v7 + 2));
          (*(**v13 + 48))(*v13, a2);
        }
      }

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      }
    }
  }
}

void sub_1B2AF5E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(a1);
}

void std::vector<geo::Coordinate3D<geo::Radians,double>>::push_back[abi:nn200100](void *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    __p[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v9);
    }

    v10 = 24 * v6;
    __p[0] = 0;
    __p[1] = v10;
    *v10 = *a2;
    *(v10 + 8) = *(a2 + 8);
    __p[2] = (24 * v6 + 24);
    __p[3] = 0;
    std::vector<geo::Coordinate3D<geo::Radians,double>>::__swap_out_circular_buffer(a1, __p);
    v5 = a1[1];
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    v5 = v4 + 24;
  }

  a1[1] = v5;
}

char *std::vector<gm::Matrix<float,2,1>>::__assign_with_size[abi:nn200100]<gm::Matrix<float,2,1> const*,gm::Matrix<float,2,1> const*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<gdc::Entity>::__vallocate[abi:nn200100](a1, v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 3)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = *(v5++ + 1);
      result += 8;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        *result = *v5;
        *(result + 1) = *(v5++ + 1);
        result += 8;
      }

      while (v5 != v12);
    }

    while (v12 != a3)
    {
      v13 = *v12++;
      *v11 = v13;
      v11 += 8;
    }

    a1[1] = v11;
  }

  return result;
}

float md::MapNavLabeler::currentRoadSignOffset(id *this)
{
  if (((*(*this + 45))(this) & 1) != 0 || *(*(this[3] + 42) + 163) << 16 == 393216 || (v3 = (*(*this + 48))(this), v2 = 0.0, v3))
  {
    [this[7] currentRoadSignPixelHeight];
    *&v2 = *&v2 / *(this[3] + 44);
  }

  return *&v2;
}

void std::__hash_table<std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,std::__unordered_map_hasher<gdc::LayerDataWithWorld,std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,gdc::LayerDataWithWorldHash,std::equal_to<gdc::LayerDataWithWorld>,true>,std::__unordered_map_equal<gdc::LayerDataWithWorld,std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,std::equal_to<gdc::LayerDataWithWorld>,gdc::LayerDataWithWorldHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataWithWorld const,std::shared_ptr<gdc::SubtileClipMask>>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataWithWorld const,std::shared_ptr<gdc::SubtileClipMask>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void std::__shared_ptr_emplace<gdc::SubtileClipMask>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::vector<geo::QuadTile>::emplace_back<geo::QuadTile>(void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<geo::QuadTile>::__emplace_back_slow_path<geo::QuadTile const&>(a1, a2);
  }

  else
  {
    *(v3 + 24) = 0;
    *(v3 + 4) = *(a2 + 4);
    *v3 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 24) = *(a2 + 24);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

_WORD *std::vector<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>>::emplace_back<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>> const&>(int64_t *a1, _WORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>>::__emplace_back_slow_path<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>> const&>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>::unordered_set((v3 + 4), (a2 + 4));
    result = v3 + 24;
    a1[1] = (v3 + 24);
  }

  a1[1] = result;
  return result;
}

void std::__hash_table<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,gdc::LayerDataRequestKey const&>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 104);
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_17;
  }

  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = *(a2 + 104);
    if (v3 >= *&v4)
    {
      v8 = v3 % *&v4;
    }
  }

  else
  {
    v8 = (*&v4 - 1) & v3;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_17:
    operator new();
  }

  while (1)
  {
    v11 = *(v10 + 1);
    if (v11 == v3)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v4)
      {
        v11 %= *&v4;
      }
    }

    else
    {
      v11 &= *&v4 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_17;
    }

LABEL_16:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  if (!gdc::LayerDataRequestKey::operator==(v10 + 16, a2))
  {
    goto LABEL_16;
  }
}

void gdc::LayerDataSource::createLayerDataRequests(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](a1 + 25);
  v11[0] = 0;
  v11[1] = 0;
  for (i = *(a2 + 16); i; i = *i)
  {
    v10 = 0;
    if (gdc::LayerDataSource::shouldCreateLayerDataRequest(a1, (i + 16), a3, &v10))
    {
      v8 = a1[8] + v11[i[16]];
      if (v8 < (*(*a1 + 128))(a1))
      {
        ++v11[i[16]];
        ++a1[36];
        operator new();
      }
    }

    gdc::LayerDataSource::_updateRequestTimestamp(a1, i + 16, &v12);
  }

  gdc::LayerDataSource::createLayerDataRequests(a1, a1 + 25, a3, a4);
}

uint64_t **gdc::LayerDataSource::_updateRequestTimestamp(void *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v6 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::find<gdc::LayerDataRequestKey>(a1 + 5, a2);
  if (v6)
  {
    v6[16][25] = *a3;
  }

  v7 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::find<gdc::LayerDataRequestKey>(a1 + 10, a2);
  if (v7)
  {
    v7[16][25] = *a3;
  }

  result = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::find<gdc::LayerDataRequestKey>(a1 + 15, a2);
  if (result)
  {
    result[16][25] = *a3;
  }

  return result;
}

uint64_t std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,gdc::LayerDataRequestKey const&>(a1, (i + 2), (i + 2));
  }

  return a1;
}

void std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile>(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a2[24])
  {
    v4 = (a2[1] + ((*a2 - 0x61C8864680B583EBLL) << 6) + ((*a2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*a2 - 0x61C8864680B583EBLL);
    v5 = (*(a2 + 1) + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583EBLL) ^ v4;
    v6 = (*(a2 + 2) + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583EBLL) ^ v5;
    *(a2 + 2) = v6;
    a2[24] = 0;
  }

  else
  {
    v6 = *(a2 + 2);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v13 = *(v12 + 1);
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_14:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<geo::QuadTile>::operator()[abi:nn200100](v12 + 16, a2))
  {
    goto LABEL_14;
  }
}

uint64_t std::__function::__value_func<BOOL ()(std::bitset<82ul> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t *std::vector<BOOL>::vector(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:nn200100](a1, a2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataWithWorld const,std::shared_ptr<gdc::SubtileClipMask>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *gdc::SubtileClipMask::addSubTile(void *this, unint64_t a2, unint64_t a3)
{
  v3 = this[3];
  if (this[4] != v3 * v3 && v3 > a2 && v3 > a3)
  {
    v6 = a2 + v3 * a3;
    v7 = v6 >> 6;
    v8 = 1 << v6;
    v9 = *(*this + 8 * v7);
    if ((v9 & v8) == 0)
    {
      *(*this + 8 * v7) = v9 | v8;
      ++this[4];
    }
  }

  return this;
}

void md::IdentifiedGEOResourceFetcher::fetchResources(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v91 = *MEMORY[0x1E69E9840];
  v45 = a4;
  v81 = 0;
  v49 = a1;
  if ((geo::_retain_ptr<GEOActiveTileSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(a1 + 704), &v81) & 1) == 0)
  {
    v6 = *(a1 + 16);
    v7 = 7;
    if ((v6 & 1) == 0)
    {
      v7 = 3;
    }

    v8 = *(a2 + 16);
    if (v8)
    {
      v43 = (4 * v6) & 8 | (((v6 >> 2) & 1) << 12) | v7;
      do
      {
        v73 = v8[2];
        v74 = v78;
        v75 = v78;
        v76 = v78;
        v77 = 32;
        geo::small_vector_base<unsigned char>::append<unsigned char const*>(&v74, v8[3], v8[4]);
        v79 = v8[11];
        v80 = *(v8 + 6);
        v48 = v8[14];
        *(&v72 + 1) = 0;
        *&v72 = 0;
        v9 = v49[88];
        *&v72 = (*(*v49 + 18))(v49, v9, &v73);
        *(&v72 + 1) = v10;

        (*(*v49 + 19))(v70, v49, &v73);
        gdc::ResourceFetcher::willStartLoading(v49);
        switch(WORD1(v73))
        {
          case 0x2Au:
            goto LABEL_9;
          case 0x24u:
            if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
            {
              dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
            }

            v40 = GEOGetVectorKitResourceLoadingLog_log;
            v12 = v40;
            v41 = v80;
            if ((v80 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
            {
              *buf = 134218752;
              v84 = *(&v72 + 1);
              v85 = 1024;
              v86 = *(&v72 + 10);
              v87 = 1024;
              *v88 = v73;
              *&v88[4] = 2048;
              *&v88[6] = *(&v80 + 1);
              v14 = 1;
              _os_signpost_emit_with_name_impl(&dword_1B2754000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v41, "ResourceFetch", "key=%llu type=%d rt=%d parent_signpost=%llu", buf, 0x22u);
            }

            else
            {
              v14 = 1;
            }

            v15 = @"mtl";
            break;
          case 0x1Cu:
LABEL_9:
            if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
            {
              dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
            }

            v11 = GEOGetVectorKitResourceLoadingLog_log;
            v12 = v11;
            v13 = v80;
            if ((v80 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
            {
              *buf = 134218752;
              v84 = *(&v72 + 1);
              v85 = 1024;
              v86 = *(&v72 + 9);
              v87 = 1024;
              *v88 = *(&v72 + 10);
              *&v88[4] = 2048;
              *&v88[6] = *(&v80 + 1);
              v14 = 1;
              _os_signpost_emit_with_name_impl(&dword_1B2754000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v13, "ResourceFetch", "key=%llu@%d type=%d parent_signpost=%llu", buf, 0x22u);
            }

            else
            {
              v14 = 1;
            }

            v15 = @"ast";
            break;
          default:
            if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
            {
              dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
            }

            v12 = GEOGetVectorKitResourceLoadingLog_log;
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 134219010;
              v84 = *(&v72 + 1);
              v85 = 1024;
              v86 = *(&v72 + 10);
              v87 = 2080;
              *v88 = "false";
              *&v88[8] = 2080;
              *&v88[10] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/IdentifiedGEOResourceFetcher.mm";
              v89 = 1024;
              v90 = 84;
              _os_log_impl(&dword_1B2754000, v12, OS_LOG_TYPE_ERROR, "Unexpected resource type - key=%llu type=%d: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x2Cu);
            }

            v14 = 0;
            v15 = 0;
            break;
        }

        v16 = v73;
        v17 = v73 == 1;
        v18 = +[VKDebugSettings sharedSettings];
        v19 = [v18 daVinciResourceOverrideEnabled];

        if (v19)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", *(&v72 + 1)];
          v21 = [v20 stringByAppendingPathExtension:v15];

          v22 = [MEMORY[0x1E69A2478] modernManager];
          v23 = [v22 pathForResourceWithName:v21];

          v24 = [MEMORY[0x1E696AC08] defaultManager];
          LODWORD(v22) = [v24 fileExistsAtPath:v23];

          if ((v14 & v22) == 1)
          {
            v25 = GEOResourceDevResourcesPath();
            v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", *(&v72 + 1)];
            v27 = [v25 stringByAppendingPathComponent:v26];
            v28 = [v27 stringByAppendingPathExtension:v15];

            v62[0] = v49;
            v62[1] = v73;
            v63[0] = v64;
            v63[1] = v64;
            v63[2] = v64;
            v63[3] = 32;
            geo::small_vector_base<unsigned char>::append<unsigned char const*>(v63, v74, v75);
            v65 = v80;
            v64[4] = v79;
            v66 = v48;
            v67 = v72;
            v68 = v28;
            v69 = v45;
            std::function<void ()(void)>::function<md::IdentifiedGEOResourceFetcher::fetchResources(std::unordered_map<gdc::ResourceKey,unsigned long long,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,unsigned long long>>> const&,geo::TaskQueue *,NSObject  {objcproto21OS_dispatch_semaphore}*)::$_0,void>(v82, v62);
          }
        }

        v29 = v17;
        [MEMORY[0x1E69A2610] modernLoader];
        v47 = v46 = v8;
        v30 = 76;
        if (v16 == 1)
        {
          v30 = 79;
        }

        v31 = v49[v30];
        md::GEOResourceFetcher::willLoadGEOKey(v49, &v72, v31, &v73);
        if (v71)
        {
          v32 = v70;
        }

        else
        {
          v32 = 0;
        }

        v33 = HIDWORD(v73);
        if (v16 == 1)
        {
          v34 = 65;
        }

        else
        {
          v34 = v43;
        }

        v35 = qos_class_self();
        v36 = v80;
        v37 = v49[82];
        v38 = *(a3 + 16);
        md::LabelExternalPointFeature::incident(v38);
        objc_claimAutoreleasedReturnValue();
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3321888768;
        v50[2] = ___ZN2md28IdentifiedGEOResourceFetcher14fetchResourcesERKNSt3__113unordered_mapIN3gdc11ResourceKeyEyNS3_15ResourceKeyHashENS1_8equal_toIS4_EENS1_9allocatorINS1_4pairIKS4_yEEEEEEPN3geo9TaskQueueEPU32objcproto21OS_dispatch_semaphore8NSObject_block_invoke;
        v50[3] = &unk_1F2A2FAA8;
        v53 = v49;
        v54 = v73;
        v55[0] = v58;
        v55[1] = v58;
        v56 = v58;
        v57 = 32;
        geo::small_vector_base<unsigned char>::append<unsigned char const*>(v55, v74, v75);
        v58[4] = v79;
        v59 = v80;
        v39 = v31;
        v51 = v39;
        v60 = v48;
        v61 = v29;
        v52 = v45;
        LODWORD(v42) = v35;
        [v47 loadKey:&v72 additionalInfo:v32 priority:v33 forClient:v39 options:v34 reason:1 qos:v42 signpostID:v36 auditToken:v37 callbackQ:v38 beginNetwork:0 callback:v50];

        if (v55[0] != v56)
        {
          free(v55[0]);
        }

        if (v74 != v76)
        {
          free(v74);
        }

        v8 = *v8;
      }

      while (*v46);
    }
  }
}

uint64_t geo::_retain_ptr<GEOActiveTileSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(void *a1, void **a2)
{
  v3 = a1;
  v4 = *a2;
  v5 = v3;
  v6 = v4;
  if (v6 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 isEqual:v6];
  }

  return v7;
}

double gdc::LayerDataWithWorld::LayerDataWithWorld(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a4 + 8) / (1 << *(a4 + 1));
  *(a1 + 16) = vcvtmd_s64_f64(result);
  return result;
}

void *std::__tree<gdc::LayerDataWithWorld>::__find_equal<gdc::LayerDataWithWorld>(uint64_t a1, void *a2, unint64_t a3, char a4)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    do
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 48);
        v9 = *(v5 + 48);
        v10 = v8 > a4;
        v11 = v7[4];
        if (v9 == a4)
        {
          v10 = v11 > a3;
        }

        if (!v10)
        {
          break;
        }

        v5 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_14;
        }
      }

      v12 = v11 < a3;
      if (v9 == a4)
      {
        v13 = v12;
      }

      else
      {
        v13 = v9 < a4;
      }

      if (!v13)
      {
        break;
      }

      result = v7 + 1;
      v5 = v7[1];
    }

    while (v5);
  }

  else
  {
    v7 = result;
  }

LABEL_14:
  *a2 = v7;
  return result;
}

BOOL std::__map_value_compare<geo::MortonTileIndex,std::__value_type<geo::MortonTileIndex,std::bitset<82ul>>,geo::MortonTileIndexCompare,true>::operator()[abi:nn200100](unint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 - v3;
  if (v2 < v3)
  {
    v5 = *(a1 + 9);
    if (v5 == BYTE1(*(a2 + 8)))
    {
      return *a1 <= *a2 >> (2 * (v3 - v2));
    }

    return v5 < BYTE1(*(a2 + 8));
  }

  if (v2 > v3)
  {
    v7 = *(a2 + 9);
    if (v7 != BYTE1(a1[1]))
    {
      return v7 > BYTE1(a1[1]);
    }

    v8 = *a1 >> (2 * v4);
    return v8 < *a2;
  }

  v10 = *(a1 + 9);
  v11 = *(a2 + 9);
  if (v10 == v11)
  {
    v8 = *a1;
    return v8 < *a2;
  }

  return v10 < v11;
}

uint64_t std::__equal_aligned[abi:nn200100]<std::__bitset<1ul,4ul>,true,true>(void *a1, unsigned int a2, uint64_t a3, unsigned int a4, void *a5)
{
  v5 = a4 - a2 + 8 * (a3 - a1);
  if (v5 >= 1)
  {
    if (a2)
    {
      if (v5 >= (64 - a2))
      {
        v6 = 64 - a2;
      }

      else
      {
        v6 = a4 - a2 + 8 * (a3 - a1);
      }

      if (((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v6)) & (-1 << a2) & (*a1 ^ *a5)) != 0)
      {
        return 0;
      }

      v5 -= v6;
      ++a5;
      ++a1;
    }

    if (v5 >= 64)
    {
      while (*a5 == *a1)
      {
        v7 = v5 - 64;
        ++a1;
        ++a5;
        v8 = v5 <= 127;
        v5 -= 64;
        if (v8)
        {
          goto LABEL_14;
        }
      }

      return 0;
    }

    v7 = v5;
LABEL_14:
    if (v7 >= 1 && (*a1 ^ *a5) << -v7)
    {
      return 0;
    }
  }

  return 1;
}

unsigned __int16 *geo::linear_map<unsigned short,std::set<gdc::LayerDataWithWorld>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::set<gdc::LayerDataWithWorld>>>,std::vector<std::pair<unsigned short,std::set<gdc::LayerDataWithWorld>>>>::operator[](void *a1, unsigned __int16 a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    goto LABEL_7;
  }

  v5 = *a1;
  while (*v5 != a2)
  {
    v5 += 16;
    if (v5 == v4)
    {
      goto LABEL_7;
    }
  }

  if (v5 == v4)
  {
LABEL_7:
    v28[0] = 0;
    v28[1] = 0;
    v27 = v28;
    if (v3 == v4)
    {
      goto LABEL_14;
    }

    v5 = v3;
    while (*v5 != a2)
    {
      v5 += 16;
      if (v5 == v4)
      {
        goto LABEL_14;
      }
    }

    if (v5 == v4)
    {
LABEL_14:
      v7 = a1[2];
      if (v4 >= v7)
      {
        v9 = (v4 - v3) >> 5;
        if ((v9 + 1) >> 59)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v10 = v7 - v3;
        v11 = v10 >> 4;
        if (v10 >> 4 <= (v9 + 1))
        {
          v11 = v9 + 1;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFE0)
        {
          v12 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        v32 = a1;
        if (v12)
        {
          if (!(v12 >> 59))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v29 = 0;
        v30 = (32 * v9);
        v31 = (32 * v9);
        *v30 = a2;
        std::set<gdc::LayerDataWithWorld>::set[abi:nn200100]((32 * v9 + 8), &v27);
        *&v31 = v31 + 32;
        v14 = *a1;
        v13 = a1[1];
        v15 = v30 + *a1 - v13;
        if (*a1 != v13)
        {
          v16 = 0;
          do
          {
            v17 = &v15[v16 * 2];
            v18 = v14[v16];
            *(v17 + 1) = *&v14[v16 + 4];
            v19 = &v14[v16 + 8];
            v20 = *v19;
            *v17 = v18;
            *&v15[v16 * 2 + 16] = v20;
            v21 = &v15[v16 * 2 + 16];
            v22 = *&v14[v16 + 12];
            *(v17 + 3) = v22;
            if (v22)
            {
              *(v20 + 16) = v21;
              *&v14[v16 + 4] = v19;
              *v19 = 0;
              *&v14[v16 + 12] = 0;
            }

            else
            {
              *(v17 + 1) = v21;
            }

            v16 += 16;
          }

          while (&v14[v16] != v13);
          do
          {
            std::__tree<gdc::LayerDataWithWorld>::destroy(*(v14 + 2));
            v14 += 16;
          }

          while (v14 != v13);
        }

        v23 = *a1;
        *a1 = v15;
        v24 = a1[2];
        v26 = v31;
        *(a1 + 1) = v31;
        *&v31 = v23;
        *(&v31 + 1) = v24;
        v29 = v23;
        v30 = v23;
        std::__split_buffer<std::pair<unsigned short,std::set<gdc::LayerDataWithWorld>>>::~__split_buffer(&v29);
        v8 = v26;
      }

      else
      {
        *v4 = a2;
        std::set<gdc::LayerDataWithWorld>::set[abi:nn200100]((v4 + 8), &v27);
        v8 = v4 + 32;
        a1[1] = v4 + 32;
      }

      a1[1] = v8;
      v5 = (v8 - 32);
      v6 = v28[0];
    }

    else
    {
      v6 = 0;
    }

    std::__tree<gdc::LayerDataWithWorld>::destroy(v6);
    std::__tree<gdc::LayerDataWithWorld>::destroy(0);
  }

  return v5 + 4;
}

void sub_1B2AF9AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  std::__tree<gdc::LayerDataWithWorld>::destroy(a16);
  std::__tree<gdc::LayerDataWithWorld>::destroy(a12);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<md::LayerDataIdentWithWorld>::__find_equal<md::LayerDataIdentWithWorld>(uint64_t a1, uint64_t **a2, unsigned int a3, char a4)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    do
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 32);
        v9 = *(v5 + 32);
        v10 = v8 > a4;
        v11 = *(v7 + 7);
        if (v9 == a4)
        {
          v10 = v11 > a3;
        }

        if (!v10)
        {
          break;
        }

        v5 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_14;
        }
      }

      v12 = v11 < a3;
      if (v9 == a4)
      {
        v13 = v12;
      }

      else
      {
        v13 = v9 < a4;
      }

      if (!v13)
      {
        break;
      }

      result = v7 + 1;
      v5 = v7[1];
    }

    while (v5);
  }

  else
  {
    v7 = result;
  }

LABEL_14:
  *a2 = v7;
  return result;
}

uint64_t md::SceneQueryLogic::updateNavigationFlexBucketsForZoom(uint64_t a1, unsigned int a2, uint64_t a3, std::__shared_weak_count *a4, int a5)
{
  v5 = *(a1 + 368) == a2 && a5 == 0;
  if (!v5)
  {
    *(a1 + 368) = a2;
    v102 = 0;
    v103 = 0;
    v101 = &v102;
    if (a4)
    {
      atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v105, a3, a4);
    if (a4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a4);
    }

    if ((v108 & 1) == 0)
    {
LABEL_100:
      if (v107)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v107);
      }

      if (v106)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v106);
      }

      if (v103 == *(a1 + 288))
      {
        v73 = v101;
        if (v101 == &v102)
        {
LABEL_121:
          v23 = 0;
LABEL_146:
          std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v102);
          return v23;
        }

        v74 = *(a1 + 272);
        while (*(v73 + 28) == *(v74 + 28) && *(v73 + 8) == *(v74 + 8) && *(v73 + 9) == *(v74 + 9))
        {
          v75 = v73[1];
          v76 = v73;
          if (v75)
          {
            do
            {
              v73 = v75;
              v75 = *v75;
            }

            while (v75);
          }

          else
          {
            do
            {
              v73 = v76[2];
              v5 = *v73 == v76;
              v76 = v73;
            }

            while (!v5);
          }

          v77 = v74[1];
          if (v77)
          {
            do
            {
              v78 = v77;
              v77 = *v77;
            }

            while (v77);
          }

          else
          {
            do
            {
              v78 = v74[2];
              v5 = *v78 == v74;
              v74 = v78;
            }

            while (!v5);
          }

          v74 = v78;
          if (v73 == &v102)
          {
            goto LABEL_121;
          }
        }
      }

      v79 = (a1 + 280);
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 280));
      v80 = v102;
      *(a1 + 272) = v101;
      *(a1 + 280) = v80;
      v81 = v103;
      *(a1 + 288) = v103;
      if (v81)
      {
        v80[2] = v79;
        v101 = &v102;
        v102 = 0;
        v103 = 0;
        v82 = *(a1 + 272);
        v83 = *(a1 + 248);
        *(a1 + 256) = v83;
        if (v82 != v79)
        {
          do
          {
            v84 = *(a1 + 264);
            if (v83 >= v84)
            {
              v85 = *(a1 + 248);
              v86 = v83 - v85;
              v87 = 0xAAAAAAAAAAAAAAABLL * ((v83 - v85) >> 2);
              v88 = v87 + 1;
              if (v87 + 1 > 0x1555555555555555)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v89 = 0xAAAAAAAAAAAAAAABLL * ((v84 - v85) >> 2);
              if (2 * v89 > v88)
              {
                v88 = 2 * v89;
              }

              if (v89 >= 0xAAAAAAAAAAAAAAALL)
              {
                v90 = 0x1555555555555555;
              }

              else
              {
                v90 = v88;
              }

              if (v90)
              {
                if (v90 <= 0x1555555555555555)
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v91 = 12 * v87;
              *v91 = *(v82 + 28);
              *(v91 + 4) = v82[4];
              v83 = 12 * v87 + 12;
              v92 = v91 - v86;
              memcpy((v91 - v86), v85, v86);
              *(a1 + 248) = v92;
              *(a1 + 256) = v83;
              *(a1 + 264) = 0;
              if (v85)
              {
                operator delete(v85);
              }
            }

            else
            {
              *v83 = *(v82 + 28);
              *(v83 + 4) = v82[4];
              v83 += 12;
            }

            *(a1 + 256) = v83;
            v93 = v82[1];
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
                v94 = v82[2];
                v5 = *v94 == v82;
                v82 = v94;
              }

              while (!v5);
            }

            v82 = v94;
          }

          while (v94 != v79);
        }
      }

      else
      {
        *(a1 + 272) = v79;
        *(a1 + 256) = *(a1 + 248);
      }

      v23 = 1;
      goto LABEL_146;
    }

    v9 = v105[3];
    if (a2 >= 0x17)
    {
      v10 = 23;
    }

    else
    {
      v10 = a2;
    }

    v11 = *v9;
    if (*v9)
    {
      v12 = *v11;
      v13 = *v11 == 1.0;
      if (*(v9 + 10) == 1 && v12 != 0.0 && v12 != 1.0)
      {
LABEL_21:
        v16 = *(v9 + 16);
        if (v16)
        {
          v17 = *(v16 + 72);
          if (v17)
          {
            v18 = *v17 + 120 * *(v17 + v10 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v18, 0x18Au) != *(v18 + 12))
            {
              goto LABEL_35;
            }
          }

          if (*(v9 + 56))
          {
            v19 = *(v9 + 48);
            v20 = 8 * *(v9 + 56);
            while (1)
            {
              v21 = *(*v19 + 72);
              if (v21)
              {
                v22 = *v21 + 120 * *(v21 + v10 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v22, 0x18Au) != *(v22 + 12))
                {
                  goto LABEL_35;
                }
              }

              v19 += 8;
              v15 = 1;
              v20 -= 8;
              if (!v20)
              {
                goto LABEL_32;
              }
            }
          }
        }

        v15 = 1;
LABEL_32:
        v24 = *(v9 + 16 * v15 + 16);
        if (!v24)
        {
          goto LABEL_57;
        }

        v25 = *(v24 + 72);
        if (v25)
        {
          v26 = *v25 + 120 * *(v25 + v10 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v26, 0x18Au) != *(v26 + 12))
          {
            goto LABEL_35;
          }
        }

        v40 = v9 + 16 * v15;
        if (!*(v40 + 56))
        {
LABEL_57:
          LODWORD(v28) = 0;
          if (v11)
          {
            goto LABEL_36;
          }

          goto LABEL_58;
        }

        v41 = *(v40 + 48);
        v42 = 8 * *(v40 + 56);
        while (1)
        {
          v43 = *(*v41 + 72);
          if (v43)
          {
            v44 = *v43 + 120 * *(v43 + v10 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v44, 0x18Au) != *(v44 + 12))
            {
              break;
            }
          }

          v41 += 8;
          v42 -= 8;
          if (!v42)
          {
            goto LABEL_57;
          }
        }

LABEL_35:
        v27 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v9, 394, v10, 2, 0);
        v104 = 1;
        v109 = &v104;
        v28 = (v27 * v27);
        std::__tree<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,std::__map_value_compare<gss::FlexSelectionZone,std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,md::FlexSelectionZoneLessThan,true>,std::allocator<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>>>::__emplace_unique_key_args<gss::FlexSelectionZone,std::piecewise_construct_t const&,std::tuple<gss::FlexSelectionZone&&>,std::tuple<>>(&v101, 1, &v109)[4] = v28 << 32;
        v9 = v105[3];
        v11 = *v9;
        if (*v9)
        {
LABEL_36:
          v29 = *v11;
          v30 = *v11 == 1.0;
          if (*(v9 + 10) == 1 && v29 != 0.0 && v29 != 1.0)
          {
LABEL_43:
            v33 = *(v9 + 16);
            if (v33)
            {
              v34 = *(v33 + 72);
              if (v34)
              {
                v35 = *v34 + 120 * *(v34 + v10 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v35, 0x18Bu) != *(v35 + 12))
                {
                  goto LABEL_63;
                }
              }

              if (*(v9 + 56))
              {
                v36 = *(v9 + 48);
                v37 = 8 * *(v9 + 56);
                v32 = 1;
                while (1)
                {
                  v38 = *(*v36 + 72);
                  if (v38)
                  {
                    v39 = *v38 + 120 * *(v38 + v10 + 16);
                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v39, 0x18Bu) != *(v39 + 12))
                    {
                      goto LABEL_63;
                    }
                  }

                  v36 += 8;
                  v37 -= 8;
                  if (!v37)
                  {
                    goto LABEL_60;
                  }
                }
              }
            }

            v32 = 1;
LABEL_60:
            v45 = *(v9 + 16 * v32 + 16);
            if (!v45)
            {
              goto LABEL_67;
            }

            v46 = *(v45 + 72);
            if (!v46 || (v47 = *v46 + 120 * *(v46 + v10 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v47, 0x18Bu) == *(v47 + 12)))
            {
              v62 = v9 + 16 * v32;
              if (!*(v62 + 56))
              {
                goto LABEL_67;
              }

              v63 = *(v62 + 48);
              v64 = 8 * *(v62 + 56);
              while (1)
              {
                v65 = *(*v63 + 72);
                if (v65)
                {
                  v66 = *v65 + 120 * *(v65 + v10 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v66, 0x18Bu) != *(v66 + 12))
                  {
                    break;
                  }
                }

                v63 += 8;
                v64 -= 8;
                if (!v64)
                {
                  goto LABEL_67;
                }
              }
            }

LABEL_63:
            v48 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v9, 395, v10, 2, 0);
            v104 = 2;
            v109 = &v104;
            v49 = std::__tree<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,std::__map_value_compare<gss::FlexSelectionZone,std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,md::FlexSelectionZoneLessThan,true>,std::allocator<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>>>::__emplace_unique_key_args<gss::FlexSelectionZone,std::piecewise_construct_t const&,std::tuple<gss::FlexSelectionZone&&>,std::tuple<>>(&v101, 2, &v109);
            v50 = v28;
            if (v28 <= v48 * v48)
            {
              v28 = (v48 * v48);
            }

            else
            {
              v28 = v28;
            }

            v49[4] = v50 | (v28 << 32);
            v9 = v105[3];
            v11 = *v9;
LABEL_67:
            if (v11)
            {
              v51 = *v11;
              v52 = *v11 == 1.0;
              if (*(v9 + 10) == 1 && v51 != 0.0 && v51 != 1.0)
              {
LABEL_75:
                v55 = *(v9 + 16);
                if (v55)
                {
                  v56 = *(v55 + 72);
                  if (v56)
                  {
                    v57 = *v56 + 120 * *(v56 + v10 + 16);
                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v57, 0x18Cu) != *(v57 + 12))
                    {
                      goto LABEL_94;
                    }
                  }

                  if (*(v9 + 56))
                  {
                    v58 = *(v9 + 48);
                    v59 = 8 * *(v9 + 56);
                    while (1)
                    {
                      v60 = *(*v58 + 72);
                      if (v60)
                      {
                        v61 = *v60 + 120 * *(v60 + v10 + 16);
                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v61, 0x18Cu) != *(v61 + 12))
                        {
                          goto LABEL_94;
                        }
                      }

                      v58 += 8;
                      v54 = 1;
                      v59 -= 8;
                      if (!v59)
                      {
                        goto LABEL_91;
                      }
                    }
                  }
                }

                v54 = 1;
LABEL_91:
                v67 = *(v9 + 16 * v54 + 16);
                if (!v67)
                {
                  goto LABEL_98;
                }

                v68 = *(v67 + 72);
                if (!v68 || (v69 = *v68 + 120 * *(v68 + v10 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v69, 0x18Cu) == *(v69 + 12)))
                {
                  v96 = v9 + 16 * v54;
                  if (!*(v96 + 56))
                  {
                    goto LABEL_98;
                  }

                  v97 = *(v96 + 48);
                  v98 = 8 * *(v96 + 56);
                  while (1)
                  {
                    v99 = *(*v97 + 72);
                    if (v99)
                    {
                      v100 = *v99 + 120 * *(v99 + v10 + 16);
                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v100, 0x18Cu) != *(v100 + 12))
                      {
                        break;
                      }
                    }

                    v97 += 8;
                    v98 -= 8;
                    if (!v98)
                    {
                      goto LABEL_98;
                    }
                  }
                }

LABEL_94:
                v70 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v9, 396, v10, 2, 0);
                v104 = 3;
                v109 = &v104;
                v71 = std::__tree<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,std::__map_value_compare<gss::FlexSelectionZone,std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,md::FlexSelectionZoneLessThan,true>,std::allocator<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>>>::__emplace_unique_key_args<gss::FlexSelectionZone,std::piecewise_construct_t const&,std::tuple<gss::FlexSelectionZone&&>,std::tuple<>>(&v101, 3, &v109);
                v72 = v28;
                if (v28 <= v70 * v70)
                {
                  v28 = (v70 * v70);
                }

                else
                {
                  v28 = v28;
                }

                v71[4] = v72 | (v28 << 32);
LABEL_98:
                v104 = 0;
                v109 = &v104;
                std::__tree<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,std::__map_value_compare<gss::FlexSelectionZone,std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,md::FlexSelectionZoneLessThan,true>,std::allocator<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>>>::__emplace_unique_key_args<gss::FlexSelectionZone,std::piecewise_construct_t const&,std::tuple<gss::FlexSelectionZone&&>,std::tuple<>>(&v101, 0, &v109)[4] = v28 | 0xFFFFFFFF00000000;
                if (v108)
                {
                  (*(*v105 + 56))(v105);
                }

                goto LABEL_100;
              }
            }

            else
            {
              v52 = 0;
            }

            v54 = *(v9 + v52 + 11);
            if (v54 != 2)
            {
              goto LABEL_91;
            }

            goto LABEL_75;
          }

LABEL_42:
          v32 = *(v9 + v30 + 11);
          if (v32 != 2)
          {
            goto LABEL_60;
          }

          goto LABEL_43;
        }

LABEL_58:
        v30 = 0;
        goto LABEL_42;
      }
    }

    else
    {
      v13 = 0;
    }

    v15 = *(v9 + v13 + 11);
    if (v15 != 2)
    {
      goto LABEL_32;
    }

    goto LABEL_21;
  }

  return 0;
}

void sub_1B2AFA490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, char a17)
{
  if (a17 == 1)
  {
    (*(*a13 + 56))(a13, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a10);
  _Unwind_Resume(a1);
}

void md::SceneQueryLogic::processPendingRegistries(md::SceneQueryLogic *this)
{
  v231 = *MEMORY[0x1E69E9840];
  if (*(this + 38))
  {
    v1 = this;
    v204 = 0;
    v205 = 0;
    v206 = 0;
    v2 = *(this + 19);
    v3 = *(v2 + 384);
    v4 = *(v2 + 392);
    if (v3 == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      do
      {
        v228.i64[0] = *v3;
        v6 = v228.i64[0];
        v7 = gdc::Registry::storage<md::components::DidResolvePendingMaterial>(v228.i64[0]);
        if (*(v7 + 88) != *(v7 + 80))
        {
          if (v5 >= v206)
          {
            v5 = std::vector<gdc::Registry *>::__emplace_back_slow_path<gdc::Registry *&>(&v204, v228.i64);
          }

          else
          {
            *v5++ = v6;
          }

          v205 = v5;
        }

        ++v3;
      }

      while (v3 != v4);
    }

    v188 = v1;
    if (*(v1 + 31) != *(v1 + 32))
    {
      LOBYTE(v207) = 0;
      v228.i64[0] = &v207;
      v8 = std::__tree<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,std::__map_value_compare<gss::FlexSelectionZone,std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,md::FlexSelectionZoneLessThan,true>,std::allocator<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>>>::__emplace_unique_key_args<gss::FlexSelectionZone,std::piecewise_construct_t const&,std::tuple<gss::FlexSelectionZone&&>,std::tuple<>>(v1 + 272, 0, &v228);
      v220 = 0;
      v221 = 0;
      v222 = 0;
      v217 = 0;
      v218 = 0;
      v219 = 0;
      __p = 0;
      v215 = 0;
      v216 = 0;
      v9 = v204;
      if (v204 != v5)
      {
        v10 = v8;
        v11 = 0;
        v185 = vdupq_n_s64(0x20uLL);
        v184 = v8;
        do
        {
          v12 = *v9;
          ++*(v1 + 136);
          v13 = v220;
          v14 = v221;
          if (v221 != v220)
          {
            do
            {
              v15 = *--v14;
            }

            while (v14 != v13);
            v11 = v217;
          }

          v221 = v13;
          v215 = __p;
          v218 = v11;
          v213 = gdc::Context::context<md::components::SharedTransformData>(v12);
          v16 = MEMORY[0x1E69A1688];
          if (v213)
          {
            for (i = *(v1 + 23); i; i = *i)
            {
              v229 = 0u;
              v230 = 0u;
              v228 = 0u;
              v18 = 0.0;
              v19 = i[2];
              v20 = 0.0;
              v21 = 0.0;
              v22 = 0.0;
              v23 = 0.0;
              v24 = 0.0;
              v25 = 0.0;
              if (v19)
              {
                objc_msgSend_bounds(v19, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
                v24 = *&v228.i64[1];
                v25 = *v228.i64;
                v22 = *&v229.i64[1];
                v21 = *v229.i64;
                v20 = *(&v230 + 1);
                v23 = *&v230;
              }

              v26 = *(v16 + 16);
              v27 = *(v16 + 24);
              v207 = v25 / v26;
              v208 = 1.0 - (v23 + v24) / v27;
              v209 = v21 * 0.0000000249532021;
              v210 = (v22 + v25) / v26;
              v211 = 1.0 - v24 / v27;
              v212 = (v20 + v21) * 0.0000000249532021;
              v28 = (v213 + 20);
              for (j = 136; j != 160; j += 8)
              {
                v30 = *v28 - *(&v207 + j - 136);
                if (v30 < 0.0 || (v30 = *(v28 - 3) - *(&v207 + j - 112), v30 > 0.0))
                {
                  v18 = v18 + v30 * v30;
                }

                ++v28;
              }

              v31 = (v18 * 1.60600699e15);
              if (*(v10 + 8) > v31 || *(v10 + 9) < v31)
              {
                v32 = v221;
                if (v221 >= v222)
                {
                  v34 = v221 - v220;
                  if ((v34 + 1) >> 61)
                  {
LABEL_216:
                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  v35 = (v222 - v220) >> 2;
                  if (v35 <= v34 + 1)
                  {
                    v35 = v34 + 1;
                  }

                  if (v222 - v220 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v36 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v36 = v35;
                  }

                  v227 = &v220;
                  if (v36)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<VKARWalkingFeature * {__strong}>>(v36);
                  }

                  v37 = (8 * v34);
                  v223 = 0;
                  v224 = v37;
                  v226 = 0;
                  *v37 = i[2];
                  v225 = v37 + 1;
                  std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__swap_out_circular_buffer(&v220, &v223);
                  v33 = v221;
                  std::__split_buffer<GEOComposedRouteSection * {__strong}>::~__split_buffer(&v223);
                }

                else
                {
                  *v32 = i[2];
                  v33 = v32 + 1;
                }

                v221 = v33;
              }
            }

            v38 = v12;
            v39 = gdc::Registry::storage<md::components::MeshInstance>(v12);
            v40 = gdc::Registry::storage<md::components::ClientState>(v38);
            v202 = gdc::Registry::storage<md::components::SupportsFlexing>(v38);
            v41 = gdc::Registry::storage<md::components::DidResolvePendingMaterial>(v38);
            v42 = v41;
            v191 = v38;
            v43.i64[0] = v39;
            v43.i64[1] = v40;
            v44.i64[0] = v202;
            v44.i64[1] = v41;
            v228 = vaddq_s64(v43, v185);
            v229 = vaddq_s64(v44, v185);
            v45 = v228.i64[0];
            v46 = &v228;
            for (k = 1; k != 4; ++k)
            {
              if (*(v228.i64[k] + 32) - *(v228.i64[k] + 24) < *(v45 + 32) - *(v45 + 24))
              {
                v45 = v228.i64[k];
                v46 = (&v228 + k * 8);
              }
            }

            v48 = v46->i64[0];
            v197 = v41;
            v189 = v46->i64[0];
            if (v39 + 4 == v46->i64[0])
            {
              v228.i64[0] = v1;
              v228.i64[1] = &v213;
              v229.i64[0] = &v220;
              v229.i64[1] = &v217;
              *&v230 = &__p;
              v49 = v39[7];
              v50 = v39[8];
              if (v49 != v50)
              {
                v51 = v39[10];
                do
                {
                  v52 = *(v49 + 4);
                  Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v40 + 4, v52);
                  v54 = v40[8];
                  if (v54 != Index && v202[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v202 + 4, v52) && v197[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v197 + 4, v52))
                  {
                    v55 = *v49;
                    v56 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v40 + 4, HIDWORD(*v49));
                    if (v54 == v56)
                    {
                      v57 = v40[11];
                    }

                    else
                    {
                      v57 = v40[10] + 24 * ((v56 - v40[7]) >> 3);
                    }

                    md::SceneQueryLogic::categorizeEntitiesByFlexZone<md::components::DidResolvePendingMaterial>(std::vector<gdc::Registry *> const&)::{lambda(gdc::Entity,md::components::MeshInstance &,md::components::ClientState &)#1}::operator()(v228.i64, v55, v51, v57);
                  }

                  v51 += 112;
                  v49 += 8;
                }

                while (v49 != v50);
              }

              v1 = v188;
              v48 = v189;
              v42 = v197;
            }

            v200 = v40 + 4;
            if (v40 + 4 == v48)
            {
              v228.i64[0] = v1;
              v228.i64[1] = &v213;
              v229.i64[0] = &v220;
              v229.i64[1] = &v217;
              *&v230 = &__p;
              v58 = v40[7];
              v59 = v40[8];
              if (v58 != v59)
              {
                v60 = v40[10];
                do
                {
                  v61 = *(v58 + 4);
                  v62 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v39 + 4, v61);
                  v63 = v39[8];
                  if (v63 != v62 && v202[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v202 + 4, v61) && v197[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v197 + 4, v61))
                  {
                    v64 = *v58;
                    v65 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v39 + 4, HIDWORD(*v58));
                    if (v63 == v65)
                    {
                      v66 = v39[11];
                    }

                    else
                    {
                      v66 = v39[10] + 112 * ((v65 - v39[7]) >> 3);
                    }

                    md::SceneQueryLogic::categorizeEntitiesByFlexZone<md::components::DidResolvePendingMaterial>(std::vector<gdc::Registry *> const&)::{lambda(gdc::Entity,md::components::MeshInstance &,md::components::ClientState &)#1}::operator()(v228.i64, v64, v66, v60);
                  }

                  v60 += 24;
                  v58 += 8;
                }

                while (v58 != v59);
              }

              v1 = v188;
              v48 = v189;
              v42 = v197;
            }

            if (v202 + 4 == v48)
            {
              v228.i64[0] = v1;
              v228.i64[1] = &v213;
              v229.i64[0] = &v220;
              v229.i64[1] = &v217;
              *&v230 = &__p;
              v68 = v202[7];
              v67 = v202[8];
              v195 = v67;
              while (v68 != v67)
              {
                v69 = *(v68 + 4);
                v70 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v39 + 4, v69);
                v71 = v39[8];
                if (v71 != v70)
                {
                  v72 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v200, v69);
                  v73 = v40[8];
                  if (v73 != v72 && v42[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v42 + 4, v69))
                  {
                    v74 = *v68;
                    v75 = HIDWORD(*v68);
                    v76 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v39 + 4, HIDWORD(*v68));
                    if (v71 == v76)
                    {
                      v77 = v39[11];
                    }

                    else
                    {
                      v77 = v39[10] + 112 * ((v76 - v39[7]) >> 3);
                    }

                    v78 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v200, v75);
                    if (v73 == v78)
                    {
                      v79 = v40[11];
                    }

                    else
                    {
                      v79 = v40[10] + 24 * ((v78 - v40[7]) >> 3);
                    }

                    v42 = v197;
                    md::SceneQueryLogic::categorizeEntitiesByFlexZone<md::components::DidResolvePendingMaterial>(std::vector<gdc::Registry *> const&)::{lambda(gdc::Entity,md::components::MeshInstance &,md::components::ClientState &)#1}::operator()(v228.i64, v74, v77, v79);
                  }
                }

                v68 += 8;
                v67 = v195;
              }

              v1 = v188;
              v48 = v189;
            }

            if (v42 + 4 == v48)
            {
              v228.i64[0] = v1;
              v228.i64[1] = &v213;
              v229.i64[0] = &v220;
              v229.i64[1] = &v217;
              *&v230 = &__p;
              v81 = v42[7];
              v80 = v42[8];
              if (v81 != v80)
              {
                v198 = v80;
                do
                {
                  v82 = *(v81 + 4);
                  v83 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v39 + 4, v82);
                  v84 = v39[8];
                  if (v84 != v83)
                  {
                    v85 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v200, v82);
                    v86 = v40[8];
                    if (v86 != v85 && v202[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v202 + 4, v82))
                    {
                      v87 = *v81;
                      v88 = HIDWORD(*v81);
                      v89 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v39 + 4, HIDWORD(*v81));
                      if (v84 == v89)
                      {
                        v90 = v39[11];
                      }

                      else
                      {
                        v90 = v39[10] + 112 * ((v89 - v39[7]) >> 3);
                      }

                      v91 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v200, v88);
                      if (v86 == v91)
                      {
                        v92 = v40[11];
                      }

                      else
                      {
                        v92 = v40[10] + 24 * ((v91 - v40[7]) >> 3);
                      }

                      v80 = v198;
                      md::SceneQueryLogic::categorizeEntitiesByFlexZone<md::components::DidResolvePendingMaterial>(std::vector<gdc::Registry *> const&)::{lambda(gdc::Entity,md::components::MeshInstance &,md::components::ClientState &)#1}::operator()(v228.i64, v87, v90, v92);
                    }
                  }

                  v81 += 8;
                }

                while (v81 != v80);
              }

              v1 = v188;
            }

            gdc::Registry::add<md::components::FlexClientStateChanged,std::__wrap_iter<gdc::Entity *>>(v191, v217, v218);
            v10 = v184;
            v11 = v217;
            if (v218 != v217)
            {
              v93 = 0;
              do
              {
                v94 = -1.0;
                if (v93 < (v215 - __p) >> 2)
                {
                  v94 = *(__p + v93);
                }

                v95 = v11[v93];
                *v228.i32 = v94;
                v96 = gdc::Registry::storage<md::components::FlexSelectionInfo>(v191);
                gdc::ComponentStorageWrapper<md::components::PositionScaleFactor>::emplace(v96, v95, v228.i32);
                ++v93;
                v11 = v217;
              }

              while (v93 < v218 - v217);
            }
          }

          ++v9;
        }

        while (v9 != v5);
        if (__p)
        {
          v215 = __p;
          operator delete(__p);
          v11 = v217;
        }

        if (v11)
        {
          v218 = v11;
          operator delete(v11);
        }
      }

      v228.i64[0] = &v220;
      std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v228);
    }

    if (*(v1 + 59))
    {
      v97 = v204;
      v205 = v204;
      if (*(v1 + 31))
      {
        v98 = 0;
        do
        {
          if (!*(v1 + 59))
          {
            break;
          }

          v99 = *(v1 + 57);
          v207 = *(v99 + 4);
          v100 = *&v207;
          std::__tree<gdc::Registry *,md::RegistryIdentifierLessThan,std::allocator<gdc::Registry *>>::__remove_node_pointer(v1 + 57, v99);
          operator delete(v99);
          v101 = *(v100 + 40);
          for (m = *(v1 + 61); m; m = *m)
          {
            v103 = *(m + 16);
            if (v101 >= v103)
            {
              if (v103 >= v101)
              {
                LOWORD(v223) = *(v100 + 40);
                v228.i64[0] = &v223;
                v110 = std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>(v1 + 126, v101, &v228);
                ++*(v110 + 5);
                goto LABEL_131;
              }

              ++m;
            }
          }

          LOWORD(v223) = *(v100 + 40);
          v228.i64[0] = &v223;
          std::__tree<std::__value_type<unsigned short,gdc::Registry *>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,gdc::Registry *>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,gdc::Registry *>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>(v1 + 60, v101, &v228)[5] = v100;
          LOWORD(v223) = *(v100 + 40);
          v228.i64[0] = &v223;
          *(std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>(v1 + 126, v223, &v228) + 5) = 0;
          v104 = gdc::Registry::storage<md::components::MeshInstance>(v100);
          v105 = gdc::Registry::storage<md::components::ClientState>(v100);
          v106 = gdc::Registry::storage<md::components::SupportsFlexing>(v100);
          v107 = 0x6DB6DB6DB6DB6DB7 * ((*(v104 + 88) - *(v104 + 80)) >> 4);
          v108 = *(v106 + 80);
          if (0xAAAAAAAAAAAAAAABLL * ((*(v105 + 88) - *(v105 + 80)) >> 3) < v107)
          {
            v107 = 0xAAAAAAAAAAAAAAABLL * ((*(v105 + 88) - *(v105 + 80)) >> 3);
          }

          if (*(v106 + 88) - v108 >= v107)
          {
            LODWORD(v109) = v107;
          }

          else
          {
            v109 = *(v106 + 88) - v108;
          }

          if (v109)
          {
            if (v97 >= v206)
            {
              v97 = std::vector<gdc::Registry *>::__emplace_back_slow_path<gdc::Registry *&>(&v204, &v207);
            }

            else
            {
              *v97++ = v100;
            }

            v98 += v109;
            v205 = v97;
          }

LABEL_131:
          ;
        }

        while (v98 < *(v1 + 31));
      }

      if (*(v1 + 31) != *(v1 + 32))
      {
        LOBYTE(v207) = 0;
        v228.i64[0] = &v207;
        v111 = std::__tree<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,std::__map_value_compare<gss::FlexSelectionZone,std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,md::FlexSelectionZoneLessThan,true>,std::allocator<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>>>::__emplace_unique_key_args<gss::FlexSelectionZone,std::piecewise_construct_t const&,std::tuple<gss::FlexSelectionZone&&>,std::tuple<>>(v1 + 272, 0, &v228);
        v220 = 0;
        v221 = 0;
        v222 = 0;
        v217 = 0;
        v218 = 0;
        v219 = 0;
        __p = 0;
        v215 = 0;
        v216 = 0;
        v112 = v204;
        if (v204 != v97)
        {
          v113 = v111;
          v114 = 0;
          v187 = vdupq_n_s64(0x20uLL);
          v190 = v97;
          v186 = v111;
          do
          {
            v196 = v112;
            v115 = *v112;
            ++*(v1 + 136);
            v116 = v220;
            v117 = v221;
            if (v221 != v220)
            {
              do
              {
                v118 = *--v117;
              }

              while (v117 != v116);
              v114 = v217;
            }

            v221 = v116;
            v215 = __p;
            v218 = v114;
            v213 = gdc::Context::context<md::components::SharedTransformData>(v115);
            if (v213)
            {
              for (n = *(v1 + 23); n; n = *n)
              {
                v229 = 0u;
                v230 = 0u;
                v228 = 0u;
                v120 = 0.0;
                v121 = n[2];
                v122 = 0.0;
                v123 = 0.0;
                v124 = 0.0;
                v125 = 0.0;
                v126 = 0.0;
                v127 = 0.0;
                if (v121)
                {
                  objc_msgSend_bounds(v121, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
                  v126 = *&v228.i64[1];
                  v127 = *v228.i64;
                  v124 = *&v229.i64[1];
                  v123 = *v229.i64;
                  v122 = *(&v230 + 1);
                  v125 = *&v230;
                }

                v128 = *(MEMORY[0x1E69A1688] + 16);
                v129 = *(MEMORY[0x1E69A1688] + 24);
                v207 = v127 / v128;
                v208 = 1.0 - (v125 + v126) / v129;
                v209 = v123 * 0.0000000249532021;
                v210 = (v124 + v127) / v128;
                v211 = 1.0 - v126 / v129;
                v212 = (v122 + v123) * 0.0000000249532021;
                v130 = (v213 + 20);
                for (ii = 136; ii != 160; ii += 8)
                {
                  v132 = *v130 - *(&v207 + ii - 136);
                  if (v132 < 0.0 || (v132 = *(v130 - 3) - *(&v207 + ii - 112), v132 > 0.0))
                  {
                    v120 = v120 + v132 * v132;
                  }

                  ++v130;
                }

                v133 = (v120 * 1.60600699e15);
                if (*(v113 + 8) > v133 || *(v113 + 9) < v133)
                {
                  v134 = v221;
                  if (v221 >= v222)
                  {
                    v136 = v221 - v220;
                    if ((v136 + 1) >> 61)
                    {
                      goto LABEL_216;
                    }

                    v137 = (v222 - v220) >> 2;
                    if (v137 <= v136 + 1)
                    {
                      v137 = v136 + 1;
                    }

                    if (v222 - v220 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v138 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v138 = v137;
                    }

                    v227 = &v220;
                    if (v138)
                    {
                      std::__allocate_at_least[abi:nn200100]<std::allocator<VKARWalkingFeature * {__strong}>>(v138);
                    }

                    v139 = (8 * v136);
                    v223 = 0;
                    v224 = v139;
                    v226 = 0;
                    *v139 = n[2];
                    v225 = v139 + 1;
                    std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__swap_out_circular_buffer(&v220, &v223);
                    v135 = v221;
                    std::__split_buffer<GEOComposedRouteSection * {__strong}>::~__split_buffer(&v223);
                  }

                  else
                  {
                    *v134 = n[2];
                    v135 = v134 + 1;
                  }

                  v221 = v135;
                }
              }

              v140 = v115;
              v141 = gdc::Registry::storage<md::components::MeshInstance>(v115);
              v142 = gdc::Registry::storage<md::components::ClientState>(v140);
              v143 = gdc::Registry::storage<md::components::SupportsFlexing>(v140);
              v194 = v140;
              v144.i64[0] = v141;
              v144.i64[1] = v142;
              v228 = vaddq_s64(v144, v187);
              v201 = v143;
              v203 = (v143 + 32);
              v229.i64[0] = v143 + 32;
              v145 = v228.i64[0];
              v146 = &v228;
              for (jj = 1; jj != 3; ++jj)
              {
                if (*(v228.i64[jj] + 32) - *(v228.i64[jj] + 24) < *(v145 + 32) - *(v145 + 24))
                {
                  v145 = v228.i64[jj];
                  v146 = (&v228 + jj * 8);
                }
              }

              v148 = v146->i64[0];
              if (v141 + 4 == v146->i64[0])
              {
                v192 = v146->i64[0];
                v228.i64[0] = v1;
                v228.i64[1] = &v213;
                v229.i64[0] = &v220;
                v229.i64[1] = &v217;
                *&v230 = &__p;
                v150 = v141[7];
                v149 = v141[8];
                if (v150 != v149)
                {
                  v151 = v141[10];
                  do
                  {
                    v152 = *(v150 + 4);
                    v153 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v142 + 4, v152);
                    v154 = v142[8];
                    if (v154 != v153 && *(v201 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v203, v152))
                    {
                      v155 = *v150;
                      v156 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v142 + 4, HIDWORD(*v150));
                      if (v154 == v156)
                      {
                        v157 = v142[11];
                      }

                      else
                      {
                        v157 = v142[10] + 24 * ((v156 - v142[7]) >> 3);
                      }

                      md::SceneQueryLogic::categorizeEntitiesByFlexZone<>(std::vector<gdc::Registry *> const&)::{lambda(gdc::Entity,md::components::MeshInstance &,md::components::ClientState &)#1}::operator()(v228.i64, v155, v151, v157);
                    }

                    v151 += 112;
                    v150 += 8;
                  }

                  while (v150 != v149);
                }

                v1 = v188;
                v97 = v190;
                v148 = v192;
              }

              v199 = v142 + 4;
              if (v142 + 4 == v148)
              {
                v193 = v148;
                v228.i64[0] = v1;
                v228.i64[1] = &v213;
                v229.i64[0] = &v220;
                v229.i64[1] = &v217;
                *&v230 = &__p;
                v159 = v142[7];
                v158 = v142[8];
                if (v159 != v158)
                {
                  v160 = v142[10];
                  do
                  {
                    v161 = *(v159 + 4);
                    v162 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v141 + 4, v161);
                    v163 = v141[8];
                    if (v163 != v162 && *(v201 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v203, v161))
                    {
                      v164 = *v159;
                      v165 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v141 + 4, HIDWORD(*v159));
                      if (v163 == v165)
                      {
                        v166 = v141[11];
                      }

                      else
                      {
                        v166 = v141[10] + 112 * ((v165 - v141[7]) >> 3);
                      }

                      md::SceneQueryLogic::categorizeEntitiesByFlexZone<>(std::vector<gdc::Registry *> const&)::{lambda(gdc::Entity,md::components::MeshInstance &,md::components::ClientState &)#1}::operator()(v228.i64, v164, v166, v160);
                    }

                    v160 += 24;
                    v159 += 8;
                  }

                  while (v159 != v158);
                }

                v97 = v190;
                v148 = v193;
              }

              if (v203 == v148)
              {
                v228.i64[0] = v1;
                v228.i64[1] = &v213;
                v229.i64[0] = &v220;
                v229.i64[1] = &v217;
                *&v230 = &__p;
                v168 = *(v201 + 56);
                v167 = *(v201 + 64);
                while (v168 != v167)
                {
                  v169 = *(v168 + 4);
                  v170 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v141 + 4, v169);
                  v171 = v141[8];
                  if (v171 != v170)
                  {
                    v172 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v199, v169);
                    v173 = v142[8];
                    if (v173 != v172)
                    {
                      v174 = *v168;
                      v175 = HIDWORD(*v168);
                      v176 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v141 + 4, HIDWORD(*v168));
                      if (v171 == v176)
                      {
                        v177 = v141[11];
                      }

                      else
                      {
                        v177 = v141[10] + 112 * ((v176 - v141[7]) >> 3);
                      }

                      v178 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v199, v175);
                      if (v173 == v178)
                      {
                        v179 = v142[11];
                      }

                      else
                      {
                        v179 = v142[10] + 24 * ((v178 - v142[7]) >> 3);
                      }

                      md::SceneQueryLogic::categorizeEntitiesByFlexZone<>(std::vector<gdc::Registry *> const&)::{lambda(gdc::Entity,md::components::MeshInstance &,md::components::ClientState &)#1}::operator()(v228.i64, v174, v177, v179);
                    }
                  }

                  v168 += 8;
                }

                v1 = v188;
                v97 = v190;
              }

              gdc::Registry::add<md::components::FlexClientStateChanged,std::__wrap_iter<gdc::Entity *>>(v194, v217, v218);
              v113 = v186;
              v114 = v217;
              if (v218 != v217)
              {
                v180 = 0;
                do
                {
                  v181 = -1.0;
                  if (v180 < (v215 - __p) >> 2)
                  {
                    v181 = *(__p + v180);
                  }

                  v182 = v114[v180];
                  *v228.i32 = v181;
                  v183 = gdc::Registry::storage<md::components::FlexSelectionInfo>(v194);
                  gdc::ComponentStorageWrapper<md::components::PositionScaleFactor>::emplace(v183, v182, v228.i32);
                  ++v180;
                  v114 = v217;
                }

                while (v180 < v218 - v217);
              }
            }

            v112 = v196 + 1;
          }

          while (v196 + 1 != v97);
          if (__p)
          {
            v215 = __p;
            operator delete(__p);
            v114 = v217;
          }

          if (v114)
          {
            v218 = v114;
            operator delete(v114);
          }
        }

        v228.i64[0] = &v220;
        std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v228);
      }
    }

    if (v204)
    {
      operator delete(v204);
    }
  }
}

void sub_1B2AFB620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::Registry::storage<md::components::DidResolvePendingMaterial>(uint64_t a1)
{
  v3 = 0x21F9ABBDA81BEAF3;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x21F9ABBDA81BEAF3uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void md::SceneQueryLogic::updatePendingRegistries(uint64_t **a1, uint64_t **a2)
{
  v4 = a1[19];
  v5 = v4[51];
  v6 = v4[52];
  if (v5 != v6)
  {
    v7 = (a1 + 58);
    do
    {
      v8 = *v7;
      if (*v7)
      {
        v9 = *(*v5 + 40);
        v10 = (a1 + 58);
        do
        {
          v11 = *(v8[4] + 40);
          v12 = v11 >= v9;
          v13 = v11 < v9;
          if (v12)
          {
            v10 = v8;
          }

          v8 = v8[v13];
        }

        while (v8);
        if (v10 != v7 && v9 >= *(v10[4] + 40))
        {
          std::__tree<gdc::Registry *,md::RegistryIdentifierLessThan,std::allocator<gdc::Registry *>>::__remove_node_pointer(a1 + 57, v10);
          operator delete(v10);
        }
      }

      v5 += 8;
    }

    while (v5 != v6);
  }

  v14 = a1[57];
  v15 = (a1 + 58);
  if (v14 != (a1 + 58))
  {
    do
    {
      v16 = a1[19];
      v17 = v16[57];
      v18 = v16[58];
      if (v18 == v17)
      {
        goto LABEL_22;
      }

      v19 = *(v14[4] + 40);
      v20 = v18 - v17;
      do
      {
        v21 = v20 >> 1;
        v22 = &v17[v20 >> 1];
        v24 = *v22;
        v23 = v22 + 1;
        v20 += ~(v20 >> 1);
        if (v24 < v19)
        {
          v17 = v23;
        }

        else
        {
          v20 = v21;
        }
      }

      while (v20);
      if (v17 == v18 || v19 < *v17)
      {
LABEL_22:
        v25 = v14[1];
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = v14[2];
            v27 = *v26 == v14;
            v14 = v26;
          }

          while (!v27);
        }
      }

      else
      {
        v26 = std::__tree<gdc::Registry *,md::RegistryIdentifierLessThan,std::allocator<gdc::Registry *>>::__remove_node_pointer(a1 + 57, v14);
        operator delete(v14);
      }

      v14 = v26;
    }

    while (v26 != v15);
  }

  v28 = *a2;
  v29 = a2[1];
  if (*a2 != v29)
  {
    do
    {
      v30 = *v28;
      v31 = gdc::Registry::storage<md::components::SupportsFlexing>(*v28);
      if (*(v31 + 88) != *(v31 + 80))
      {
        v32 = *v15;
        if (!*v15)
        {
LABEL_39:
          operator new();
        }

        v33 = *(v30 + 40);
        while (1)
        {
          while (1)
          {
            v34 = v32;
            v35 = *(v32[4] + 40);
            if (v33 >= v35)
            {
              break;
            }

            v32 = *v34;
            if (!*v34)
            {
              goto LABEL_39;
            }
          }

          if (v35 >= v33)
          {
            break;
          }

          v32 = v34[1];
          if (!v32)
          {
            goto LABEL_39;
          }
        }
      }

      ++v28;
    }

    while (v28 != v29);
  }
}

uint64_t *std::__tree<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,std::__map_value_compare<gss::FlexSelectionZone,std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,md::FlexSelectionZoneLessThan,true>,std::allocator<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>>>::__emplace_unique_key_args<gss::FlexSelectionZone,std::piecewise_construct_t const&,std::tuple<gss::FlexSelectionZone&&>,std::tuple<>>(uint64_t a1, char a2, _BYTE **a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 28) - 1;
      if ((a2 - 1) >= v5)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= (a2 - 1))
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t gss::QueryableLocker<gss::PropertyID>::hasValueForKeyAtZ(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a2;
  if (a3 >= 0x17)
  {
    v5 = 23;
  }

  else
  {
    v5 = a3;
  }

  v6 = *a1;
  if (*a1 && (v7 = *v6, LODWORD(v6) = *v6 == 1.0, *(a1 + 10) == 1) && (v7 != 0.0 ? (v8 = v7 == 1.0) : (v8 = 1), !v8) || (v9 = *(a1 + v6 + 11), v9 == 2))
  {
    if (gss::RenderStyle<gss::PropertyID>::hasValueForKeyAtZAtEnd(a1, a2, v5, 0))
    {
      return 1;
    }

    v9 = 1;
  }

  return gss::RenderStyle<gss::PropertyID>::hasValueForKeyAtZAtEnd(a1, v3, v5, v9);
}

void gdc::LayerDataCollector::addDataKey(gdc::LayerDataCollector *this, const gdc::LayerDataRequestKey *a2)
{
  v2[0] = 255;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 1;
  gdc::LayerDataCollector::addDataKey(this, a2, v2);
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,std::shared_ptr<md::AssetData>>>(void *a1, unint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_10:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_10;
  }
}

void md::updateAndLogChange<BOOL>(_BYTE *a1, int a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*a1 != a2)
  {
    v6 = GEOGetVectorKitPuckLogicLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *a1;
      v8 = 136315650;
      v9 = a3;
      v10 = 1024;
      v11 = v7;
      v12 = 1024;
      v13 = a2;
      _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_INFO, "State %s changed from %d to %d", &v8, 0x18u);
    }

    *a1 = a2;
  }
}

void _ZNK3gdc12RegistryViewIJN2md10components19DynamicMeshInstanceENS2_8MaterialENS2_5AssetEEE4eachIZNS1_9PuckLogic15runBeforeLayoutERKNS1_13LayoutContextERKNS1_17LogicDependenciesIJNS_8TypeListIJNS1_13CameraContextENS1_16ElevationContextENS1_17NavigationContextENS1_17StyleLogicContextENS1_22SharedResourcesContextENS1_15RegistryContextENS1_25IdentifiedResourceContextENS1_12SceneContextENS1_20NonTiledAssetContextEEEENSD_IJEEEEE20ResolvedDependenciesERNS1_11PuckContextEE3__1EEvT_(int64x2_t *a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = vbicq_s8(vaddq_s64(*a1, vdupq_n_s64(0x20uLL)), vceqzq_s64(*a1));
  v64 = v4;
  v5 = a1[1].i64[0];
  v6 = v5 + 32;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = v3.i64[1];
  v8 = v4.i64[0];
  v65 = v6;
  v9 = 1;
  v10 = &v64;
  do
  {
    if (*(v64.i64[v9] + 32) - *(v64.i64[v9] + 24) < *(v8 + 32) - *(v8 + 24))
    {
      v8 = v64.i64[v9];
      v10 = (&v64 + v9 * 8);
    }

    ++v9;
  }

  while (v9 != 3);
  v11 = v10->i64[0];
  v12 = v3.i64[0] + 32;
  if (!v3.i64[0])
  {
    v12 = 0;
  }

  v55 = v10->i64[0];
  if (v12 == v11)
  {
    v13 = *(v3.i64[0] + 56);
    v14 = *(v3.i64[0] + 64);
    if (v13 != v14)
    {
      v58 = *(a2 + 8);
      v61 = *a2;
      v56 = *(a2 + 16);
      while (1)
      {
        v15 = a1->i64[1];
        v16 = *(v13 + 4);
        Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v15 + 4, v16);
        v18 = v15[8];
        if (v18 == Index)
        {
          goto LABEL_22;
        }

        v19 = a1[1].i64[0];
        if (*(v19 + 64) == geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v19 + 32), v16))
        {
          goto LABEL_22;
        }

        v20 = *v13;
        v21 = HIDWORD(*v13);
        v22 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v15 + 4, HIDWORD(*v13));
        if (v18 == v22)
        {
          v23 = v15[11];
        }

        else
        {
          v23 = v15[10] + 24 * ((v22 - v15[7]) >> 3);
        }

        v24 = *(v23 + 16);
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          LODWORD(v21) = *(v13 + 4);
          v19 = a1[1].i64[0];
        }

        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v19 + 32), v21);
        *v61 = 1;
        v25 = gdc::Registry::storage<md::components::RenderableInjected>(*(v58 + 288));
        if (!gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v25, v20))
        {
          break;
        }

        if (v24)
        {
          goto LABEL_21;
        }

LABEL_22:
        v13 += 8;
        if (v13 == v14)
        {
          v7 = a1->i64[1];
          v11 = v55;
          goto LABEL_26;
        }
      }

      *v56 = 0;
      if (!v24)
      {
        goto LABEL_22;
      }

LABEL_21:
      std::__shared_weak_count::__release_shared[abi:nn200100](v24);
      goto LABEL_22;
    }
  }

LABEL_26:
  v26 = v7 + 4;
  if (!v7)
  {
    v26 = 0;
  }

  if (v26 == v11)
  {
    v28 = v7[7];
    v27 = v7[8];
    if (v28 != v27)
    {
      v59 = *(a2 + 8);
      v62 = *a2;
      v53 = *(a2 + 16);
      v29 = (v7[10] + 16);
      v57 = v7[8];
      do
      {
        v30 = a1->i64[0];
        v31 = *(v28 + 4);
        if (*(v30 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((a1->i64[0] + 32), v31))
        {
          v32 = a1[1].i64[0];
          if (*(v32 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v32 + 32), v31))
          {
            v33 = *v28;
            v34 = HIDWORD(*v28);
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v30 + 32), HIDWORD(*v28));
            v35 = *v29;
            if (*v29)
            {
              atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
              LODWORD(v34) = *(v28 + 4);
              v32 = a1[1].i64[0];
            }

            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v32 + 32), v34);
            *v62 = 1;
            v36 = gdc::Registry::storage<md::components::RenderableInjected>(*(v59 + 288));
            if (!gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v36, v33))
            {
              *v53 = 0;
            }

            v27 = v57;
            if (v35)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v35);
            }
          }
        }

        v28 += 8;
        v29 += 3;
      }

      while (v28 != v27);
    }
  }

  v37 = a1[1].i64[0];
  v38 = v37 + 32;
  if (!v37)
  {
    v38 = 0;
  }

  if (v38 == v55)
  {
    v39 = *(v37 + 56);
    v40 = *(v37 + 64);
    if (v39 != v40)
    {
      v41 = *(a2 + 8);
      v60 = *(a2 + 16);
      v63 = *a2;
      while (1)
      {
        v42 = a1->i64[0];
        v43 = *(v39 + 4);
        if (*(v42 + 64) == geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((a1->i64[0] + 32), v43))
        {
          goto LABEL_56;
        }

        v44 = a1->i64[1];
        v45 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v44 + 4, v43);
        v46 = v44[8];
        if (v46 == v45)
        {
          goto LABEL_56;
        }

        v47 = *v39;
        v48 = HIDWORD(*v39);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v42 + 32), HIDWORD(*v39));
        v49 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v44 + 4, v48);
        v50 = v46 == v49 ? v44[11] : v44[10] + 24 * ((v49 - v44[7]) >> 3);
        v51 = *(v50 + 16);
        if (v51)
        {
          atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *v63 = 1;
        v52 = gdc::Registry::storage<md::components::RenderableInjected>(*(v41 + 288));
        if (!gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v52, v47))
        {
          break;
        }

        if (v51)
        {
          goto LABEL_55;
        }

LABEL_56:
        v39 += 8;
        if (v39 == v40)
        {
          return;
        }
      }

      *v60 = 0;
      if (!v51)
      {
        goto LABEL_56;
      }

LABEL_55:
      std::__shared_weak_count::__release_shared[abi:nn200100](v51);
      goto LABEL_56;
    }
  }
}

void sub_1B2AFC3E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void md::updateAndLogChange<md::PuckRenderMode>(_BYTE *a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*a1 != a2)
  {
    v4 = GEOGetVectorKitPuckLogicLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *a1;
      v6 = 136315650;
      v7 = "_puckRenderMode";
      v8 = 1024;
      v9 = v5;
      v10 = 1024;
      v11 = a2;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "State %s changed from %d to %d", &v6, 0x18u);
    }

    *a1 = a2;
  }
}

int *md::RouteLineSection::halfWidthAtZoom(int *result, float a2)
{
  if (*(result + 32) != 1)
  {
    return result;
  }

  v3 = result;
  gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(243, 2, *(*result + 24), 0);
  gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(244, 2, *(*v3 + 24), 0);
  gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(245, 2, *(*v3 + 24), 0);
  v4 = *(*v3 + 24);
  if (a2 >= 0x17)
  {
    v5 = 23;
  }

  else
  {
    v5 = a2;
  }

  v6 = *v4;
  if (!*v4)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v7 = *v6;
  v8 = *v6 == 1.0;
  if (*(v4 + 10) != 1 || (v7 != 0.0 ? (v9 = v7 == 1.0) : (v9 = 1), v9))
  {
LABEL_12:
    v10 = *(v4 + v8 + 11);
    if (v10 != 2)
    {
      goto LABEL_23;
    }
  }

  v11 = *(v4 + 16);
  if (v11)
  {
    v12 = *(v11 + 72);
    if (v12)
    {
      v13 = *v12 + 120 * *(v12 + v5 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v13, 0x1B5u) != *(v13 + 12))
      {
        goto LABEL_26;
      }
    }

    if (*(v4 + 56))
    {
      v14 = *(v4 + 48);
      v15 = 8 * *(v4 + 56);
      while (1)
      {
        v16 = *(*v14 + 72);
        if (v16)
        {
          v17 = *v16 + 120 * *(v16 + v5 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v17, 0x1B5u) != *(v17 + 12))
          {
            goto LABEL_26;
          }
        }

        v14 += 8;
        v10 = 1;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_23;
        }
      }
    }
  }

  v10 = 1;
LABEL_23:
  v18 = *(v4 + 16 * v10 + 16);
  if (!v18)
  {
    goto LABEL_35;
  }

  v19 = *(v18 + 72);
  if (!v19 || (v20 = *v19 + 120 * *(v19 + v5 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v20, 0x1B5u) == *(v20 + 12)))
  {
    v31 = v4 + 16 * v10;
    if (!*(v31 + 56))
    {
      goto LABEL_35;
    }

    v32 = *(v31 + 48);
    v33 = 8 * *(v31 + 56);
    while (1)
    {
      v34 = *(*v32 + 72);
      if (v34)
      {
        v35 = *v34 + 120 * *(v34 + v5 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v35, 0x1B5u) != *(v35 + 12))
        {
          break;
        }
      }

      v32 += 8;
      v33 -= 8;
      if (!v33)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_26:
  v21 = fminf(fmaxf(a2, 0.0), 23.0);
  if (v6)
  {
    v22 = *v6;
    v23 = *v6 == 1.0;
    if (*(v4 + 10) == 1 && v22 != 0.0 && v22 != 1.0)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = *(v4 + v23 + 11);
  if (v25 == 2)
  {
LABEL_53:
    v37 = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 437, 0, &v37, v21);
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 437, 1, &v36, v21);
    goto LABEL_35;
  }

  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 437, v25, 0, v21);
LABEL_35:
  v26 = fminf(fmaxf(a2, 0.0), 23.0);
  if (v6)
  {
    v27 = *v6;
    v28 = *v6 == 1.0;
    if (*(v4 + 10) == 1 && v27 != 0.0 && v27 != 1.0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v28 = 0;
  }

  v30 = *(v4 + v28 + 11);
  if (v30 == 2)
  {
LABEL_51:
    v39 = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 94, 0, &v39, v26);
    return gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 94, 1, &v38, v26);
  }

  return gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 94, v30, 0, v26);
}

uint64_t gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<unsigned int>(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *a1;
  if (*a1)
  {
    v5 = *v4;
    LODWORD(v4) = *v4 == 1.0;
    if (*(a1 + 10) == 1 && v5 != 0.0 && v5 != 1.0)
    {
      v7 = v5 < 1.0;
      goto LABEL_10;
    }
  }

  v8 = *(a1 + v4 + 11);
  if (v8 == 2)
  {
    v7 = 1;
LABEL_10:
    v12 = 1;
    v9 = gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<unsigned int>(a1, 0, &v12, v2);
    LODWORD(result) = gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<unsigned int>(a1, 1u, &v11, v2);
    if (v7)
    {
      return v9;
    }

    else
    {
      return result;
    }
  }

  return gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<unsigned int>(a1, v8, 0, v2);
}

uint64_t md::PuckStyleInfo::operator=(uint64_t result, uint64_t a2)
{
  *result = *a2;
  for (i = 16; i != 32; i += 4)
  {
    *(result + i) = *(a2 + i);
  }

  do
  {
    *(result + i) = *(a2 + i);
    i += 4;
  }

  while (i != 48);
  do
  {
    *(result + i) = *(a2 + i);
    i += 4;
  }

  while (i != 64);
  v3 = *(a2 + 64);
  *(result + 72) = *(a2 + 72);
  *(result + 64) = v3;
  return result;
}

void md::PuckLogic::update3DPuck(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, uint64_t a7)
{
  v11 = a3;
  v182 = *MEMORY[0x1E69E9840];
  v13 = *(a3 + 3760);
  [a2 size];
  v15 = v14;
  v16 = *(a1 + 120);
  v17 = *(a1 + 188);
  v18 = *(a4 + 48);
  v19 = *([v18 puck] + 32);

  v153 = (*(a5 + 209) == 1) & *(a5 + 208);
  md::PuckLogic::update3DPuckVisibility(a1, v153);
  if (!*(a1 + 288))
  {
    goto LABEL_110;
  }

  *&v162 = 0;
  *&v159 = 0;
  v173[0] = 0;
  v171 = 0;
  v20 = *(a1 + 192);
  v148 = v11;
  v149 = a7;
  if (v20 != 2)
  {
    if (v20 == 1)
    {
      v172 = 1;
      v170 = 0;
      v27 = *(a1 + 392);
      v26 = *(a1 + 400);
      if (v26)
      {
        atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
      }

      v25 = 0;
      *&v162 = v27;
      *&v159 = v26;
    }

    else
    {
      if (!*(a1 + 192))
      {
        v172 = 1;
        v170 = 1;
        v22 = *(a1 + 408);
        v21 = *(a1 + 416);
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
        }

        *&v162 = v22;
        *&v159 = v21;
        v24 = *(a1 + 424);
        v23 = *(a1 + 432);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v173[0] = v24;
        v171 = v23;
      }

      v25 = 1;
    }

    v28 = 1;
    goto LABEL_24;
  }

  if (!*(a1 + 193))
  {
    v30 = *(a1 + 408);
    v29 = *(a1 + 416);
    if (!v29)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (*(a1 + 193) != 1)
  {
    v28 = 0;
    goto LABEL_23;
  }

  v30 = *(a1 + 392);
  v29 = *(a1 + 400);
  if (v29)
  {
LABEL_18:
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_19:
  v28 = 0;
  v173[0] = v30;
  v171 = v29;
LABEL_23:
  v25 = 1;
LABEL_24:
  v172 = v28 & v153;
  v170 = v25 & v153;
  v31 = *(a1 + 288);
  v32 = gdc::Registry::storage<md::components::OcclusionType>(v31);
  v33 = gdc::Registry::storage<md::components::CustomRenderState>(v31);
  v34 = gdc::Registry::storage<md::components::Visibility>(v31);
  v151 = a1;
  v147 = a5;
  v35.i64[0] = v32;
  v35.i64[1] = v33;
  v174 = vaddq_s64(v35, vdupq_n_s64(0x20uLL));
  v156 = v34 + 4;
  *&v175 = v34 + 4;
  v36 = v174.i64[0];
  v37 = 1;
  v38 = &v174;
  do
  {
    if (*(v174.i64[v37] + 32) - *(v174.i64[v37] + 24) < *(v36 + 32) - *(v36 + 24))
    {
      v36 = v174.i64[v37];
      v38 = (&v174 + v37 * 8);
    }

    ++v37;
  }

  while (v37 != 3);
  v157 = v32 + 4;
  v150 = v38->i64[0];
  if (v32 + 4 == v38->i64[0])
  {
    v39 = v32[7];
    v154 = v32[8];
    if (v39 != v154)
    {
      v40 = v32[10];
      do
      {
        v41 = *(v39 + 4);
        Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v33 + 4, v41);
        v43 = v33[8];
        if (v43 != Index)
        {
          v44 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v156, v41);
          v45 = v34[8];
          if (v45 != v44)
          {
            v46 = *v39;
            v47 = HIDWORD(*v39);
            v48 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v33 + 4, HIDWORD(*v39));
            if (v43 == v48)
            {
              v49 = v33[11];
            }

            else
            {
              v49 = (v33[10] + 24 * ((v48 - v33[7]) >> 3));
            }

            v50 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v156, v47);
            if (v45 == v50)
            {
              v51 = v34[11];
            }

            else
            {
              v51 = (v34[10] + ((v50 - v34[7]) >> 3));
            }

            if (!*v40)
            {
              v52 = &v162;
              v53 = &v172;
              v54 = &v159;
              goto LABEL_43;
            }

            if (*v40 == 1)
            {
              v52 = v173;
              v53 = &v170;
              v54 = &v171;
LABEL_43:
              if (v153)
              {
                v55 = *v53;
                if (*v51 != v55)
                {
                  *v51 = v55;
                  v56 = gdc::Registry::storage<md::components::VisibilityChanged>(*(v151 + 288));
                  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v56, v46);
                }
              }

              else
              {
                *v51 = 0;
              }

              v57 = *v52;
              if (*v49 != *v52)
              {
                v58 = *v54;
                if (*v54)
                {
                  atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v59 = v49[1];
                *v49 = v57;
                v49[1] = v58;
                if (v59)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v59);
                }

                v60 = gdc::Registry::storage<md::components::CustomRenderStateChanged>(*(v151 + 288));
                gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v60, v46);
              }
            }
          }
        }

        ++v40;
        v39 += 8;
      }

      while (v39 != v154);
    }
  }

  v155 = v33 + 4;
  if (v33 + 4 == v150)
  {
    v61 = v33[7];
    v152 = v33[8];
    if (v61 != v152)
    {
      v62 = (v33[10] + 8);
      do
      {
        v63 = *(v61 + 4);
        v64 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v157, v63);
        v65 = v32[8];
        if (v65 != v64)
        {
          v66 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v156, v63);
          v67 = v34[8];
          if (v67 != v66)
          {
            v68 = *v61;
            v69 = HIDWORD(*v61);
            v70 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v157, HIDWORD(*v61));
            if (v65 == v70)
            {
              v71 = v32[11];
            }

            else
            {
              v71 = (v32[10] + ((v70 - v32[7]) >> 3));
            }

            v72 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v156, v69);
            if (v67 == v72)
            {
              v73 = v34[11];
            }

            else
            {
              v73 = (v34[10] + ((v72 - v34[7]) >> 3));
            }

            if (!*v71)
            {
              v74 = &v162;
              v75 = &v172;
              v76 = &v159;
              goto LABEL_69;
            }

            if (*v71 == 1)
            {
              v74 = v173;
              v75 = &v170;
              v76 = &v171;
LABEL_69:
              if (v153)
              {
                v77 = *v75;
                if (*v73 != v77)
                {
                  *v73 = v77;
                  v78 = gdc::Registry::storage<md::components::VisibilityChanged>(*(v151 + 288));
                  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v78, v68);
                }
              }

              else
              {
                *v73 = 0;
              }

              v79 = *v74;
              if (*(v62 - 1) != *v74)
              {
                v80 = *v76;
                if (*v76)
                {
                  atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v81 = *v62;
                *(v62 - 1) = v79;
                *v62 = v80;
                if (v81)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v81);
                }

                v82 = gdc::Registry::storage<md::components::CustomRenderStateChanged>(*(v151 + 288));
                gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v82, v68);
              }
            }
          }
        }

        v61 += 8;
        v62 += 3;
      }

      while (v61 != v152);
    }
  }

  if (v156 == v150)
  {
    v84 = v34[7];
    v83 = v34[8];
    if (v84 != v83)
    {
      v85 = v34[10];
      do
      {
        v86 = *(v84 + 4);
        v87 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v157, v86);
        v88 = v32[8];
        if (v88 != v87)
        {
          v89 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v155, v86);
          v90 = v33[8];
          if (v90 != v89)
          {
            v91 = *v84;
            v92 = HIDWORD(*v84);
            v93 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v157, HIDWORD(*v84));
            if (v88 == v93)
            {
              v94 = v32[11];
            }

            else
            {
              v94 = (v32[10] + ((v93 - v32[7]) >> 3));
            }

            v95 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v155, v92);
            if (v90 == v95)
            {
              v96 = v33[11];
            }

            else
            {
              v96 = (v33[10] + 24 * ((v95 - v33[7]) >> 3));
            }

            if (!*v94)
            {
              v97 = &v162;
              v98 = &v172;
              v99 = &v159;
              goto LABEL_95;
            }

            if (*v94 == 1)
            {
              v97 = v173;
              v98 = &v170;
              v99 = &v171;
LABEL_95:
              if (v153)
              {
                v100 = *v98;
                if (*v85 != v100)
                {
                  *v85 = v100;
                  v101 = gdc::Registry::storage<md::components::VisibilityChanged>(*(v151 + 288));
                  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v101, v91);
                }
              }

              else
              {
                *v85 = 0;
              }

              v102 = *v97;
              if (*v96 != *v97)
              {
                v103 = *v99;
                if (*v99)
                {
                  atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v104 = v96[1];
                *v96 = v102;
                v96[1] = v103;
                if (v104)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v104);
                }

                v105 = gdc::Registry::storage<md::components::CustomRenderStateChanged>(*(v151 + 288));
                gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v105, v91);
              }
            }
          }
        }

        ++v85;
        v84 += 8;
      }

      while (v84 != v83);
    }
  }

  if (v171)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v171);
  }

  a5 = v147;
  v11 = v148;
  a1 = v151;
  a7 = v149;
  if (v159)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v159);
  }

LABEL_110:
  v106 = gdc::ToCoordinateSystem(*(v11 + 3784));
  v107 = 0;
  if (v106)
  {
    do
    {
      *&v174.i64[v107] = *(a7 + v107 * 8 + 48) - *(a7 + v107 * 8 + 24);
      ++v107;
    }

    while (v107 != 3);
    v108 = 0;
    v109 = 0.0;
    do
    {
      v109 = v109 + *&v174.i64[v108] * *&v174.i64[v108];
      ++v108;
    }

    while (v108 != 3);
    v110 = sqrt(v109) * 0.0000000249532021;
  }

  else
  {
    do
    {
      *&v174.i64[v107] = a6[v107 + 6] - a6[v107 + 3];
      ++v107;
    }

    while (v107 != 3);
    v111 = 0;
    v112 = 0.0;
    do
    {
      v112 = v112 + *&v174.i64[v111] * *&v174.i64[v111];
      ++v111;
    }

    while (v111 != 3);
    v110 = sqrt(v112);
  }

  v113 = 0;
  v114 = v16;
  do
  {
    *&v174.i64[v113] = a6[v113 + 6] - a6[v113];
    ++v113;
  }

  while (v113 != 3);
  v115 = gm::Matrix<double,3,1>::normalized<int,void>(&v174);
  v174.i64[0] = gm::lerp<gm::Matrix<double,3,1>,float>(a6[9], a6[10], a6[11], v115, v116, v117, v17);
  v174.i64[1] = v118;
  *&v175 = v119;
  v173[0] = gm::Matrix<double,3,1>::normalized<int,void>(&v174);
  v173[1] = v120;
  v173[2] = v121;
  v122 = v19 * -0.5 + 1.57079633;
  v123 = sin(v122);
  for (i = 0; i != 3; ++i)
  {
    *&v174.i64[i] = *&v173[i] * v123;
  }

  v158 = v174;
  v125 = v175;
  v126 = cos(v122);
  v174 = v158;
  *&v175 = v125;
  *(&v175 + 1) = v126;
  gm::quaternionBetweenVectors<double>(&v162, (a6 + 12), v173);
  gm::Quaternion<double>::operator*(&v159, &v174, &v162);
  v127 = 0;
  v128 = a6[15] * 40075017.0;
  if (!*(a6 + 128))
  {
    v128 = 1.0;
  }

  v162 = *a6;
  v163 = *(a6 + 2);
  v164 = v159;
  v165 = v160;
  v166 = v161;
  v167 = v13 * v114 * 1.6 * v110 * v128 / v15;
  v168 = v167;
  v169 = v167;
  do
  {
    *(a1 + 336 + v127 * 8) = a6[v127];
    ++v127;
  }

  while (v127 != 3);
  geo::Transform<double>::toMatrix(&v174, &v162);
  v129 = v179;
  *(a5 + 408) = v178;
  *(a5 + 424) = v129;
  v130 = v181;
  *(a5 + 440) = v180;
  *(a5 + 456) = v130;
  v131 = v175;
  *(a5 + 344) = v174;
  *(a5 + 360) = v131;
  v132 = v177;
  *(a5 + 376) = v176;
  *(a5 + 392) = v132;
  v133 = *(a1 + 288);
  if (v133)
  {
    v134 = a5;
    v135 = gdc::Registry::storage<md::components::DynamicMeshInstance>(*(a1 + 288));
    v136 = gdc::Registry::storage<md::components::Material>(v133);
    v137 = v136;
    v138 = (v136 + 32);
    v140 = v135[7];
    v139 = v135[8];
    if (*(v136 + 64) - *(v136 + 56) >= (v139 - v140))
    {
      v141 = v135 + 4;
    }

    else
    {
      v141 = (v136 + 32);
    }

    if (v135 + 4 == v141)
    {
      v142 = a1;
      v174.i64[0] = a1;
      v174.i64[1] = v134;
      if (v140 != v139)
      {
        v143 = v135[10];
        do
        {
          if (v137[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v138, *(v140 + 4)))
          {
            gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::getComponent<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::vector<gdc::Registry *>>(v137, *v140);
            _ZZN2md9PuckLogic12update3DPuckERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_13CameraContextENS_16ElevationContextENS_17NavigationContextENS_17StyleLogicContextENS_22SharedResourcesContextENS_15RegistryContextENS_25IdentifiedResourceContextENS_12SceneContextENS_20NonTiledAssetContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_11PuckContextERKNS_21MercatorTransformInfoERKNS_23GeocentricTransformInfoEENK3__0clENS5_6EntityERNS_10components19DynamicMeshInstanceERNSW_8MaterialE(&v174, v143);
          }

          v143 += 304;
          v140 += 8;
        }

        while (v140 != v139);
      }

      a1 = v142;
    }

    if (v138 == v141)
    {
      v174.i64[0] = a1;
      v174.i64[1] = v134;
      v144 = v137[7];
      v145 = v137[8];
      while (v144 != v145)
      {
        if (v135[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v135 + 4, *(v144 + 4)))
        {
          v146 = gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::getComponent<md::components::Material,md::components::DynamicMeshInstance>(v135, *v144);
          _ZZN2md9PuckLogic12update3DPuckERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_13CameraContextENS_16ElevationContextENS_17NavigationContextENS_17StyleLogicContextENS_22SharedResourcesContextENS_15RegistryContextENS_25IdentifiedResourceContextENS_12SceneContextENS_20NonTiledAssetContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_11PuckContextERKNS_21MercatorTransformInfoERKNS_23GeocentricTransformInfoEENK3__0clENS5_6EntityERNS_10components19DynamicMeshInstanceERNSW_8MaterialE(&v174, v146);
        }

        v144 += 8;
      }
    }
  }
}

uint64_t gdc::Registry::view<md::components::DynamicMeshInstance,md::components::Material,md::components::Visibility>(uint64_t *a1, uint64_t a2)
{
  v4 = gdc::Registry::storage<md::components::DynamicMeshInstance>(a2);
  v5 = gdc::Registry::storage<md::components::Material>(a2);
  result = gdc::Registry::storage<md::components::Visibility>(a2);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = result;
  return result;
}

void gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material,md::components::Visibility>::each<md::PuckLogic::update3DPuckVisibility(BOOL)::$_0>(int64x2_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = vbicq_s8(vaddq_s64(*a1, vdupq_n_s64(0x20uLL)), vceqzq_s64(*a1));
  v56 = v6;
  v7 = a1[1].i64[0];
  v8 = v7 + 32;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = v5.i64[1];
  v10 = v6.i64[0];
  v57 = v8;
  v11 = 1;
  v12 = &v56;
  do
  {
    if (*(v56.i64[v11] + 32) - *(v56.i64[v11] + 24) < *(v10 + 32) - *(v10 + 24))
    {
      v10 = v56.i64[v11];
      v12 = (&v56 + v11 * 8);
    }

    ++v11;
  }

  while (v11 != 3);
  v13 = v12->i64[0];
  v14 = v5.i64[0] + 32;
  if (!v5.i64[0])
  {
    v14 = 0;
  }

  v54 = v12->i64[0];
  if (v14 == v13)
  {
    v15 = *(v5.i64[0] + 56);
    v16 = *(v5.i64[0] + 64);
    if (v15 != v16)
    {
      do
      {
        v17 = a1->i64[1];
        v18 = *(v15 + 4);
        if (*(v17 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v17 + 32), v18))
        {
          v19 = a1[1].i64[0];
          Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v19 + 4, v18);
          v21 = v19[8];
          if (v21 != Index)
          {
            v22 = *v15;
            v23 = HIDWORD(*v15);
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v17 + 32), HIDWORD(*v15));
            v24 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v19 + 4, v23);
            v25 = (v21 == v24 ? v19[11] : v19[10] + ((v24 - v19[7]) >> 3));
            v26 = *a2;
            if (v26 != *v25)
            {
              *v25 = v26;
              v27 = gdc::Registry::storage<md::components::VisibilityChanged>(*(a3 + 288));
              gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v27, v22);
            }
          }
        }

        v15 += 8;
      }

      while (v15 != v16);
      v9 = a1->i64[1];
      v13 = v54;
    }
  }

  v28 = v9 + 32;
  if (!v9)
  {
    v28 = 0;
  }

  if (v28 == v13)
  {
    v41 = *(v9 + 56);
    v42 = *(v9 + 64);
    while (v41 != v42)
    {
      v43 = a1->i64[0];
      v44 = *(v41 + 4);
      if (*(v43 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((a1->i64[0] + 32), v44))
      {
        v45 = a1[1].i64[0];
        v46 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v45 + 4, v44);
        v47 = v45[8];
        if (v47 != v46)
        {
          v48 = *v41;
          v49 = HIDWORD(*v41);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v43 + 32), HIDWORD(*v41));
          v50 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v45 + 4, v49);
          v51 = (v47 == v50 ? v45[11] : v45[10] + ((v50 - v45[7]) >> 3));
          v52 = *a2;
          if (v52 != *v51)
          {
            *v51 = v52;
            v53 = gdc::Registry::storage<md::components::VisibilityChanged>(*(a3 + 288));
            gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v53, v48);
          }
        }
      }

      v41 += 8;
    }
  }

  v29 = a1[1].i64[0];
  v30 = v29 + 4;
  if (!v29)
  {
    v30 = 0;
  }

  if (v30 == v54)
  {
    v31 = v29[7];
    v32 = v29[8];
    if (v31 != v32)
    {
      v33 = v29[10];
      do
      {
        v34 = a1->i64[0];
        v35 = *(v31 + 4);
        if (*(v34 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((a1->i64[0] + 32), v35))
        {
          v36 = a1->i64[1];
          if (*(v36 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v36 + 32), v35))
          {
            v37 = *v31;
            v38 = HIDWORD(*v31);
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v34 + 32), HIDWORD(*v31));
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v36 + 32), v38);
            v39 = *a2;
            if (v39 != *v33)
            {
              *v33 = v39;
              v40 = gdc::Registry::storage<md::components::VisibilityChanged>(*(a3 + 288));
              gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v40, v37);
            }
          }
        }

        ++v33;
        v31 += 8;
      }

      while (v31 != v32);
    }
  }
}

double gm::Quaternion<double>::normalize(uint64_t a1)
{
  v1 = 0;
  v2 = 0.0;
  do
  {
    v2 = v2 + *(a1 + v1) * *(a1 + v1);
    v1 += 8;
  }

  while (v1 != 24);
  v3 = 0;
  v4 = 1.0 / sqrt(v2 + *(a1 + 24) * *(a1 + 24));
  do
  {
    *(a1 + v3) = *(a1 + v3) * v4;
    v3 += 8;
  }

  while (v3 != 24);
  result = *(a1 + 24) * v4;
  *(a1 + 24) = result;
  return result;
}

void geo::Transform<double>::toMatrix(uint64_t a1, void *a2)
{
  v4 = v22;
  geo::RigidTransform<double,double>::toMatrix(v22, a2);
  v5 = 0;
  v16 = 0u;
  v18 = 0u;
  v20 = 0u;
  v19 = 0u;
  v17 = 0u;
  v15 = 0u;
  v14 = 0u;
  v6 = a2[8];
  v13 = a2[7];
  v21 = 0x3FF0000000000000;
  *&v16 = v6;
  *(&v18 + 1) = a2[9];
  do
  {
    v7 = 0;
    v8 = &v13;
    do
    {
      v9 = 0;
      v10 = 0.0;
      v11 = v4;
      do
      {
        v12 = *v11;
        v11 += 4;
        v10 = v10 + *&v8[v9++] * v12;
      }

      while (v9 != 4);
      *(a1 + 8 * (4 * v7++ + v5)) = v10;
      v8 += 4;
    }

    while (v7 != 4);
    ++v5;
    ++v4;
  }

  while (v5 != 4);
}

double _ZZN2md9PuckLogic12update3DPuckERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_13CameraContextENS_16ElevationContextENS_17NavigationContextENS_17StyleLogicContextENS_22SharedResourcesContextENS_15RegistryContextENS_25IdentifiedResourceContextENS_12SceneContextENS_20NonTiledAssetContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_11PuckContextERKNS_21MercatorTransformInfoERKNS_23GeocentricTransformInfoEENK3__0clENS5_6EntityERNS_10components19DynamicMeshInstanceERNSW_8MaterialE(void *a1, uint64_t a2)
{
  v3 = *a1;
  if ((*(*a1 + 384) & 1) == 0)
  {
    v4 = *(a2 + 36);
    *(v3 + 376) = *(a2 + 52);
    *(v3 + 360) = v4;
    *(v3 + 384) = 1;
  }

  for (i = 0; i != 12; i += 4)
  {
    *(&v29 + i) = *(a2 + i + 48) - *(a2 + i + 36);
  }

  v6 = fmaxf(*&v29, 0.0);
  v7 = fmaxf(*(&v29 + 1), 0.0);
  v8 = fmaxf(*&v30, 0.0);
  if (v6 > v7)
  {
    if (v6 > v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = v7;
  if (v7 <= v8)
  {
LABEL_9:
    v6 = v8;
  }

LABEL_10:
  v32 = 0u;
  v34 = 0;
  v37 = 0u;
  v36 = 0u;
  v33 = 0u;
  v31 = 0u;
  v30 = 0u;
  v38 = 0x3FF0000000000000;
  v29 = 1.0 / v6;
  *&v32 = v29;
  v35 = v29;
  v9 = *(a2 + 44);
  v20 = 0u;
  v22 = 0;
  v18 = 0u;
  v19 = 0u;
  v21 = 0u;
  v17 = 0x3FF0000000000000;
  *&v20 = 0x3FF0000000000000;
  v23 = 0x3FF0000000000000;
  v24 = 0;
  v28 = 0x3FF0000000000000;
  v25 = 0;
  v26 = 0;
  v27 = -v9;
  gm::operator*<double,3,4,4>(v14, (a2 + 112), a1[1] + 344);
  gm::operator*<double,3,4,4>(v15, v14, &v29);
  gm::operator*<double,3,4,4>(v16, v15, &v17);
  v10 = v16[3];
  *(a2 + 240) = v16[2];
  *(a2 + 256) = v10;
  v11 = v16[5];
  *(a2 + 272) = v16[4];
  *(a2 + 288) = v11;
  result = *v16;
  v13 = v16[1];
  *(a2 + 208) = v16[0];
  *(a2 + 224) = v13;
  return result;
}

uint64_t *md::RegistryManager::getRegistryByIdentifier(md::RegistryManager *this, unsigned int a2)
{
  v22[3] = *MEMORY[0x1E69E9840];
  std::vector<gdc::Registry *>::vector[abi:nn200100](v20, this + 48);
  std::vector<gdc::Registry *>::vector[abi:nn200100](v21, this + 51);
  v4 = v22;
  std::vector<gdc::Registry *>::vector[abi:nn200100](v22, this + 60);
  for (i = 0; i != 9; i += 3)
  {
    std::vector<gdc::Registry *>::vector[abi:nn200100](&v18, &v20[i]);
    if (v19 == v18)
    {
      goto LABEL_13;
    }

    v6 = (v19 - v18) >> 3;
    v7 = v18;
    do
    {
      v8 = v6 >> 1;
      v9 = &v7[8 * (v6 >> 1)];
      v11 = *v9;
      v10 = v9 + 8;
      v6 += ~(v6 >> 1);
      if (*(v11 + 40) < a2)
      {
        v7 = v10;
      }

      else
      {
        v6 = v8;
      }
    }

    while (v6);
    if (v7 == v19)
    {
LABEL_13:
      v14 = 1;
      if (!v18)
      {
        goto LABEL_15;
      }

LABEL_14:
      v19 = v18;
      operator delete(v18);
      goto LABEL_15;
    }

    v12 = *v7;
    v13 = *(*v7 + 40);
    v14 = v13 != a2;
    if (v13 == a2)
    {
      v4 = v12;
    }

    if (v18)
    {
      goto LABEL_14;
    }

LABEL_15:
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  v4 = 0;
LABEL_18:
  for (j = 0; j != -9; j -= 3)
  {
    v16 = v22[j];
    if (v16)
    {
      v22[j + 1] = v16;
      operator delete(v16);
    }
  }

  return v4;
}

double std::__function::__func<md::MeshRenderableLogic::updateDynamicMeshes(md::CameraContext const&,md::MaterialContext const&)::$_0::operator() const(gdc::Entity,md::components::DynamicMeshInstance &,md::components::Material &)::{lambda(unsigned long,gm::Matrix<float,4,4> &)#1},std::allocator<md::MeshRenderableLogic::updateDynamicMeshes(md::CameraContext const&,md::MaterialContext const&)::$_0::operator() const(gdc::Entity,md::components::DynamicMeshInstance &,md::components::Material &)::{lambda(unsigned long,gm::Matrix<float,4,4> &)#1}>,void ()(unsigned long,gm::Matrix<float,4,4> &)>::operator()(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v3 = 0;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16) + 208;
  v6 = v23;
  do
  {
    v7 = 0;
    v8 = v6;
    do
    {
      *v8 = *(v5 + v7);
      v8 += 4;
      v7 += 24;
    }

    while (v7 != 96);
    ++v3;
    ++v6;
    v5 += 8;
  }

  while (v3 != 3);
  v9 = 0;
  v23[3] = 0;
  v23[7] = 0;
  v23[11] = 0;
  v23[15] = 0x3FF0000000000000;
  do
  {
    v10 = 0;
    v11 = v23;
    do
    {
      v12 = 0;
      v13 = 0.0;
      v14 = v4;
      do
      {
        v15 = *v14;
        v14 += 4;
        v13 = v13 + *&v11[v12++] * v15;
      }

      while (v12 != 4);
      v24[4 * v10++ + v9] = v13;
      v11 += 4;
    }

    while (v10 != 4);
    ++v9;
    ++v4;
  }

  while (v9 != 4);
  v16 = 0;
  v17 = v24;
  do
  {
    v19 = *v17;
    v18 = *(v17 + 2);
    v17 += 4;
    v25[v16++] = vcvt_hight_f32_f64(vcvt_f32_f64(v19), v18);
  }

  while (v16 != 4);
  v20 = v25[1];
  *a3 = v25[0];
  a3[1] = v20;
  result = *&v26;
  v22 = v27;
  a3[2] = v26;
  a3[3] = v22;
  return result;
}

uint64_t std::function<void ()(gdc::Registry *,gdc::EntityCollector *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v8 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v8, &v7);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<md::MeshRenderableLogic::getWrappedCollectorVisitor(BOOL,std::function<void ()(gdc::Registry *,gdc::EntityCollector *)>)::$_0,std::allocator<md::MeshRenderableLogic::getWrappedCollectorVisitor(BOOL,std::function<void ()(gdc::Registry *,gdc::EntityCollector *)>)::$_0>,void ()(gdc::Registry *,gdc::EntityCollector *)>::operator()(v4, v5, v6);
}

uint64_t std::__function::__func<md::MeshRenderableLogic::getWrappedCollectorVisitor(BOOL,std::function<void ()(gdc::Registry *,gdc::EntityCollector *)>)::$_0,std::allocator<md::MeshRenderableLogic::getWrappedCollectorVisitor(BOOL,std::function<void ()(gdc::Registry *,gdc::EntityCollector *)>)::$_0>,void ()(gdc::Registry *,gdc::EntityCollector *)>::operator()(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(*a3 + 40) - *(*a3 + 32);
  if (v4)
  {
    v5 = *(result + 16);
    v6 = *(v5 + 120);
    if (v6 <= *(result + 8))
    {
      v7 = *a2;
      *(v5 + 120) = v6 + (v4 >> 3);
      result = std::function<void ()(gdc::Registry *,gdc::EntityCollector *)>::operator()(*(*(result + 24) + 24), v7, v3);
      *(v3 + 40) = *(v3 + 32);
    }

    else
    {
      *(v5 + 128) = 1;
    }
  }

  return result;
}

uint64_t md::Logic<md::DisplayLinkVerificationLogic,md::DisplayLinkVerificationContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<md::CameraContext>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x42BE82C40F9A8F80)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<md::CameraContext>>::resolveDependencies(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 128))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t *md::SceneContext::subtileClipMask(int8x8_t *a1, uint64_t *a2, char a3)
{
  v3 = a1[10];
  if (v3)
  {
    v4 = ((a2 << 6) + (a2 >> 2) + a3 - 0x61C8864680B583EBLL) ^ a2;
    v5 = vcnt_s8(v3);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = ((a2 << 6) + (a2 >> 2) + a3 - 0x61C8864680B583EBLL) ^ a2;
      if (v4 >= *&v3)
      {
        v6 = v4 % *&v3;
      }
    }

    else
    {
      v6 = v4 & (*&v3 - 1);
    }

    v7 = *(*&a1[9] + 8 * v6);
    if (v7)
    {
      for (i = *v7; i; i = *i)
      {
        v9 = i[1];
        if (v4 == v9)
        {
          if (*(i + 32) == a3 && i[2] == a2)
          {
            return i[5];
          }
        }

        else
        {
          if (v5.u32[0] > 1uLL)
          {
            if (v9 >= *&v3)
            {
              v9 %= *&v3;
            }
          }

          else
          {
            v9 &= *&v3 - 1;
          }

          if (v9 != v6)
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

void md::CartographicTiledRenderLayer<md::DaVinciRoadTileDataRenderable>::_updateSubTileMaskForRenderable(uint64_t a1, int8x8_t **a2, uint64_t a3)
{
  v5 = *(a3 + 392);
  v6 = *(a3 + 400);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a3 + 56);
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = md::SceneContext::subtileClipMask(*a2, v5, v7);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  else
  {
    v8 = md::SceneContext::subtileClipMask(*a2, v5, *(a3 + 56));
  }

  if (v8)
  {
    if (v8[4] == v8[3] * v8[3])
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  md::BaseMapTileDataRenderable::setSubtileClipMask(a3, v9);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void sub_1B2AFE1C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void md::BaseMapTileDataRenderable::setSubtileClipMask(md::BaseMapTileDataRenderable *this, const gdc::SubtileClipMask *a2)
{
  if (a2)
  {
    v5 = *(this + 32);
    if (!v5)
    {
      _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_4Tile8ClippingEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(v18);
    }

    ggl::BufferMemory::BufferMemory(v16);
    ggl::ResourceAccessor::accessConstantData(v18, 0, v5, 1);
    ggl::BufferMemory::operator=(v16, v18);
    ggl::BufferMemory::~BufferMemory(v18);
    v6 = *(a2 + 3);
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = *a2;
      v10 = v17;
      v11 = v17 + 1;
      do
      {
        v12 = 0;
        v13 = 1;
        v14 = v7;
        do
        {
          v12 |= ((*(v9 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v14) & 1) << (v13 - 1);
          ++v14;
        }

        while (v6 > v13++);
        v11[v8++] = v12;
        v7 += v6;
      }

      while (v6 > v8);
    }

    else
    {
      v10 = v17;
    }

    *v10 = v6;
    ggl::BufferMemory::~BufferMemory(v16);
  }

  else
  {
    v3 = *(this + 33);
    *(this + 32) = 0;
    *(this + 33) = 0;
    if (v3)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }
}

void md::MercatorTerrainAnchor::setCoordinate(md::MercatorTerrainAnchor *a1, uint64_t a2)
{
  (*(*a1 + 64))(&v5);
  if (*a2 != *&v5 || *(a2 + 8) != *(&v5 + 1) || *(a2 + 16) != v6)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      md::AnchorManager::clearTerrainHeightForAnchor(*(v4 + 16), a1);
      v5 = *a2;
      v6 = *(a2 + 16);
      md::Anchor::setCoordinate(a1, &v5);
    }
  }
}

uint64_t std::__tree<gdc::LayerDataWithWorld>::__count_unique<gdc::LayerDataWithWorld>(uint64_t result, unint64_t a2, char a3)
{
  if (result)
  {
    v3 = result;
    result = 1;
    do
    {
      v4 = *(v3 + 48);
      v5 = *(v3 + 48) > a3;
      v6 = *(v3 + 32);
      if (v4 == a3)
      {
        v5 = v6 > a2;
      }

      if (!v5)
      {
        v7 = v6 < a2;
        if (v4 == a3)
        {
          v8 = v7;
        }

        else
        {
          v8 = v4 < a3;
        }

        if (!v8)
        {
          return result;
        }

        v3 += 8;
      }

      v3 = *v3;
    }

    while (v3);
    return 0;
  }

  return result;
}

void md::BaseMapTileDataRenderable::adjustZScale(md::BaseMapTileDataRenderable *this, float a2, float a3)
{
  if ((*(this + 384) & 1) == 0)
  {
    v5 = *(this + 10) - *(this + 8);
    *(this + 22) = v5;
    *(this + 26) = 0;
  }

  ggl::ConstantDataTyped<ggl::Grid::Style>::write(v7, *(this + 30));
  v6 = v8;
  *(v8 + 348) = a2;
  *(v6 + 344) = a3;
  ggl::BufferMemory::~BufferMemory(v7);
}

void md::PairedTiledRenderLayer<md::ElevatedPolygonRenderable>::_updateSubTileMaskForRenderable(uint64_t a1, int8x8_t **a2, uint64_t a3)
{
  v5 = *(a3 + 56);
  v6 = *(a3 + 408);
  v7 = *(a3 + 416);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a3 + 392);
  v9 = *(a3 + 400);
  v54 = v9;
  v55 = v7;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (*(v6 + 169) > *(v8 + 169))
    {
      goto LABEL_5;
    }

    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else if (*(v6 + 169) > *(v8 + 169))
  {
LABEL_5:
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v8;
    v11 = v7;
    v12 = v9;
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_69:
    v12 = 0;
    v14 = *(v10 + 169);
    v13 = 1;
    goto LABEL_9;
  }

  v10 = v6;
  v11 = v9;
  v6 = v8;
  v12 = v7;
  if (!v7)
  {
    goto LABEL_69;
  }

LABEL_8:
  v13 = 0;
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v10 + 169);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_9:
  v15 = *a2;
  v16 = (*a2)[10];
  v56 = v12;
  if (v16)
  {
    v17 = ((v10 << 6) + (v10 >> 2) + v5 - 0x61C8864680B583EBLL) ^ v10;
    v18 = vcnt_s8(v16);
    v18.i16[0] = vaddlv_u8(v18);
    if (v18.u32[0] > 1uLL)
    {
      v19 = ((v10 << 6) + (v10 >> 2) + v5 - 0x61C8864680B583EBLL) ^ v10;
      if (v17 >= *&v16)
      {
        v19 = v17 % *&v16;
      }
    }

    else
    {
      v19 = v17 & (*&v16 - 1);
    }

    v20 = *(*&v15[9] + 8 * v19);
    if (v20)
    {
      for (i = *v20; i; i = *i)
      {
        v22 = i[1];
        if (v17 == v22)
        {
          if (*(i + 32) == v5 && i[2] == v10)
          {
            v39 = i[5];
            goto LABEL_29;
          }
        }

        else
        {
          if (v18.u32[0] > 1uLL)
          {
            if (v22 >= *&v16)
            {
              v22 %= *&v16;
            }
          }

          else
          {
            v22 &= *&v16 - 1;
          }

          if (v22 != v19)
          {
            break;
          }
        }
      }
    }
  }

  v39 = 0;
LABEL_29:
  v24 = *(v6 + 169);
  v25 = *(v6 + 172);
  v26 = *(v6 + 176);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *a2;
    v53 = v11;
  }

  else
  {
    v53 = 0;
  }

  v27 = md::SceneContext::subtileClipMask(v15, v6, v5);
  v52 = v13;
  if (!(v27 | v39))
  {
    __p = 0;
    v58 = 0uLL;
    operator new();
  }

  v28 = v27;
  if (v39)
  {
    v29 = v24 - v14;
    v30 = (*(v39 + 6) >> (v24 - v14));
    v31 = -1 << v29;
    v32 = v30 * (v26 & ~v31);
    v33 = v30 * (v25 & ~v31);
    if (v27)
    {
      LODWORD(v40) = *(v27 + 24);
      if (v30 <= v40)
      {
        v40 = v40;
      }

      else
      {
        v40 = v30;
      }

      LOBYTE(v60) = 0;
      v41 = v40;
      std::vector<BOOL>::vector(&__p, v40 * v40, &v60);
      v42 = 0;
      v59 = v41;
      v50 = v41 / v30;
      v51 = v41 / *(v28 + 24);
      do
      {
        v43 = 0;
        v49 = v42 / v50 + v33;
        v44 = v42;
        v45 = v42 / v51;
        do
        {
          v46 = v43 / v51 + *(v28 + 24) * v45;
          if ((*(*v28 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v46))
          {
            v47 = v43 / v50 + v32 + v39[3] * v49;
            v48 = (*(*v39 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v47) & 1;
          }

          else
          {
            LODWORD(v48) = 0;
          }

          gdc::SubtileClipMask::setSubTileVisible(&__p, v43++, v44, v48);
        }

        while (v43 < v41);
        v42 = v44 + 1;
      }

      while (v44 + 1 < v41);
    }

    else
    {
      __p = 0;
      v58 = 0uLL;
      if (v30)
      {
        std::vector<BOOL>::__vallocate[abi:nn200100](&__p, v30 * v30);
      }

      v59 = v30;
    }
  }

  else
  {
    std::vector<BOOL>::vector(&__p, v27);
    v59 = *(v28 + 24);
  }

  v34 = (a3 + 424);
  if ((a3 + 424) != &__p)
  {
    v37 = v58;
    if (v58)
    {
      if (v58 > *(a3 + 440) << 6)
      {
        if (*v34)
        {
          operator delete(*v34);
          *v34 = 0;
          *(a3 + 432) = 0;
          *(a3 + 440) = 0;
          v37 = v58;
        }

        std::vector<BOOL>::__vallocate[abi:nn200100]((a3 + 424), v37);
      }

      memmove(*v34, __p, (((v58 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      v38 = v58;
    }

    else
    {
      v38 = 0;
    }

    *(a3 + 432) = v38;
  }

  *(a3 + 448) = v59;
  v35 = *(&v59 + 1);
  *(a3 + 464) = *(&v59 + 1) != 0;
  if (v35)
  {
    if (*(a3 + 456) == *(a3 + 448) * *(a3 + 448))
    {
      v36 = 0;
    }

    else
    {
      v36 = (a3 + 424);
    }

    md::BaseMapTileDataRenderable::setSubtileClipMask(a3, v36);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v53);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v56);
  }

  if ((v52 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v56);
  }

  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v54);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v55);
  }

  if ((v52 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v56);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }
}

void sub_1B2AFEAEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, std::__shared_weak_count *a15, std::__shared_weak_count *a16, std::__shared_weak_count *a17, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  if ((v19 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if ((v19 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  _Unwind_Resume(exception_object);
}

BOOL md::PairedTiledRenderLayer<md::ElevatedPolygonRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::ElevatedPolygonRenderable*)#1}::operator()(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v5 = *(a2 + 392);
  v4 = *(a2 + 400);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 408);
  v6 = *(a2 + 416);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 56);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = std::__tree<gdc::LayerDataWithWorld>::__count_unique<gdc::LayerDataWithWorld>(*(v3 + 136), v5, v8);
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = a1[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (std::__tree<gdc::LayerDataWithWorld>::__count_unique<gdc::LayerDataWithWorld>(*(v10 + 8), v7, v8))
  {
    v11 = 1;
  }

  else
  {
LABEL_21:
    FillRect = grl::IconMetricsRenderResult::getFillRect(v5);
    v11 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>((v3 + 88), FillRect) != 0;
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

LABEL_14:
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  return v11;
}

void *std::__fill_n_BOOL[abi:nn200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

uint64_t std::__function::__func<md::ita::CheckIfShouldDeleteRenderable::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::AssociationHandle const&>)::$_0,std::allocator<md::ita::CheckIfShouldDeleteRenderable::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::AssociationHandle const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::AssociationHandle const&)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *(a1 + 16);
  result = md::VKMRenderResourcesStore::getAssociationItemStorage(**(a1 + 8), *a3, 0);
  if (!result)
  {
    v5 = *v3;
    v6 = ecs2::ExecutionTaskContext::currentEntity(0);
    v7 = ecs2::addComponent<md::ls::PendingDeletion>(v5, v6);
    v8 = *v3;
    v9 = ecs2::ExecutionTaskContext::currentEntity(v7);

    return ecs2::removeComponent<md::ls::MeshRenderableID>(v8, v9);
  }

  return result;
}

uint64_t md::VKMRenderResourcesStore::getAssociationItemStorage(void *a1, unint64_t a2, int a3)
{
  v5 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 1716, a2);
  if (v5 == a1[1721])
  {
    return 0;
  }

  v7 = (v5 - a1[1720]) >> 3;
  v8 = v7 >> 6;
  v9 = v7 & 0x3F;
  result = *(a1[1729] + 8 * v8) + 56 * v9;
  if (a3)
  {
    v10 = *(a1[1723] + 8 * v8);
    ++*(v10 + 24 * v9);
  }

  return result;
}

uint64_t ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(void *a1, unint64_t a2)
{
  v2 = a2 >> 6;
  v3 = a1[1];
  if (v2 < (a1[2] - v3) >> 3 && (v4 = *(v3 + 8 * v2)) != 0 && (v5 = (v4 + 16 * (a2 & 0x3F)), *v5 == HIDWORD(a2)))
  {
    return a1[4] + 8 * v5[1];
  }

  else
  {
    return a1[5];
  }
}

ecs2::ExecutionTaskContext *std::__function::__func<md::ita::CheckIfShouldDeleteUniqueMaterial::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::UniqueMaterialData const&>)::$_0,std::allocator<md::ita::CheckIfShouldDeleteUniqueMaterial::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::UniqueMaterialData const&>)::$_0>,void ()(md::ls::UniqueMaterialData const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = **(a1 + 8);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v10[0] = v5;
  v10[1] = v6;
  result = std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::find<md::MaterialKey>(v4 + 46, v10);
  if (!result || !*(result + 4) || (**(a1 + 16) & 1) != 0 || (result = md::MaterialResourceStore::canDeleteMaterial(v4, v5, v6), result))
  {
    v8 = *v3;
    v9 = ecs2::ExecutionTaskContext::currentEntity(result);

    return ecs2::addComponent<md::ls::PendingDeletion>(v8, v9);
  }

  return result;
}

uint64_t ***std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::find<md::MaterialKey>(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v4 = (*a2 + ((v3 - 0x61C8864680B583EBLL) << 6) - 0x3A3AA7D820E2E4E6) ^ (v3 - 0x61C8864680B583EBLL);
  v5 = *(a2 + 9);
  v6 = ((v5 | (v4 << 6)) + (v4 >> 2) - 0x61C8864680B583EBLL) ^ v4;
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = ((v5 | (v4 << 6)) + (v4 >> 2) - 0x61C8864680B583EBLL) ^ v4;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = v6 & (*&v2 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (result = *v9; result; result = *result)
  {
    v11 = result[1];
    if (v11 == v6)
    {
      if (result[2] == *a2 && __PAIR64__(*(result + 25), *(result + 24)) == __PAIR64__(v5, v3))
      {
        return result;
      }
    }

    else
    {
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v2)
        {
          v11 %= *&v2;
        }
      }

      else
      {
        v11 &= *&v2 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ***md::MaterialResourceStore::canDeleteMaterial(void *a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a2;
  v9[1] = a3;
  result = std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::find<md::MaterialKey>(a1 + 46, v9);
  if (result)
  {
    v5 = result[4];
    v8 = v5;
    if (!v5)
    {
      return 0;
    }

    v6 = *(*(a1[3] + 8 * (v5 >> 6)) + 16 * (v5 & 0x3F) + 8);
    v7 = (*(a1[9] + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v6 & 0x3F));
    if (*v7 || v7[1])
    {
      return 0;
    }

    else
    {
      ecs2::group_storage<geo::handle<md::MaterialIDStorage>,md::Counter,md::MaterialIDStorage,std::shared_ptr<gms::Material<ggl::Texture2D>> *>::erase(a1 + 2, &v8);
      util::id_pool<geo::handle<md::AssociationItem>>::push((a1 + 28), v5);
      std::__hash_table<std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::__unordered_map_hasher<geo::handle<md::MaterialIDStorage>,std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::hash<geo::handle<md::MaterialIDStorage>>,std::equal_to<geo::handle<md::MaterialIDStorage>>,true>,std::__unordered_map_equal<geo::handle<md::MaterialIDStorage>,std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::equal_to<geo::handle<md::MaterialIDStorage>>,std::hash<geo::handle<md::MaterialIDStorage>>,true>,std::allocator<std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>>>::__erase_unique<geo::handle<md::MaterialIDStorage>>(a1 + 51, v5);
      std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::__erase_unique<md::MaterialKey>(a1 + 46, v9);
      return 1;
    }
  }

  return result;
}

uint64_t ***std::__function::__func<md::ita::CheckIfReadyToProcess::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::RenderablesCount &,md::ls::MapDataTypeV const&,md::ls::CheckIfReadyToProcess const&,md::ls::FlyoverOctileKey const*,md::ls::BaseMapTileHandle const*,md::ls::WillEnterView const*>)::$_1,std::allocator<md::ita::CheckIfReadyToProcess::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::RenderablesCount &,md::ls::MapDataTypeV const&,md::ls::CheckIfReadyToProcess const&,md::ls::FlyoverOctileKey const*,md::ls::BaseMapTileHandle const*,md::ls::WillEnterView const*>)::$_1>,void ()(md::ls::RegisterHandle const&,md::ls::RenderablesCount &,md::ls::MapDataTypeV const&,md::ls::CheckIfReadyToProcess const&,md::ls::FlyoverOctileKey const*,md::ls::BaseMapTileHandle const*,md::ls::WillEnterView const*)>::operator()(uint64_t a1, unint64_t *a2, uint64_t a3, _WORD *a4, uint64_t a5, char **a6, unint64_t **a7, uint64_t *a8)
{
  v10 = *a6;
  v11 = *a7;
  v12 = *a8;
  v43 = *(a1 + 40);
  v13 = **(a1 + 8);
  Registry = md::VKMRenderResourcesStore::getRegistry(v13, *a2);
  v15 = **(a1 + 16);
  v16 = md::MeshRenderableContext::renderablesForRegistry(v15, Registry);
  LOBYTE(v17) = 0;
  if (v10)
  {
    if (v11)
    {
      v17 = **(a1 + 24);
      if (v17)
      {
        BaseMapTileDataRenderable = md::VKMRenderResourcesStore::getBaseMapTileDataRenderable(v13, *v11);
        DynamicRenderables = md::FlyoverCompleteTileDataContext::getDynamicRenderables(v17, v10, *(BaseMapTileDataRenderable + 56));
        LOBYTE(v17) = md::FlyoverCompleteTileDataContext::needsUpdate(*(**(a1 + 24) + 32), v10, *(BaseMapTileDataRenderable + 56));
        md::FlyoverCompleteTileDataContext::getOctileInstances(__p, **(a1 + 24), v10, *(BaseMapTileDataRenderable + 56));
        if (*DynamicRenderables != *(DynamicRenderables + 1))
        {
          LOBYTE(v17) = 1;
          v16 = DynamicRenderables;
        }

        if (__p[0])
        {
          operator delete(__p[0]);
        }

        v15 = **(a1 + 16);
      }
    }
  }

  result = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(v15 + 5, *(Registry + 40));
  if (result)
  {
    v21 = 1;
  }

  else
  {
    v21 = v17;
  }

  if (v12 || v21 | **(a1 + 32))
  {
    v22 = *(a3 + 16) - *(a3 + 8);
    v23 = v16[1] - *v16;
    __p[0] = 0xFFFFFFFFLL;
    std::vector<unsigned long>::resize((a3 + 8), v23, __p);
    v25 = *v16;
    v26 = v16[1];
    v27 = v26 - *v16;
    v28 = v27 >> 3;
    if (v27 >> 3 > (v22 >> 3))
    {
      v29 = 0;
      v30 = 0;
      v31 = *(a3 + 8);
      do
      {
        v32 = *(v25[v30] + 204);
        v33 = *(v31 + 8 * v30);
        v35 = v33 != v32 && v33 != 0xFFFFFFFFLL;
        v29 |= v35;
        *(v31 + 8 * v30++) = v32;
      }

      while (v28 != v30);
    }

    else
    {
      v45[0] = 204;
      v45[1] = v16;
      std::__copy_impl::operator()[abi:nn200100]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<md::MeshRenderable *> const>,unsigned int md::MeshRenderable::*>::__iterator<false>,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<md::MeshRenderable *> const>,unsigned int md::MeshRenderable::*>::__iterator<false>,std::back_insert_iterator<std::vector<unsigned long>>>(__p, v45, v25, v45, v26, a3 + 8);
      v25 = *v16;
      v26 = v16[1];
      v27 = v26 - *v16;
      v29 = 1;
    }

    if (v12)
    {
      v36 = 1;
    }

    else
    {
      v36 = v26 == v25;
    }

    v37 = v36;
    v38 = v37 | (v28 <= v22 >> 3) | v29;
    if (v38)
    {
      v39 = 0;
    }

    else
    {
      v39 = v22 >> 3;
    }

    *a3 = v27 >> 3;
    *(a3 + 2) = v39;
    v40 = v38 | (*a4 == 62);
    v41 = *v43;
    v42 = ecs2::ExecutionTaskContext::currentEntity(v24);
    return ecs2::addComponent<md::ls::EnteringView>(v41, v42, v40 & 1);
  }

  return result;
}

uint64_t md::VKMRenderResourcesStore::getRegistry(void *a1, unint64_t a2)
{
  v2 = a2 >> 6;
  v3 = a1[1665];
  if (v2 < (a1[1666] - v3) >> 3 && (v4 = *(v3 + 8 * v2)) != 0 && (v5 = (v4 + 16 * (a2 & 0x3F)), *v5 == HIDWORD(a2)))
  {
    v6 = a1[1668];
    v7 = v6 + 8 * v5[1];
    v8 = a1[1669];
  }

  else
  {
    v8 = a1[1669];
    v6 = a1[1668];
    v7 = v8;
  }

  if (v7 == v8)
  {
    return 0;
  }

  v9 = v7 - v6;
  v10 = *(a1[1677] + (((v9 >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8));
  if (!v10)
  {
    return 0;
  }

  else
  {
    return *(v10 + (v9 & 0x1F8));
  }
}

uint64_t **md::MeshRenderableContext::renderablesForRegistry(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return &md::MeshRenderableContext::renderablesForRegistry(gdc::Registry const*)const::sentinal;
  }

  v2 = a1[1];
  if (!*&v2)
  {
    return &md::MeshRenderableContext::renderablesForRegistry(gdc::Registry const*)const::sentinal;
  }

  v3 = *(a2 + 40);
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *(a2 + 40);
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return &md::MeshRenderableContext::renderablesForRegistry(gdc::Registry const*)const::sentinal;
  }

  v7 = *v6;
  result = &md::MeshRenderableContext::renderablesForRegistry(gdc::Registry const*)const::sentinal;
  if (!v7)
  {
    return result;
  }

  while (1)
  {
    v9 = v7[1];
    if (v9 == v3)
    {
      if (*(v7 + 8) == v3)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v9 >= *&v2)
      {
        v9 %= *&v2;
      }
    }

    else
    {
      v9 &= *&v2 - 1;
    }

    if (v9 != v5)
    {
      break;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  v7 = 0;
LABEL_22:
  if (v7)
  {
    return v7 + 3;
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablesCount>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablesCount>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderablesCount>();
    *algn_1EB83D508 = 0x684A78DCF1B284C1;
    qword_1EB83D510 = "md::ls::RenderablesCount]";
    qword_1EB83D518 = 24;
  }
}

uint64_t md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(void *a1, uint64_t a2)
{
  v3 = *(a2 + 392);
  v4 = *(a2 + 400);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(a2 + 56);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v5 = *(a2 + 56);
  }

  v6 = a1[17];
  if (!v6)
  {
LABEL_13:
    FillRect = grl::IconMetricsRenderResult::getFillRect(v3);
    v13 = a1[12];
    if (!*&v13)
    {
      goto LABEL_30;
    }

    v14 = FillRect;
    v15 = *(FillRect + 104);
    v16 = vcnt_s8(v13);
    v16.i16[0] = vaddlv_u8(v16);
    v17 = v16.u32[0];
    if (v16.u32[0] > 1uLL)
    {
      v18 = *(FillRect + 104);
      if (v15 >= *&v13)
      {
        v18 = v15 % *&v13;
      }
    }

    else
    {
      v18 = (*&v13 - 1) & v15;
    }

    v19 = *(a1[11] + 8 * v18);
    if (v19)
    {
      for (i = *v19; i; i = *i)
      {
        v21 = *(i + 8);
        if (v15 == v21)
        {
          if (gdc::LayerDataRequestKey::operator==((i + 16), v14))
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v17 > 1)
          {
            if (v21 >= *&v13)
            {
              v21 %= *&v13;
            }
          }

          else
          {
            v21 &= *&v13 - 1;
          }

          if (v21 != v18)
          {
            goto LABEL_30;
          }
        }
      }
    }

    else
    {
LABEL_30:
      i = 0;
    }

    if (v4)
    {
      goto LABEL_32;
    }

    return i;
  }

  while (1)
  {
    v7 = *(v6 + 48);
    v8 = v7 > v5;
    v9 = v6[4];
    if (v5 == v7)
    {
      v8 = v3 < v9;
    }

    if (v8)
    {
      goto LABEL_12;
    }

    v10 = *(v6 + 48);
    v11 = v9 < v3;
    if (v5 != v10)
    {
      v11 = v10 < v5;
    }

    if (!v11)
    {
      break;
    }

    ++v6;
LABEL_12:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_13;
    }
  }

LABEL_34:
  i = 1;
  if (!v4)
  {
    return i;
  }

LABEL_32:
  std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  return i;
}

uint64_t md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::updateVisibleMapData(void *a1, uint64_t a2)
{
  v2 = a2;
  v105 = *MEMORY[0x1E69E9840];
  v4 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
  (*(*a1 + 144))(a1, v4);
  if ((*(*a1 + 200))(a1))
  {
    goto LABEL_127;
  }

  v5 = md::LayoutContext::get<md::SceneContext>(*(v2 + 8));
  if (!v5)
  {
    goto LABEL_127;
  }

  v96 = v2;
  v95 = v5;
  (*(*a1 + 160))(a1);
  v6 = a1[22];
  if (v6 == a1 + 23)
  {
    goto LABEL_65;
  }

  do
  {
    FillRect = grl::IconMetricsRenderResult::getFillRect(v6[4]);
    v8 = a1[12];
    if (!*&v8)
    {
      goto LABEL_59;
    }

    v9 = FillRect;
    v10 = *(FillRect + 104);
    v11 = vcnt_s8(v8);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v13 = *(FillRect + 104);
      if (v10 >= *&v8)
      {
        v13 = v10 % *&v8;
      }
    }

    else
    {
      v13 = (*&v8 - 1) & v10;
    }

    v14 = *(a1[11] + 8 * v13);
    if (!v14)
    {
      goto LABEL_59;
    }

    v15 = *v14;
    if (!*v14)
    {
      goto LABEL_59;
    }

    while (1)
    {
      v16 = *(v15 + 1);
      if (v16 == v10)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v16 >= *&v8)
        {
          v16 %= *&v8;
        }
      }

      else
      {
        v16 &= *&v8 - 1;
      }

      if (v16 != v13)
      {
        goto LABEL_59;
      }

LABEL_19:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_59;
      }
    }

    if (!gdc::LayerDataRequestKey::operator==(v15 + 16, v9))
    {
      goto LABEL_19;
    }

    v18 = a1[34];
    v17 = a1[35];
    if (v18 != v17)
    {
      while (*v18 != *(v15 + 16))
      {
        v18 += 8;
        if (v18 == v17)
        {
          v18 = a1[35];
          break;
        }
      }
    }

    v19 = v17 - (v18 + 8);
    if (v17 != v18 + 8)
    {
      memmove(v18, v18 + 8, v17 - (v18 + 8));
    }

    a1[35] = &v18[v19];
    v20 = *(v15 + 16);
    if (v20 && a1[30])
    {
      (**v20)(*(v15 + 16));
      *v20 = a1[33];
      a1[33] = v20;
    }

    v21 = a1[12];
    v22 = *(v15 + 1);
    v23 = vcnt_s8(v21);
    v23.i16[0] = vaddlv_u8(v23);
    if (v23.u32[0] > 1uLL)
    {
      if (v22 >= *&v21)
      {
        v22 %= *&v21;
      }
    }

    else
    {
      v22 &= *&v21 - 1;
    }

    v24 = a1[11];
    v25 = *(v24 + 8 * v22);
    do
    {
      v26 = v25;
      v25 = *v25;
    }

    while (v25 != v15);
    if (v26 == (a1 + 13))
    {
      goto LABEL_47;
    }

    v27 = *(v26 + 1);
    if (v23.u32[0] > 1uLL)
    {
      if (v27 >= *&v21)
      {
        v27 %= *&v21;
      }
    }

    else
    {
      v27 &= *&v21 - 1;
    }

    if (v27 != v22)
    {
LABEL_47:
      if (!*v15)
      {
        goto LABEL_48;
      }

      v28 = *(*v15 + 8);
      if (v23.u32[0] > 1uLL)
      {
        if (v28 >= *&v21)
        {
          v28 %= *&v21;
        }
      }

      else
      {
        v28 &= *&v21 - 1;
      }

      if (v28 != v22)
      {
LABEL_48:
        *(v24 + 8 * v22) = 0;
      }
    }

    v29 = *v15;
    if (*v15)
    {
      v30 = *(v29 + 1);
      if (v23.u32[0] > 1uLL)
      {
        if (v30 >= *&v21)
        {
          v30 %= *&v21;
        }
      }

      else
      {
        v30 &= *&v21 - 1;
      }

      if (v30 != v22)
      {
        *(a1[11] + 8 * v30) = v26;
        v29 = *v15;
      }
    }

    *v26 = v29;
    *v15 = 0;
    --a1[14];
    v31 = *(v15 + 4);
    if (v31 != *(v15 + 6))
    {
      free(v31);
    }

    operator delete(v15);
LABEL_59:
    v32 = v6[1];
    if (v32)
    {
      do
      {
        v33 = v32;
        v32 = *v32;
      }

      while (v32);
    }

    else
    {
      do
      {
        v33 = v6[2];
        v34 = *v33 == v6;
        v6 = v33;
      }

      while (!v34);
    }

    v6 = v33;
  }

  while (v33 != a1 + 23);
LABEL_65:
  v2 = v96;
  (*(*a1 + 168))(&__p, a1, v96);
  v35 = __p;
  v36 = v102 - __p;
  v37 = (v102 - __p) >> 3;
  if (v37 < 1)
  {
    goto LABEL_82;
  }

  v39 = a1[35];
  v38 = a1[36];
  if (v38 - v39 < v36)
  {
    v40 = a1[34];
    v41 = v37 + (&v39[-v40] >> 3);
    if (!(v41 >> 61))
    {
      v42 = v38 - v40;
      v43 = (v38 - v40) >> 2;
      if (v43 > v41)
      {
        v41 = v43;
      }

      if (v42 >= 0x7FFFFFFFFFFFFFF8)
      {
        v44 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v41;
      }

      if (v44)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v44);
      }

      v45 = 8 * (&v39[-v40] >> 3);
      v46 = (v45 + v36);
      v47 = v45;
      do
      {
        v48 = *v35++;
        *v47++ = v48;
        v36 -= 8;
      }

      while (v36);
      memcpy(v46, v39, a1[35] - v39);
      v49 = a1[34];
      v50 = &v46[a1[35] - v39];
      a1[35] = v39;
      v51 = v39 - v49;
      v52 = (v45 - (v39 - v49));
      memcpy(v52, v49, v51);
      v53 = a1[34];
      a1[34] = v52;
      a1[35] = v50;
      a1[36] = 0;
      if (v53)
      {
        operator delete(v53);
      }

      goto LABEL_82;
    }

LABEL_136:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (__p != v102)
  {
    memmove(a1[35], __p, v102 - __p);
  }

  a1[35] = &v39[v36];
LABEL_82:
  if (*(a1 + 86) == 2)
  {
    v54 = a1[34];
    v55 = a1[35];
    while (v54 != v55)
    {
      (*(*a1 + 184))(a1, v95, *v54++);
    }
  }

  v56 = (*(*a1 + 176))(a1, v95);
  v57 = v56;
  v58 = a1[35];
  v99 = v56;
  v100 = v58;
  if (*(a1 + 13) == 1)
  {
    v98[0] = __p;
    v98[1] = v102;
    v59 = a1[34];
    if (v56 != v59)
    {
      while (((*(*a1 + 136))(a1, v96, *v59) & 1) != 0)
      {
        v59 += 8;
LABEL_102:
        if (v59 == v57)
        {
          goto LABEL_89;
        }
      }

      v69 = v57 - 8;
      while (v69 != v59)
      {
        v57 = v69;
        v70 = (*(*a1 + 136))(a1, v96, *v69);
        v69 = v57 - 8;
        if (v70)
        {
          v71 = *v59;
          *v59 = *v57;
          v59 += 8;
          *v57 = v71;
          goto LABEL_102;
        }
      }
    }

    v57 = v59;
LABEL_89:
    v97[0] = a1[34];
    v97[1] = v57;
    (*(*a1 + 120))(a1, &v99);
    (*(*a1 + 112))(a1, v96, v98);
    (*(*a1 + 128))(a1, v96, v97);
    v57 = (*(*a1 + 176))(a1, v95);
    v58 = a1[35];
    v99 = v57;
    v100 = v58;
  }

  v60 = v58 - v57;
  v61 = (v58 - v57) >> 3;
  if (v61 >= 1)
  {
    v63 = a1[38];
    v62 = a1[39];
    if (v62 - v63 >= v60)
    {
      while (v57 != v58)
      {
        v72 = *v57;
        v57 += 8;
        *v63++ = v72;
      }

      a1[38] = v63;
    }

    else
    {
      v64 = a1[37];
      v65 = v61 + ((v63 - v64) >> 3);
      if (v65 >> 61)
      {
        goto LABEL_136;
      }

      v66 = v62 - v64;
      v67 = (v62 - v64) >> 2;
      if (v67 > v65)
      {
        v65 = v67;
      }

      if (v66 >= 0x7FFFFFFFFFFFFFF8)
      {
        v68 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v68 = v65;
      }

      if (v68)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v68);
      }

      v73 = 8 * ((v63 - v64) >> 3);
      v74 = (v73 + v60);
      v75 = v73;
      do
      {
        v76 = *v57;
        v57 += 8;
        *v75++ = v76;
        v60 -= 8;
      }

      while (v60);
      memcpy(v74, v63, a1[38] - v63);
      v77 = a1[37];
      v78 = &v74[a1[38] - v63];
      a1[38] = v63;
      v79 = v63 - v77;
      v80 = (v73 - (v63 - v77));
      memcpy(v80, v77, v79);
      v81 = a1[37];
      a1[37] = v80;
      a1[38] = v78;
      a1[39] = 0;
      if (v81)
      {
        operator delete(v81);
      }
    }
  }

  v82 = v99;
  if (v99 != v100)
  {
    v83 = a1[35];
    v84 = v83 - v100;
    if (v83 != v100)
    {
      memmove(v99, v100, v83 - v100);
    }

    a1[35] = &v82[v84];
  }

  v85 = a1[37];
  v86 = a1[38];
  if (v86 != v85)
  {
    do
    {
      v87 = *v85;
      if (*v85 && a1[30])
      {
        (**v87)(*v85);
        *v87 = a1[33];
        a1[33] = v87;
      }

      ++v85;
    }

    while (v85 != v86);
    v85 = a1[37];
  }

  a1[38] = v85;
  (*(*a1 + 192))(a1);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

LABEL_127:
  v88 = (*(*a1 + 96))(a1, v2);
  v89 = a1[10];
  if (v89)
  {
    v90 = *v88;
    v91 = v88[1];
    if (v89 == a1 + 7)
    {
      v104 = v103;
      (*(*v89 + 24))(v89, v103);
    }

    else
    {
      v104 = (*(*v89 + 16))(v89);
    }

    v92 = 126 - 2 * __clz((v91->i64 - v90) >> 3);
    if (v91 == v90)
    {
      v93 = 0;
    }

    else
    {
      v93 = v92;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::DaVinciTrafficTileData> *,md::MapTileDataRenderable<md::DaVinciTrafficTileData> *)> &,md::MapTileDataRenderable<md::DaVinciTrafficTileData> **,false>(v90, v91, v103, v93, 1);
    std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::DaVinciTrafficTileData> *,md::MapTileDataRenderable<md::DaVinciTrafficTileData> *)>::~__value_func[abi:nn200100](v103);
  }

  return (*(*a1 + 152))(a1, v88, v2);
}

void sub_1B2B00128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::determineZRangeMapData(uint64_t result, md::SceneContext *this)
{
  *(result + 48) = 255;
  if (this)
  {
    v2 = result;
    v3 = *(result + 320);
    v4 = *(result + 328);
    if (v3 == v4)
    {
      goto LABEL_17;
    }

    do
    {
      result = md::SceneContext::layerDataInView(this, *v3);
      v6 = (result + 8);
      v7 = *result;
      if (*result != result + 8)
      {
        v8 = *(v2 + 48);
        v9 = *(v2 + 49);
        do
        {
          FillRect = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          Int32 = gdc::ResourceKey::getInt32(*(FillRect + 16), 2u);
          if (v8 >= Int32)
          {
            v8 = Int32;
          }

          *(v2 + 48) = v8;
          v12 = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          result = gdc::ResourceKey::getInt32(*(v12 + 16), 2u);
          if (v9 <= result)
          {
            v9 = result;
          }

          *(v2 + 49) = v9;
          v13 = v7[1];
          if (v13)
          {
            do
            {
              v14 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v14 = v7[2];
              v15 = *v14 == v7;
              v7 = v14;
            }

            while (!v15);
          }

          v7 = v14;
        }

        while (v14 != v6);
      }

      ++v3;
    }

    while (v3 != v4);
    if (*(v2 + 49) < *(v2 + 48))
    {
LABEL_17:
      *(v2 + 48) = 0;
    }
  }

  return result;
}

double md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::_updateLayerDataInfo(uint64_t a1, md::SceneContext *a2)
{
  std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100]((a1 + 128), a1 + 152);
  v4 = (a1 + 136);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  *(a1 + 128) = a1 + 136;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v5 = *(a1 + 320);
  v6 = *(a1 + 328);
  while (v5 != v6)
  {
    v7 = *v5++;
    v8 = md::SceneContext::layerDataInView(a2, v7);
    std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>((a1 + 128), *v8, v8 + 1);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  *(a1 + 176) = a1 + 184;
  v9 = (a1 + 176);
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  v10 = (a1 + 208);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 208));
  *(a1 + 200) = a1 + 208;
  v11 = (a1 + 200);
  *v10 = 0;
  v11[2] = 0;
  v12 = *(v11 - 6);
  v13 = *v9;
  v22 = *(v11 - 9);
  v20 = v12;
  v21 = v4;
  v18.n128_u64[1] = v13;
  v19 = v11 - 5;
  v18.n128_u64[0] = v9;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18);
  v14 = *(v11 - 9);
  v15 = *v11;
  v22 = *(v11 - 6);
  v20 = v14;
  v21 = v11 - 5;
  v18.n128_u64[1] = v15;
  v19 = v4;
  v18.n128_u64[0] = v11;
  *&result = std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18).n128_u64[0];
  return result;
}

void md::DaVinciTrafficRenderLayer::updateWithContext(uint64_t a1, md::BaseMapTileDataRenderable ***a2, uint64_t a3)
{
  v5 = *(a1 + 34);
  v6 = *(a3 + 8);
  v7 = md::LayoutContext::get<md::ElevationContext>(v6);
  v8 = md::LayoutContext::get<md::SettingsContext>(v6);
  if (v8)
  {
    v9 = v8[6];
  }

  else
  {
    v9 = 0;
  }

  v10 = md::LayoutContext::get<md::CameraContext>(v6);
  v11 = v10;
  if (v9 && v10)
  {
    v12 = md::DaVinciGroundSettings::valueForZoomLevel<float>(v9, 6, fmaxf(*(v10 + 3080) + *(v10 + 3076), 1.0));
  }

  else
  {
    v12 = 0.0;
    v13 = 0.0;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  v13 = fmin(*(v11 + 3776), 0.0);
LABEL_9:
  if (v7)
  {
    v14 = v7[4];
    v15 = v7[5];
  }

  else
  {
    v14 = 1.0;
    v15 = 1.0;
  }

  v16 = *a2;
  v17 = a2[1];
  if (*a2 != v17)
  {
    v18 = v15 * v12;
    do
    {
      v19 = *v16;
      v20 = *(*v16 + 392);
      md::BaseMapTileDataRenderable::adjustZScale(*v16, v14, v15);
      if (v5 != 47)
      {
        gdc::Tiled::unitsPerMeter((v20 + 168));
        v22 = v18 * v21;
        ggl::ConstantDataTyped<ggl::Grid::Style>::write(v25, *(v19 + 240));
        *(v26 + 336) = v22;
        ggl::BufferMemory::~BufferMemory(v25);
      }

      gdc::Tiled::unitsPerMeter((v20 + 168));
      v24 = v23;
      ggl::ConstantDataTyped<ggl::Grid::Style>::write(v25, *(v19 + 240));
      *(v26 + 352) = v24 * v13;
      ggl::BufferMemory::~BufferMemory(v25);
      ++v16;
    }

    while (v16 != v17);
  }

  md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::updateWithContext(v10, a2, a3);
}

void md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::_determineEnteringRenderables(uint64_t a1@<X0>, md::LayoutContext *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v14 = gdc::Context::get<md::GeometryContext>(*(a2 + 1));
  if (v14)
  {
    v5 = *(a1 + 192);
    if (v5)
    {
      if (!(v5 >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v5);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if ((*(*a1 + 208))(a1))
    {
      v6 = *(a1 + 34);
    }

    else
    {
      v6 = -1;
    }

    v7 = *(a1 + 176);
    if (v7 != a1 + 184)
    {
      v13 = v6;
      v9 = *(v7 + 32);
      v8 = *(v7 + 40);
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = *(v9 + 172);
      v16[0] = *(v9 + 168);
      v18 = *(v9 + 184);
      v19 = *(v9 + 192);
      v10 = *(v9 + 608);
      v11 = *(v9 + 616);
      v12 = md::LayoutContext::cameraType(a2);
      gdc::ToCoordinateSystem(v12);
      md::GeometryContext::transformConstantData(v15, v14, v16, v12, v13, v10, v11);
    }
  }
}

void sub_1B2B0090C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v16)
  {
    *(v15 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::_updateSubTileMaskForRenderable(uint64_t a1, int8x8_t **a2, uint64_t a3)
{
  v5 = *(a3 + 392);
  v6 = *(a3 + 400);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a3 + 56);
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = md::SceneContext::subtileClipMask(*a2, v5, v7);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v8 = md::SceneContext::subtileClipMask(*a2, v5, *(a3 + 56));
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v8[4] == v8[3] * v8[3])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

LABEL_8:
  md::BaseMapTileDataRenderable::setSubtileClipMask(a3, v9);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void sub_1B2B00A28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::_determineExitingRenderables(void *a1)
{
  v2 = a1[34];
  v1 = a1[35];
  if (v2 != v1)
  {
    while ((md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(a1, *v2) & 1) != 0)
    {
      ++v2;
LABEL_4:
      if (v2 == v1)
      {
        return v1;
      }
    }

    v4 = v1 - 1;
    while (v4 != v2)
    {
      v1 = v4;
      v5 = *v4--;
      if (md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(a1, v5))
      {
        v6 = *v2;
        *v2++ = *v1;
        *v1 = v6;
        goto LABEL_4;
      }
    }
  }

  return v2;
}

void md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::updateWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = md::LayoutContext::get<md::CameraContext>(*(a3 + 8));
  v6 = *a2;
  v5 = a2[1];
  if (v6 != v5)
  {
    v7 = v4;
    v8 = v4 + 808;
    do
    {
      v9 = 0;
      v10 = *v6;
      v11 = v7[471] * v7[173] / (v7[171] * (*(*v6 + 80) - *(*v6 + 64)));
      *(*v6 + 376) = v11;
      v12 = v8;
      do
      {
        v13 = 0;
        v14 = v10 + 96;
        do
        {
          v15 = 0;
          v16 = 0.0;
          v17 = v12;
          do
          {
            v18 = *v17;
            v17 += 4;
            v16 = v16 + *(v14 + v15) * v18;
            v15 += 8;
          }

          while (v15 != 32);
          *&v26[4 * v13++ + v9] = v16;
          v14 += 32;
        }

        while (v13 != 4);
        ++v9;
        ++v12;
      }

      while (v9 != 4);
      v19 = 0;
      v20 = v26;
      do
      {
        v22 = *v20;
        v21 = v20[1];
        v20 += 2;
        v28[v19++] = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v21);
      }

      while (v19 != 4);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(v26, *(v10 + 224), 1);
      v23 = v27;
      v24 = v28[1];
      *v27 = v28[0];
      v23[1] = v24;
      v25 = v28[3];
      v23[2] = v28[2];
      v23[3] = v25;
      *(v23 + 16) = *(v10 + 376);
      ggl::BufferMemory::~BufferMemory(v26);
      ++v6;
    }

    while (v6 != v5);
  }
}

uint64_t gss::RenderStyle<gss::PropertyID>::hasValueForKeyAtZAtEnd(uint64_t a1, unsigned __int16 a2, unsigned int a3, unsigned int a4)
{
  v4 = *(a1 + 16 * a4 + 16);
  if (!v4)
  {
    return 0;
  }

  v9 = *(v4 + 72);
  if (!v9 || (v10 = *v9 + 120 * *(v9 + a3 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v10, a2) == *(v10 + 12)))
  {
    v12 = a1 + 16 * a4;
    if (!*(v12 + 56))
    {
      return 0;
    }

    v13 = *(v12 + 48);
    v14 = 8 * *(v12 + 56);
    v15 = a3;
    while (1)
    {
      v16 = *(*v13 + 72);
      if (v16)
      {
        v17 = *v16 + 120 * *(v16 + v15 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v17, a2) != *(v17 + 12))
        {
          break;
        }
      }

      result = 0;
      v13 += 8;
      v14 -= 8;
      if (!v14)
      {
        return result;
      }
    }
  }

  return 1;
}

uint16x4_t *gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(uint16x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, _BYTE *a6, __n128 a7, double a8)
{
  v9 = a4;
  if (a5 == 2)
  {
    v13 = *a2;
    if (*a2)
    {
      v14 = *v13;
      LODWORD(v13) = *v13 == 1.0;
      if (*(a2 + 10) == 1 && v14 != 0.0 && v14 != 1.0)
      {
        goto LABEL_12;
      }
    }

    v16 = a2 + v13;
  }

  else
  {
    v16 = a2 + a5;
  }

  v17 = *(v16 + 11);
  v14 = 0.0;
  if (v17 != 2)
  {
    result = gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(a2, a3, v9, v17, a6);
    *a1 = *result;
    return result;
  }

LABEL_12:
  v23 = v14;
  v25 = 1;
  v24 = 1;
  v18 = *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(a2, a3, v9, 0, &v25);
  result = gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(a2, a3, v9, 1u, &v24);
  v20 = *result;
  if (a6)
  {
    *a6 = (v25 | v24) & 1;
  }

  v21 = vdupq_n_s32(0x37800080u);
  v22 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v18)), v21);
  *a1 = vmovn_s32(vcvtq_u32_f32(vmulq_f32(vmlaq_n_f32(v22, vmlaq_f32(vnegq_f32(v22), v21, vcvtq_f32_u32(vmovl_u16(v20))), v23), vdupq_n_s32(0x477FFF00u))));
  return result;
}

uint64_t *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, _BYTE *a5)
{
  v6 = a2;
  v7 = *(a1 + 16 * a4 + 16);
  if (v7)
  {
    v9 = a1 + 16 * a4;
    if (*(v9 + 56))
    {
      v10 = *(v9 + 48);
      v11 = 8 * *(v9 + 56);
      while (1)
      {
        v12 = *(*v10 + 72);
        if (v12)
        {
          v15 = *v12;
          v13 = v12 + 2;
          v14 = v15;
          v16 = v15 + 120 * *(v13 + a3);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v16, v6) != *(v16 + 12))
          {
            break;
          }
        }

        v10 += 8;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_7;
        }
      }

      if (a3 >= 0x17)
      {
        v24 = 23;
      }

      else
      {
        v24 = a3;
      }

      v25 = v14 + 120 * *(v13 + v24);
      v21 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v25 + 72), v6);
      if (v21 != *(v25 + 84))
      {
        v22 = *(v25 + 72);
        v23 = *(v25 + 80);
        return (v22 + v23 + 8 * v21);
      }

      return &gss::PropertySetValueHelper<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

LABEL_7:
    v17 = *(v7 + 72);
    if (v17)
    {
      v18 = a3 >= 0x17 ? 23 : a3;
      v19 = *v17 + 120 * *(v17 + v18 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v19, v6) != *(v19 + 12))
      {
        v21 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v19 + 72), v6);
        if (v21 != *(v19 + 84))
        {
          v22 = *(v19 + 72);
          v23 = *(v19 + 80);
          return (v22 + v23 + 8 * v21);
        }

        return &gss::PropertySetValueHelper<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
      }
    }
  }

  if (a5)
  {
    *a5 = 0;
  }

  return gss::defaultValueForKey<gss::PropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v6);
}

unsigned __int8 *std::__hash_table<std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::__unordered_map_hasher<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,md::FoundationKeyHash,std::equal_to<md::FoundationKey>,true>,std::__unordered_map_equal<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::equal_to<md::FoundationKey>,md::FoundationKeyHash,true>,std::allocator<std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>>>::find<md::FoundationKey>(void *a1, geo::QuadTile *this)
{
  v4 = md::FoundationKeyHash::operator()(this);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = *(i + 1);
    if (v12 == v6)
    {
      if (geo::QuadTile::operator==(i + 16, this) && *(i + 12) == *(this + 8))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

unint64_t md::OverlayKeyHash::operator()(geo::QuadTile *this)
{
  if (*(this + 24) == 1)
  {
    geo::QuadTile::computeHash(this);
    *(this + 24) = 0;
  }

  v2 = ((*(this + 2) << 6) + (*(this + 2) >> 2) + *(this + 16) - 0x61C8864680B583EBLL) ^ *(this + 2);
  result = (*(this + 9) + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583EBLL) ^ v2;
  if (*(this + 48) == 1)
  {
    result ^= (result << 6) - 0x61C8864680B583EBLL + (result >> 2) + *(this + 5);
  }

  return result;
}

BOOL md::OverlayKey::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[24] == 1)
  {
    v9 = a2;
    v10 = a1;
    geo::QuadTile::computeHash(a1);
    a2 = v9;
    a1 = v10;
    v10[24] = 0;
  }

  v2 = *(a1 + 2);
  if (a2[24])
  {
    v7 = (a2[1] + ((*a2 - 0x61C8864680B583EBLL) << 6) + ((*a2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*a2 - 0x61C8864680B583EBLL);
    v8 = (*(a2 + 1) + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583EBLL) ^ v7;
    v3 = (*(a2 + 2) + (v8 << 6) + (v8 >> 2) - 0x61C8864680B583EBLL) ^ v8;
    *(a2 + 2) = v3;
    a2[24] = 0;
  }

  else
  {
    v3 = *(a2 + 2);
  }

  if (v2 != v3 || *a1 != *a2 || a1[1] != a2[1] || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || *(a1 + 16) != *(a2 + 16) || *(a1 + 9) != *(a2 + 9))
  {
    return 0;
  }

  v4 = a1[48];
  v5 = v4 == a2[48];
  if (v4 == a2[48] && a1[48])
  {
    return *(a1 + 5) == *(a2 + 5);
  }

  return v5;
}

unsigned __int8 *gdc::LayerDataRequestKey::LayerDataRequestKey(unsigned __int8 *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = a3;
  *a1 = a2;
  v9 = (a1 + 8);
  v11[0] = v14;
  v11[1] = v14;
  v12 = v14;
  v13 = 32;
  geo::small_vector_base<unsigned char>::append<unsigned char const*>(v11, *a4, *(a4 + 8));
  v14[4] = *(a4 + 64);
  gdc::LayerDataKey::LayerDataKey(v9, v7, v11);
  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  *(a1 + 24) = a5;
  a1[100] = 1;
  *(a1 + 13) = (*(a1 + 11) + ((*a1 - 0x61C8864680B583EBLL) << 6) + ((*a1 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*a1 - 0x61C8864680B583EBLL);
  return a1;
}

unsigned __int16 *gdc::LayerDataKey::LayerDataKey(unsigned __int16 *a1, unsigned __int16 a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 1) = a1 + 20;
  *(a1 + 2) = a1 + 20;
  *(a1 + 3) = a1 + 20;
  *(a1 + 4) = 32;
  geo::small_vector_base<unsigned char>::append<unsigned char const*>(a1 + 1, *a3, *(a3 + 8));
  v5 = *(a3 + 64);
  v6 = (v5 + ((*a1 - 0x61C8864680B583EBLL) << 6) + ((*a1 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*a1 - 0x61C8864680B583EBLL);
  *(a1 + 9) = v5;
  *(a1 + 10) = v6;
  return a1;
}

void md::IdentifiedResourceLogic::runBeforeLayoutAtVariableRate(md::LayoutContext const&,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>::ResolvedDependencies const&,md::IdentifiedResourceContext &)::$_0::operator()(uint64_t a1, void *a2, std::__shared_weak_count *a3)
{
  v20[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a2)
  {
    if ((*(a1 + 320) & 1) == 0)
    {
      v20[0] = 0;
      v20[1] = 0;
      v19 = v20;
      v6 = a2[141];
      if (v6 != a2 + 142)
      {
        if (v19 != v20)
        {
          v7 = v20;
          do
          {
            v8 = v7[2];
            v9 = *v8 == v7;
            v7 = v8;
          }

          while (v9);
        }

        operator new();
      }

      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v20[0]);
    }

    if ((*(a1 + 192) & 1) == 0)
    {
      v10 = a2[144];
      v11 = a2 + 145;
      if (v10 != a2 + 145)
      {
        do
        {
          v12 = v10[4];
          if (!std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 152), v12) && (*(a1 + 216) & v10[5]) != 0)
          {
            v19 = v12;
            v20[0] = 0;
            gdc::GenericKey::GenericKey(v15, &v19, 2);
            gdc::LayerDataRequestKey::LayerDataRequestKey(v16, 0, 55, v15, -1073741827);
            if (v15[0] != v15[2])
            {
              free(v15[0]);
            }

            gdc::LayerDataCollector::addDataKey(*(a1 + 120), v16);
            if (v17 != v18)
            {
              free(v17);
            }
          }

          v13 = v10[1];
          if (v13)
          {
            do
            {
              v14 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v14 = v10[2];
              v9 = *v14 == v10;
              v10 = v14;
            }

            while (!v9);
          }

          v10 = v14;
        }

        while (v14 != v11);
      }
    }
  }

  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }
}

void sub_1B2B0180C(_Unwind_Exception *a1)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 - 104));
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<md::components::RenderableInjected>(uint64_t a1)
{
  v3 = 0x2D19D14B1A606548;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x2D19D14B1A606548uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void md::PuckStyleInfo::update(uint64_t a1, void **a2, uint64_t a3, id *a4, uint64_t *a5, uint64_t *a6, float a7)
{
  v374[1] = *MEMORY[0x1E69E9840];
  {
    geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(md::PuckStyleInfo::update(gdc::ServiceLocator const&,float,md::NavigationContext const&,md::SharedResourcesContext const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> &)::kDefaultArrowColorLinear, &md::kDefaultArrowColor);
  }

  {
    geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(md::PuckStyleInfo::update(gdc::ServiceLocator const&,float,md::NavigationContext const&,md::SharedResourcesContext const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> &)::kDefaultArrowColorStaleLinear, &md::kDefaultArrowColorStale);
  }

  {
    geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(md::PuckStyleInfo::update(gdc::ServiceLocator const&,float,md::NavigationContext const&,md::SharedResourcesContext const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> &)::kDefaultCircleColorLinear, &md::TransitLine::_resolveStyle(int,std::shared_ptr<gss::FeatureQueryImpl<gss::PropertyID>> &,md::TransitLine::ResolvedStyle &)::kZeroBrightnessColor);
  }

  v12 = *a6;
  v13 = a6[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v360, v12, v13);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v353 = a5;
  v14 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(*a2, a2[1]);
  v15 = v363;
  if ((v363 & 1) == 0)
  {
    *(a1 + 8) = 1065353216;
    goto LABEL_72;
  }

  v16 = a7;
  v17 = v360[3];
  if (a7 >= 0x17)
  {
    v18 = 23;
  }

  else
  {
    v18 = v16;
  }

  v19 = *v17;
  if (*v17 && (v20 = *v19, LODWORD(v19) = *v19 == 1.0, *(v17 + 10) == 1) && (v20 != 0.0 ? (v21 = v20 == 1.0) : (v21 = 1), !v21) || (v22 = *(v17 + v19 + 11), v22 == 2))
  {
    v23 = *(v17 + 16);
    if (v23)
    {
      v24 = *(v23 + 72);
      if (v24)
      {
        v25 = *v24 + 120 * *(v24 + v18 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v25, 0xF7u) != *(v25 + 12))
        {
          goto LABEL_34;
        }
      }

      if (*(v17 + 56))
      {
        v26 = *(v17 + 48);
        v27 = 8 * *(v17 + 56);
        v22 = 1;
        while (1)
        {
          v28 = *(*v26 + 72);
          if (v28)
          {
            v29 = *v28 + 120 * *(v28 + v18 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v29, 0xF7u) != *(v29 + 12))
            {
              goto LABEL_34;
            }
          }

          v26 += 8;
          v27 -= 8;
          if (!v27)
          {
            goto LABEL_31;
          }
        }
      }
    }

    v22 = 1;
  }

LABEL_31:
  v30 = *(v17 + 16 * v22 + 16);
  if (!v30)
  {
    goto LABEL_41;
  }

  v31 = *(v30 + 72);
  if (v31)
  {
    v32 = *v31 + 120 * *(v31 + v18 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v32, 0xF7u) != *(v32 + 12))
    {
      goto LABEL_34;
    }
  }

  v34 = v17 + 16 * v22;
  if (!*(v34 + 56))
  {
LABEL_41:
    *(a1 + 8) = 1065353216;
    v15 = 1;
    goto LABEL_42;
  }

  v35 = *(v34 + 48);
  v36 = 8 * *(v34 + 56);
  while (1)
  {
    v37 = *(*v35 + 72);
    if (v37)
    {
      v38 = *v37 + 120 * *(v37 + v18 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v38, 0xF7u) != *(v38 + 12))
      {
        break;
      }
    }

    v35 += 8;
    v36 -= 8;
    if (!v36)
    {
      goto LABEL_41;
    }
  }

LABEL_34:
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v17, 247, v18, 2u, 0);
  v15 = v363;
  *(a1 + 8) = v33;
  if (v15)
  {
LABEL_42:
    v39 = v360[3];
    if (v16 >= 0x17)
    {
      v40 = 23;
    }

    else
    {
      v40 = v16;
    }

    v41 = *v39;
    if (*v39 && (v42 = *v41, LODWORD(v41) = *v41 == 1.0, *(v39 + 10) == 1) && (v42 != 0.0 ? (v43 = v42 == 1.0) : (v43 = 1), !v43) || (v44 = *(v39 + v41 + 11), v44 == 2))
    {
      v45 = *(v39 + 16);
      if (v45)
      {
        v46 = *(v45 + 72);
        if (v46)
        {
          v47 = *v46 + 120 * *(v46 + v40 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v47, 0x18Fu) != *(v47 + 12))
          {
            goto LABEL_66;
          }
        }

        if (*(v39 + 56))
        {
          v50 = *(v39 + 48);
          v51 = 8 * *(v39 + 56);
          while (1)
          {
            v52 = *(*v50 + 72);
            if (v52)
            {
              v53 = *v52 + 120 * *(v52 + v40 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v53, 0x18Fu) != *(v53 + 12))
              {
                goto LABEL_66;
              }
            }

            v50 += 8;
            v44 = 1;
            v51 -= 8;
            if (!v51)
            {
              goto LABEL_63;
            }
          }
        }
      }

      v44 = 1;
    }

LABEL_63:
    v54 = *(v39 + 16 * v44 + 16);
    if (!v54)
    {
      goto LABEL_72;
    }

    v55 = *(v54 + 72);
    if (!v55 || (v56 = *v55 + 120 * *(v55 + v40 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v56, 0x18Fu) == *(v56 + 12)))
    {
      v58 = v39 + 16 * v44;
      if (!*(v58 + 56))
      {
        goto LABEL_72;
      }

      v59 = *(v58 + 48);
      v60 = 8 * *(v58 + 56);
      while (1)
      {
        v61 = *(*v59 + 72);
        if (v61)
        {
          v62 = *v61 + 120 * *(v61 + v40 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v62, 0x18Fu) != *(v62 + 12))
          {
            break;
          }
        }

        v59 += 8;
        v60 -= 8;
        if (!v60)
        {
          goto LABEL_72;
        }
      }
    }

LABEL_66:
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v372, v39, 399, v40, 2u, 0, v48, v49);
    v364 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v372)), vdupq_n_s32(0x37800080u));
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v360[3], 503, v40, 2u, 0);
    md::AccessibilityHelper::luminanceAdjustedColor(&v372, *v14, &v364, v57);
    *(a1 + 16) = v372;
    v15 = v363;
    goto LABEL_74;
  }

LABEL_72:
  for (i = 0; i != 4; ++i)
  {
    *(a1 + 16 + i * 4) = md::PuckStyleInfo::update(gdc::ServiceLocator const&,float,md::NavigationContext const&,md::SharedResourcesContext const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> &)::kDefaultCircleColorLinear[i];
  }

LABEL_74:
  if (v15)
  {
    v64 = v360[3];
    if (a7 >= 0x17)
    {
      v65 = 23;
    }

    else
    {
      v65 = a7;
    }

    v66 = *v64;
    if (*v64 && (v67 = *v66, LODWORD(v66) = *v66 == 1.0, *(v64 + 10) == 1) && (v67 != 0.0 ? (v68 = v67 == 1.0) : (v68 = 1), !v68) || (v69 = *(v64 + v66 + 11), v69 == 2))
    {
      v70 = *(v64 + 16);
      if (v70)
      {
        v71 = *(v70 + 72);
        if (v71)
        {
          v72 = *v71 + 120 * *(v71 + v65 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v72, 0xF9u) != *(v72 + 12))
          {
            goto LABEL_99;
          }
        }

        if (*(v64 + 56))
        {
          v75 = *(v64 + 48);
          v76 = 8 * *(v64 + 56);
          while (1)
          {
            v77 = *(*v75 + 72);
            if (v77)
            {
              v78 = *v77 + 120 * *(v77 + v65 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v78, 0xF9u) != *(v78 + 12))
              {
                goto LABEL_99;
              }
            }

            v75 += 8;
            v69 = 1;
            v76 -= 8;
            if (!v76)
            {
              goto LABEL_96;
            }
          }
        }
      }

      v69 = 1;
    }

LABEL_96:
    v79 = *(v64 + 16 * v69 + 16);
    if (v79)
    {
      v80 = *(v79 + 72);
      if (v80)
      {
        v81 = *v80 + 120 * *(v80 + v65 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v81, 0xF9u) != *(v81 + 12))
        {
LABEL_99:
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v372, v64, 249, v65, 2u, 0, v73, v74);
          v364 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v372)), vdupq_n_s32(0x37800080u));
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v360[3], 502, v65, 2u, 0);
          md::AccessibilityHelper::luminanceAdjustedColor(&v372, *v14, &v364, v82);
          *(a1 + 48) = v372;
          v15 = v363;
          goto LABEL_107;
        }
      }

      v83 = v64 + 16 * v69;
      if (*(v83 + 56))
      {
        v84 = *(v83 + 48);
        v85 = 8 * *(v83 + 56);
        do
        {
          v86 = *(*v84 + 72);
          if (v86)
          {
            v87 = *v86 + 120 * *(v86 + v65 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v87, 0xF9u) != *(v87 + 12))
            {
              goto LABEL_99;
            }
          }

          v84 += 8;
          v85 -= 8;
        }

        while (v85);
      }
    }
  }

  for (j = 0; j != 4; ++j)
  {
    *(a1 + 48 + j * 4) = md::PuckStyleInfo::update(gdc::ServiceLocator const&,float,md::NavigationContext const&,md::SharedResourcesContext const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> &)::kDefaultArrowColorStaleLinear[j];
  }

LABEL_107:
  if (v15)
  {
    v89 = v360[3];
    if (a7 >= 0x17)
    {
      v90 = 23;
    }

    else
    {
      v90 = a7;
    }

    v91 = *v89;
    if (*v89 && (v92 = *v91, LODWORD(v91) = *v91 == 1.0, *(v89 + 10) == 1) && (v92 != 0.0 ? (v93 = v92 == 1.0) : (v93 = 1), !v93) || (v94 = *(v89 + v91 + 11), v94 == 2))
    {
      v95 = *(v89 + 16);
      if (v95)
      {
        v96 = *(v95 + 72);
        if (v96)
        {
          v97 = *v96 + 120 * *(v96 + v90 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v97, 0xF8u) != *(v97 + 12))
          {
            goto LABEL_132;
          }
        }

        if (*(v89 + 56))
        {
          v100 = *(v89 + 48);
          v101 = 8 * *(v89 + 56);
          while (1)
          {
            v102 = *(*v100 + 72);
            if (v102)
            {
              v103 = *v102 + 120 * *(v102 + v90 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v103, 0xF8u) != *(v103 + 12))
              {
                goto LABEL_132;
              }
            }

            v100 += 8;
            v94 = 1;
            v101 -= 8;
            if (!v101)
            {
              goto LABEL_129;
            }
          }
        }
      }

      v94 = 1;
    }

LABEL_129:
    v104 = *(v89 + 16 * v94 + 16);
    if (v104)
    {
      v105 = *(v104 + 72);
      if (v105)
      {
        v106 = *v105 + 120 * *(v105 + v90 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v106, 0xF8u) != *(v106 + 12))
        {
LABEL_132:
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v372, v89, 248, v90, 2u, 0, v98, v99);
          v364 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v372)), vdupq_n_s32(0x37800080u));
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v360[3], 501, v90, 2u, 0);
          md::AccessibilityHelper::luminanceAdjustedColor(&v372, *v14, &v364, v107);
          *(a1 + 32) = v372;
          v15 = v363;
          goto LABEL_140;
        }
      }

      v108 = v89 + 16 * v94;
      if (*(v108 + 56))
      {
        v109 = *(v108 + 48);
        v110 = 8 * *(v108 + 56);
        do
        {
          v111 = *(*v109 + 72);
          if (v111)
          {
            v112 = *v111 + 120 * *(v111 + v90 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v112, 0xF8u) != *(v112 + 12))
            {
              goto LABEL_132;
            }
          }

          v109 += 8;
          v110 -= 8;
        }

        while (v110);
      }
    }
  }

  for (k = 0; k != 4; ++k)
  {
    *(a1 + 32 + k * 4) = md::PuckStyleInfo::update(gdc::ServiceLocator const&,float,md::NavigationContext const&,md::SharedResourcesContext const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> &)::kDefaultArrowColorLinear[k];
  }

LABEL_140:
  if ((v15 & 1) == 0)
  {
    *(a1 + 12) = 1065353216;
    goto LABEL_229;
  }

  v114 = a7;
  v115 = v360[3];
  if (a7 >= 0x17)
  {
    v116 = 23;
  }

  else
  {
    v116 = v114;
  }

  v117 = *v115;
  if (!*v115 || (v118 = *v117, LODWORD(v117) = *v117 == 1.0, *(v115 + 10) != 1) || (v118 != 0.0 ? (v119 = v118 == 1.0) : (v119 = 1), v119))
  {
    v120 = *(v115 + v117 + 11);
    if (v120 != 2)
    {
LABEL_163:
      v128 = *(v115 + 16 * v120 + 16);
      if (v128)
      {
        v129 = *(v128 + 72);
        if (v129)
        {
          v130 = *v129 + 120 * *(v129 + v116 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v130, 0xF6u) != *(v130 + 12))
          {
            goto LABEL_166;
          }
        }

        v132 = v115 + 16 * v120;
        if (*(v132 + 56))
        {
          v133 = *(v132 + 48);
          v134 = 8 * *(v132 + 56);
          do
          {
            v135 = *(*v133 + 72);
            if (v135)
            {
              v136 = *v135 + 120 * *(v135 + v116 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v136, 0xF6u) != *(v136 + 12))
              {
                goto LABEL_166;
              }
            }

            v133 += 8;
            v134 -= 8;
          }

          while (v134);
        }
      }

      *(a1 + 12) = 1065353216;
      if (v15)
      {
        goto LABEL_174;
      }

LABEL_229:
      v173 = 0;
      goto LABEL_230;
    }
  }

  v121 = *(v115 + 16);
  if (!v121)
  {
    goto LABEL_162;
  }

  v122 = *(v121 + 72);
  if (v122)
  {
    v123 = *v122 + 120 * *(v122 + v116 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v123, 0xF6u) != *(v123 + 12))
    {
      goto LABEL_166;
    }
  }

  if (!*(v115 + 56))
  {
LABEL_162:
    v120 = 1;
    goto LABEL_163;
  }

  v124 = *(v115 + 48);
  v125 = 8 * *(v115 + 56);
  while (1)
  {
    v126 = *(*v124 + 72);
    if (v126)
    {
      v127 = *v126 + 120 * *(v126 + v116 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v127, 0xF6u) != *(v127 + 12))
      {
        break;
      }
    }

    v124 += 8;
    v120 = 1;
    v125 -= 8;
    if (!v125)
    {
      goto LABEL_163;
    }
  }

LABEL_166:
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v115, 246, v116, 2u, 0);
  v15 = v363;
  *(a1 + 12) = v131;
  if ((v15 & 1) == 0)
  {
    goto LABEL_229;
  }

LABEL_174:
  v137 = v360[3];
  if (v114 >= 0x17)
  {
    v138 = 23;
  }

  else
  {
    v138 = v114;
  }

  v139 = *v137;
  if (!*v137)
  {
    v141 = 0;
    goto LABEL_184;
  }

  v140 = *v139;
  v141 = *v139 == 1.0;
  if (*(v137 + 10) != 1 || (v140 != 0.0 ? (v142 = v140 == 1.0) : (v142 = 1), v142))
  {
LABEL_184:
    v143 = *(v137 + v141 + 11);
    if (v143 != 2)
    {
      goto LABEL_195;
    }
  }

  v144 = *(v137 + 16);
  if (v144)
  {
    v145 = *(v144 + 72);
    if (v145)
    {
      v146 = *v145 + 120 * *(v145 + v138 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v146, 0xFAu) != *(v146 + 12))
      {
        goto LABEL_198;
      }
    }

    if (*(v137 + 56))
    {
      v147 = *(v137 + 48);
      v148 = 8 * *(v137 + 56);
      v143 = 1;
      while (1)
      {
        v149 = *(*v147 + 72);
        if (v149)
        {
          v150 = *v149 + 120 * *(v149 + v138 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v150, 0xFAu) != *(v150 + 12))
          {
            goto LABEL_198;
          }
        }

        v147 += 8;
        v148 -= 8;
        if (!v148)
        {
          goto LABEL_195;
        }
      }
    }
  }

  v143 = 1;
LABEL_195:
  v151 = *(v137 + 16 * v143 + 16);
  if (!v151)
  {
    goto LABEL_208;
  }

  v152 = *(v151 + 72);
  if (v152)
  {
    v153 = *v152 + 120 * *(v152 + v138 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v153, 0xFAu) != *(v153 + 12))
    {
LABEL_198:
      v154 = fminf(fmaxf(a7, 0.0), 23.0);
      if (v139)
      {
        v155 = *v139;
        v156 = *v139 == 1.0;
        if (*(v137 + 10) == 1 && v155 != 0.0 && v155 != 1.0)
        {
          goto LABEL_457;
        }
      }

      else
      {
        v156 = 0;
      }

      v158 = *(v137 + v156 + 11);
      v155 = 0.0;
      if (v158 != 2)
      {
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v137, 250, v158, 0, v154);
LABEL_207:
        *a1 = v159;
        goto LABEL_208;
      }

LABEL_457:
      v364.i8[0] = 1;
      LOBYTE(v372) = 1;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v137, 250, 0, &v364, v154);
      v350 = v349;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v137, 250, 1, &v372, v154);
      v159 = v350 + ((v351 - v350) * v155);
      goto LABEL_207;
    }
  }

  v188 = v137 + 16 * v143;
  if (*(v188 + 56))
  {
    v189 = *(v188 + 48);
    v190 = 8 * *(v188 + 56);
    do
    {
      v191 = *(*v189 + 72);
      if (v191)
      {
        v192 = *v191 + 120 * *(v191 + v138 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v192, 0xFAu) != *(v192 + 12))
        {
          goto LABEL_198;
        }
      }

      v189 += 8;
      v190 -= 8;
    }

    while (v190);
  }

LABEL_208:
  if ((v15 & 1) == 0)
  {
    goto LABEL_229;
  }

  v160 = v360[3];
  if (v114 >= 0x17)
  {
    v161 = 23;
  }

  else
  {
    v161 = v114;
  }

  v162 = *v160;
  if (*v160 && (v163 = *v162, LODWORD(v162) = *v162 == 1.0, *(v160 + 10) == 1) && (v163 != 0.0 ? (v164 = v163 == 1.0) : (v164 = 1), !v164) || (v165 = *(v160 + v162 + 11), v165 == 2))
  {
    v166 = *(v160 + 16);
    if (v166)
    {
      v167 = *(v166 + 72);
      if (v167)
      {
        v168 = *v167 + 120 * *(v167 + v161 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v168, 0xFBu) != *(v168 + 12))
        {
          goto LABEL_417;
        }
      }

      if (*(v160 + 56))
      {
        v169 = *(v160 + 48);
        v170 = 8 * *(v160 + 56);
        while (1)
        {
          v171 = *(*v169 + 72);
          if (v171)
          {
            v172 = *v171 + 120 * *(v171 + v161 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v172, 0xFBu) != *(v172 + 12))
            {
              break;
            }
          }

          v169 += 8;
          v165 = 1;
          v170 -= 8;
          if (!v170)
          {
            goto LABEL_414;
          }
        }

LABEL_417:
        gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v160, 251, v161, 2u, 0);
        v316 = v363;
        *(a1 + 4) = v317;
        v173 = 0;
        if ((v316 & 1) == 0)
        {
          goto LABEL_230;
        }

        goto LABEL_425;
      }
    }

    v165 = 1;
  }

LABEL_414:
  v313 = *(v160 + 16 * v165 + 16);
  if (v313)
  {
    v314 = *(v313 + 72);
    if (v314)
    {
      v315 = *v314 + 120 * *(v314 + v161 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v315, 0xFBu) != *(v315 + 12))
      {
        goto LABEL_417;
      }
    }

    v318 = v160 + 16 * v165;
    if (*(v318 + 56))
    {
      v319 = *(v318 + 48);
      v320 = 8 * *(v318 + 56);
      do
      {
        v321 = *(*v319 + 72);
        if (v321)
        {
          v322 = *v321 + 120 * *(v321 + v161 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v322, 0xFBu) != *(v322 + 12))
          {
            goto LABEL_417;
          }
        }

        v319 += 8;
        v320 -= 8;
      }

      while (v320);
    }
  }

  v173 = 0;
  if ((v15 & 1) == 0)
  {
    goto LABEL_230;
  }

LABEL_425:
  v323 = v360[3];
  if (v114 >= 0x17)
  {
    v324 = 23;
  }

  else
  {
    v324 = v114;
  }

  v325 = *v323;
  if (*v323 && (v326 = *v325, LODWORD(v325) = *v325 == 1.0, *(v323 + 10) == 1) && (v326 != 0.0 ? (v327 = v326 == 1.0) : (v327 = 1), !v327) || (v328 = *(v323 + v325 + 11), v328 == 2))
  {
    v329 = *(v323 + 16);
    if (v329)
    {
      v330 = *(v329 + 72);
      if (v330)
      {
        v331 = *v330 + 120 * *(v330 + v324 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v331, 0x1B9u) != *(v331 + 12))
        {
LABEL_449:
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v323, 441, v324, 2u, 0);
          v173 = v339;
          goto LABEL_230;
        }
      }

      if (*(v323 + 56))
      {
        v332 = *(v323 + 48);
        v333 = 8 * *(v323 + 56);
        while (1)
        {
          v334 = *(*v332 + 72);
          if (v334)
          {
            v335 = *v334 + 120 * *(v334 + v324 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v335, 0x1B9u) != *(v335 + 12))
            {
              goto LABEL_449;
            }
          }

          v332 += 8;
          v328 = 1;
          v333 -= 8;
          if (!v333)
          {
            goto LABEL_446;
          }
        }
      }
    }

    v328 = 1;
  }

LABEL_446:
  v336 = *(v323 + 16 * v328 + 16);
  v173 = 0;
  if (!v336)
  {
    goto LABEL_230;
  }

  v337 = *(v336 + 72);
  if (v337)
  {
    v338 = *v337 + 120 * *(v337 + v324 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v338, 0x1B9u) != *(v338 + 12))
    {
      goto LABEL_449;
    }
  }

  v340 = v323 + 16 * v328;
  if (*(v340 + 56))
  {
    v341 = *(v340 + 48);
    v342 = 8 * *(v340 + 56);
    do
    {
      v343 = *(*v341 + 72);
      if (v343)
      {
        v344 = *v343 + 120 * *(v343 + v324 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v344, 0x1B9u) != *(v344 + 12))
        {
          goto LABEL_449;
        }
      }

      v341 += 8;
      v342 -= 8;
    }

    while (v342);
  }

LABEL_230:
  *(a1 + 68) = v173;
  if ((v363 & 1) == 0)
  {
    *(a1 + 72) = 0;
LABEL_263:
    *(a1 + 73) = 0;
LABEL_264:
    v198 = 1.2;
    goto LABEL_265;
  }

  v174 = a7;
  v175 = v360[3];
  if (a7 >= 0x17)
  {
    v176 = 23;
  }

  else
  {
    v176 = v174;
  }

  v177 = *v175;
  if (*v175 && (v178 = *v177, LODWORD(v177) = *v177 == 1.0, *(v175 + 10) == 1) && (v178 != 0.0 ? (v179 = v178 == 1.0) : (v179 = 1), !v179) || (v180 = *(v175 + v177 + 11), v180 == 2))
  {
    v181 = *(v175 + 16);
    if (v181)
    {
      v182 = *(v181 + 72);
      if (v182)
      {
        v183 = *v182 + 120 * *(v182 + v176 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v183, 0x1C4u) != *(v183 + 12))
        {
          goto LABEL_262;
        }
      }

      if (*(v175 + 56))
      {
        v184 = *(v175 + 48);
        v185 = 8 * *(v175 + 56);
        while (1)
        {
          v186 = *(*v184 + 72);
          if (v186)
          {
            v187 = *v186 + 120 * *(v186 + v176 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v187, 0x1C4u) != *(v187 + 12))
            {
              goto LABEL_262;
            }
          }

          v184 += 8;
          v180 = 1;
          v185 -= 8;
          if (!v185)
          {
            goto LABEL_259;
          }
        }
      }
    }

    v180 = 1;
  }

LABEL_259:
  v193 = *(v175 + 16 * v180 + 16);
  if (!v193)
  {
    goto LABEL_310;
  }

  v194 = *(v193 + 72);
  if (v194)
  {
    v195 = *v194 + 120 * *(v194 + v176 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v195, 0x1C4u) != *(v195 + 12))
    {
      goto LABEL_262;
    }
  }

  v246 = v175 + 16 * v180;
  if (!*(v246 + 56))
  {
LABEL_310:
    *(a1 + 72) = 0;
    v197 = 1;
    goto LABEL_311;
  }

  v247 = *(v246 + 48);
  v248 = 8 * *(v246 + 56);
  while (1)
  {
    v249 = *(*v247 + 72);
    if (v249)
    {
      v250 = *v249 + 120 * *(v249 + v176 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v250, 0x1C4u) != *(v250 + 12))
      {
        break;
      }
    }

    v247 += 8;
    v248 -= 8;
    if (!v248)
    {
      goto LABEL_310;
    }
  }

LABEL_262:
  v196 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v175, 452, v176, 2, 0);
  v197 = v363;
  *(a1 + 72) = v196;
  if ((v197 & 1) == 0)
  {
    goto LABEL_263;
  }

LABEL_311:
  v251 = v360[3];
  if (v174 >= 0x17)
  {
    v252 = 23;
  }

  else
  {
    v252 = v174;
  }

  v253 = *v251;
  if (*v251 && (v254 = *v253, LODWORD(v253) = *v253 == 1.0, *(v251 + 10) == 1) && (v254 != 0.0 ? (v255 = v254 == 1.0) : (v255 = 1), !v255) || (v256 = *(v251 + v253 + 11), v256 == 2))
  {
    v257 = *(v251 + 16);
    if (v257)
    {
      v258 = *(v257 + 72);
      if (v258)
      {
        v259 = *v258 + 120 * *(v258 + v252 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v259, 0x1C5u) != *(v259 + 12))
        {
          goto LABEL_374;
        }
      }

      if (*(v251 + 56))
      {
        v260 = *(v251 + 48);
        v261 = 8 * *(v251 + 56);
        v256 = 1;
        while (1)
        {
          v262 = *(*v260 + 72);
          if (v262)
          {
            v263 = *v262 + 120 * *(v262 + v252 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v263, 0x1C5u) != *(v263 + 12))
            {
              goto LABEL_374;
            }
          }

          v260 += 8;
          v261 -= 8;
          if (!v261)
          {
            goto LABEL_371;
          }
        }
      }
    }

    v256 = 1;
  }

LABEL_371:
  v281 = *(v251 + 16 * v256 + 16);
  if (!v281)
  {
    goto LABEL_381;
  }

  v282 = *(v281 + 72);
  if (v282)
  {
    v283 = *v282 + 120 * *(v282 + v252 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v283, 0x1C5u) != *(v283 + 12))
    {
      goto LABEL_374;
    }
  }

  v286 = v251 + 16 * v256;
  if (!*(v286 + 56))
  {
LABEL_381:
    *(a1 + 73) = 0;
    if ((v197 & 1) == 0)
    {
      goto LABEL_264;
    }

    goto LABEL_382;
  }

  v287 = *(v286 + 48);
  v288 = 8 * *(v286 + 56);
  while (1)
  {
    v289 = *(*v287 + 72);
    if (v289)
    {
      v290 = *v289 + 120 * *(v289 + v252 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v290, 0x1C5u) != *(v290 + 12))
      {
        break;
      }
    }

    v287 += 8;
    v288 -= 8;
    if (!v288)
    {
      goto LABEL_381;
    }
  }

LABEL_374:
  v284 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v251, 453, v252, 2, 0);
  v285 = v363;
  *(a1 + 73) = v284;
  if ((v285 & 1) == 0)
  {
    goto LABEL_264;
  }

LABEL_382:
  v291 = v360[3];
  if (v174 >= 0x17)
  {
    v292 = 23;
  }

  else
  {
    v292 = v174;
  }

  v293 = *v291;
  if (*v291 && (v294 = *v293, LODWORD(v293) = *v293 == 1.0, *(v291 + 10) == 1) && (v294 != 0.0 ? (v295 = v294 == 1.0) : (v295 = 1), !v295) || (v296 = *(v291 + v293 + 11), v296 == 2))
  {
    v297 = *(v291 + 16);
    if (v297)
    {
      v298 = *(v297 + 72);
      if (v298)
      {
        v299 = *v298 + 120 * *(v298 + v292 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v299, 0x1A1u) != *(v299 + 12))
        {
LABEL_406:
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v291, 417, v292, 2u, 0);
          v198 = v307;
          goto LABEL_265;
        }
      }

      if (*(v291 + 56))
      {
        v300 = *(v291 + 48);
        v301 = 8 * *(v291 + 56);
        while (1)
        {
          v302 = *(*v300 + 72);
          if (v302)
          {
            v303 = *v302 + 120 * *(v302 + v292 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v303, 0x1A1u) != *(v303 + 12))
            {
              goto LABEL_406;
            }
          }

          v300 += 8;
          v296 = 1;
          v301 -= 8;
          if (!v301)
          {
            goto LABEL_403;
          }
        }
      }
    }

    v296 = 1;
  }

LABEL_403:
  v304 = *(v291 + 16 * v296 + 16);
  v198 = 1.2;
  if (!v304)
  {
    goto LABEL_265;
  }

  v305 = *(v304 + 72);
  if (v305)
  {
    v306 = *v305 + 120 * *(v305 + v292 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v306, 0x1A1u) != *(v306 + 12))
    {
      goto LABEL_406;
    }
  }

  v308 = v291 + 16 * v296;
  if (*(v308 + 56))
  {
    v309 = *(v308 + 48);
    v310 = 8 * *(v308 + 56);
    do
    {
      v311 = *(*v309 + 72);
      if (v311)
      {
        v312 = *v311 + 120 * *(v311 + v292 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v312, 0x1A1u) != *(v312 + 12))
        {
          goto LABEL_406;
        }
      }

      v309 += 8;
      v310 -= 8;
    }

    while (v310);
  }

LABEL_265:
  v199 = *(a3 + 40);
  v200 = [v199 routeInfo];
  v201 = [v200 route];
  v202 = [v201 transportType];

  v372 = 0uLL;
  v373 = 0;
  v367 = v374;
  v204 = gss::zone_mallocator::instance(v203);
  v205 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(v204, 1);
  *v205 = 0xB00000005;
  v206 = v205 - (*(&v372 + 1) - v372);
  memcpy(v206, v372, *(&v372 + 1) - v372);
  v207 = v372;
  v208 = v373;
  *&v372 = v206;
  *(&v372 + 1) = v205 + 1;
  v373 = (v205 + 1);
  v365 = v207;
  v366 = v208;
  v364.i64[0] = v207;
  v364.i64[1] = v207;
  v209 = std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator> &>::~__split_buffer(&v364);
  *(&v372 + 1) = v205 + 1;
  if ((v205 + 1) >= v373)
  {
    v211 = (v205 - v372 + 8) >> 3;
    if ((v211 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v212 = (v373 - v372) >> 2;
    if (v212 <= v211 + 1)
    {
      v212 = v211 + 1;
    }

    if (v373 - v372 >= 0x7FFFFFFFFFFFFFF8)
    {
      v213 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v213 = v212;
    }

    v367 = v374;
    if (v213)
    {
      v214 = gss::zone_mallocator::instance(v209);
      v215 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(v214, v213);
    }

    else
    {
      v215 = 0;
    }

    v216 = &v215[8 * v213];
    v217 = (v202 << 32) | 0x10010;
    v218 = &v215[8 * v211];
    *v218 = v217;
    v210 = (v218 + 1);
    v219 = &v215[8 * v211 - (*(&v372 + 1) - v372)];
    memcpy(v219, v372, *(&v372 + 1) - v372);
    v220 = v372;
    v221 = v373;
    *&v372 = v219;
    *(&v372 + 1) = v210;
    v373 = v216;
    v365 = v220;
    v366 = v221;
    v364.i64[0] = v220;
    v364.i64[1] = v220;
    std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator> &>::~__split_buffer(&v364);
  }

  else
  {
    v205[1] = (v202 << 32) | 0x10010;
    v210 = (v205 + 2);
  }

  *(&v372 + 1) = v210;
  memset(v371, 0, 24);
  gss::FeatureAttributeSet::setByReplacingAttributes(v370, v371, v372, v210);
  v358[0] = 0;
  v358[1] = 0;
  v359 = 256;
  *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v358, 0x10002u) = 1;
  *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v358, 0x1004Du) = 1;
  v222 = *(*v353 + 520);
  v223 = *(*v353 + 528);
  if (v223)
  {
    atomic_fetch_add_explicit(&v223->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v224 = gss::ClientStyleState<gss::PropertyID>::targetMapDisplayStyle(v222);
  if (v223)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v223);
  }

  v364.i64[0] = v224;
  gss::DisplayStyle::applyDisplayStyle(&v364, v358);
  gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v356, *v353, v370, v358);
  v225 = v356;
  v226 = v357;
  if (v357)
  {
    atomic_fetch_add_explicit(&v357->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v364, v225, v226);
  if (v226)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v226);
  }

  if (v367 == 1)
  {
    md::RouteLineSection::halfWidthAtZoom(&v364, a7);
    v228 = v227;
    v229 = *a4;
    v230 = v228 + v228;
    if ([v229 alphaAtlas])
    {
      v231 = *a4;
      v232 = *([v231 alphaAtlas] + 16);

      v230 = v232 * v230;
    }

    v233 = *(v364.i64[0] + 24);
    if (a7 >= 0x17)
    {
      v234 = 23;
    }

    else
    {
      v234 = a7;
    }

    v235 = *v233;
    if (*v233 && (v236 = *v235, LODWORD(v235) = *v235 == 1.0, *(v233 + 10) == 1) && v236 != 0.0 && v236 != 1.0 || (v237 = *(v233 + v235 + 11), v237 == 2))
    {
      v238 = *(v233 + 16);
      if (v238)
      {
        v239 = *(v238 + 72);
        if (v239)
        {
          v240 = *v239 + 120 * *(v239 + v234 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v240, 0x13Fu) != *(v240 + 12))
          {
            goto LABEL_335;
          }
        }

        if (*(v233 + 56))
        {
          v242 = *(v233 + 48);
          v243 = 8 * *(v233 + 56);
          while (1)
          {
            v244 = *(*v242 + 72);
            if (v244)
            {
              v245 = *v244 + 120 * *(v244 + v234 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v245, 0x13Fu) != *(v245 + 12))
              {
                goto LABEL_335;
              }
            }

            v242 += 8;
            v237 = 1;
            v243 -= 8;
            if (!v243)
            {
              goto LABEL_332;
            }
          }
        }
      }

      v237 = 1;
    }

LABEL_332:
    v264 = *(v233 + 16 * v237 + 16);
    if (!v264)
    {
      goto LABEL_344;
    }

    v265 = *(v264 + 72);
    if (v265)
    {
      v266 = *v265 + 120 * *(v265 + v234 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v266, 0x13Fu) != *(v266 + 12))
      {
        goto LABEL_335;
      }
    }

    v269 = v233 + 16 * v237;
    if (!*(v269 + 56))
    {
LABEL_344:
      v267 = 1.0;
LABEL_345:
      if (v367 == 1)
      {
        v274 = *(v364.i64[0] + 24);
        v275 = fminf(fmaxf(a7, 0.0), 23.0);
        v276 = *v274;
        if (*v274 && (v277 = *v276, LODWORD(v276) = *v276 == 1.0, *(v274 + 10) == 1) && (v277 != 0.0 ? (v278 = v277 == 1.0) : (v278 = 1), !v278) || (v279 = *(v274 + v276 + 11), v277 = 0.0, v279 == 2))
        {
          v369 = 1;
          v345 = v277;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v274, 97, 0, &v369, v275);
          v355 = v230;
          v347 = v346;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v274, 97, 1, &v368, v275);
          v280 = v347 + ((v348 - v347) * v345);
          v230 = v355;
        }

        else
        {
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(v364.i64[0] + 24), 97, v279, 0, v275);
        }

        *a1 = fmaxf(*a1, (v230 + ((v267 + v267) * v280)) * v198);
        (*(*v364.i64[0] + 56))(v364.i64[0]);
      }

      else
      {
        *a1 = fmaxf(*a1, v230 * v198);
      }

      goto LABEL_357;
    }

    v270 = *(v269 + 48);
    v271 = 8 * *(v269 + 56);
    while (1)
    {
      v272 = *(*v270 + 72);
      if (v272)
      {
        v273 = *v272 + 120 * *(v272 + v234 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v273, 0x13Fu) != *(v273 + 12))
        {
          break;
        }
      }

      v270 += 8;
      v271 -= 8;
      if (!v271)
      {
        goto LABEL_344;
      }
    }

LABEL_335:
    v267 = 0.0;
    v241.n128_f32[0] = fminf(fmaxf(a7, 0.0), 23.0);
    v268 = gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<unsigned int>(v233, v241);
    if (v268 == 2)
    {
      v267 = 0.5;
    }

    if (v268)
    {
      goto LABEL_345;
    }

    goto LABEL_344;
  }

LABEL_357:
  if (v366)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v366);
  }

  if (v364.i64[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v364.i64[1]);
  }

  if (v357)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v357);
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v358);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v370);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v371);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v372);
  if (v363 == 1)
  {
    (*(*v360 + 56))(v360);
  }

  if (v362)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v362);
  }

  if (v361)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v361);
  }
}

void sub_1B2B0370C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a26);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a24);
  }

  _Unwind_Resume(exception_object);
}

int *gss::CartoStyle<gss::PropertyID>::valueForExistingKeyAtZ<float>(void *a1, unsigned __int16 a2, unsigned int a3)
{
  if (a3 >= 0x17)
  {
    v3 = 23;
  }

  else
  {
    v3 = a3;
  }

  v4 = *a1 + 120 * *(a1 + v3 + 16);
  v5 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v4 + 48), a2);
  if (v5 == *(v4 + 60))
  {
    return &gss::PropertySetValueHelper<gss::PropertyID,float>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
  }

  else
  {
    return (*(v4 + 48) + *(v4 + 56) + 4 * v5);
  }
}

uint64_t gdc::Registry::storage<md::components::OcclusionType>(uint64_t a1)
{
  v3 = 0x2CA863C195D6BB81;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x2CA863C195D6BB81uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

double gm::quaternionBetweenVectors<double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = gm::Matrix<double,3,1>::cross<int,void>(a2, a3);
  v9 = 0;
  v10 = 0.0;
  do
  {
    v10 = v10 + *(a3 + v9) * *(a2 + v9);
    v9 += 8;
  }

  while (v9 != 24);
  v11 = 0;
  *&v14 = v6;
  *(&v14 + 1) = v7;
  v12 = 0.0;
  v15 = v8;
  v16 = v10;
  do
  {
    v12 = v12 + *(&v14 + v11) * *(&v14 + v11);
    v11 += 8;
  }

  while (v11 != 24);
  *a1 = v14;
  *(a1 + 16) = v15;
  *(a1 + 24) = sqrt(v12 + v10 * v10) + v10;

  return gm::Quaternion<double>::normalize(a1);
}
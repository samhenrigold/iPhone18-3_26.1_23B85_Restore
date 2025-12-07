void sub_1B2B255F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  v56 = *(v54 - 184);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v56);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::gradientMaskFactorRGB@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 248);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 696))();
  }

  *a2 = 0;
  a2[12] = 0;
  return result;
}

void md::DaVinciPipelineStateManager<ggl::DaVinci::RibbonPipelineState,std::shared_ptr<ggl::DaVinciRibbonShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *&v3[12] = *(a3 + 24);
  *&v3[8] = *(a3 + 19);
  *v3 = *(a3 + 11);
  md::DaVinciPipelineStateManager<ggl::DaVinci::RibbonPipelineState,std::shared_ptr<ggl::DaVinciRibbonShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(a1, a2, *a3, *(a3 + 1), *(a3 + 2), *(a3 + 3), *(a3 + 4), *(a3 + 5), *(a3 + 6), BYTE1(*(a3 + 6)), BYTE2(*(a3 + 6)), HIBYTE(*(a3 + 6)), v3[0], v3[1], v3[2], v3[3], *&v3[4], *(a3 + 32), *(a3 + 10), *(a3 + 33), v4[0], v4[1], v4[2]);
}

unint64_t md::DaVinciGroundRenderLayer::RibbonStyleKeyHasher::operator()(float *a1)
{
  v1 = a1[1];
  v2 = *a1;
  if (*a1 == 0.0)
  {
    v2 = 0;
  }

  v3 = LODWORD(v1) - 0x61C8864680B583EBLL;
  if (v1 == 0.0)
  {
    v3 = 0x9E3779B97F4A7C15;
  }

  v4 = a1[2];
  v5 = a1[3];
  v6 = ((v2 >> 2) + (v2 << 6) + v3) ^ v2;
  v7 = LODWORD(v4) - 0x61C8864680B583EBLL;
  if (v4 == 0.0)
  {
    v7 = 0x9E3779B97F4A7C15;
  }

  v8 = (v7 + (v6 << 6) + (v6 >> 2)) ^ v6;
  v9 = LODWORD(v5) - 0x61C8864680B583EBLL;
  if (v5 == 0.0)
  {
    v9 = 0x9E3779B97F4A7C15;
  }

  return (v9 + (v8 << 6) + (v8 >> 2)) ^ v8;
}

void *std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>>>::find<md::DaVinciGroundRenderLayer::StyleCacheKey>(void *a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(&v13 + v2);
    v5 = LODWORD(v4) - 0x61C8864680B583EBLL;
    if (v4 == 0.0)
    {
      v5 = 0x9E3779B97F4A7C15;
    }

    v3 ^= (v3 >> 2) + (v3 << 6) + v5;
    v2 += 4;
  }

  while (v2 != 16);
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v3;
    if (v3 >= *&v6)
    {
      v8 = v3 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v3;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (result = *v9; result; result = *result)
  {
    v11 = result[1];
    if (v11 == v3)
    {
      if (result[2] == *a2 && result[3] == a2[1])
      {
        return result;
      }
    }

    else
    {
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
        return 0;
      }
    }
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>>>::__emplace_unique_key_args<md::DaVinciGroundRenderLayer::StyleCacheKey,md::DaVinciGroundRenderLayer::StyleCacheKey const&,ggl::ConstantDataTyped<ggl::DaVinci::Style> *&>(float *a1, __int128 *a2, _OWORD *a3, void *a4)
{
  v4 = 0;
  v5 = 0;
  v15 = *a2;
  do
  {
    v6 = *(&v15 + v4);
    v7 = LODWORD(v6) - 0x61C8864680B583EBLL;
    if (v6 == 0.0)
    {
      v7 = 0x9E3779B97F4A7C15;
    }

    v5 ^= (v5 >> 2) + (v5 << 6) + v7;
    v4 += 4;
  }

  while (v4 != 16);
  v8 = *(a1 + 2);
  if (!*&v8)
  {
    goto LABEL_26;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v8)
    {
      v10 = v5 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_26:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v5)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= *&v8)
      {
        v13 %= *&v8;
      }
    }

    else
    {
      v13 &= *&v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_26;
    }

LABEL_25:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_26;
    }
  }

  if (v12[2] != *a2 || v12[3] != *(a2 + 1))
  {
    goto LABEL_25;
  }
}

uint64_t std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>>>::find<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = geo::Color<float,4,(geo::ColorSpace)0>::hash(a2);
    v6 = a1[1];
    if (!*&v6)
    {
      return 0;
    }

    v7 = v5 - 0x61C8864680B583EBLL;
    v8 = vcnt_s8(v6);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = v5 - 0x61C8864680B583EBLL;
      if (v7 >= *&v6)
      {
        v9 = v7 % *&v6;
      }
    }

    else
    {
      v9 = (*&v6 - 1) & v7;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (result = *v10; result; result = *result)
      {
        v12 = *(result + 8);
        if (v12 == v7)
        {
          v13 = *(result + 32);
          if (v13 != v2 || v13 == 0)
          {
            if (v13 == v2)
            {
              return result;
            }
          }

          else if (*(result + 16) == *a2 && *(result + 24) == *(a2 + 8))
          {
            return result;
          }
        }

        else
        {
          if (v8.u32[0] > 1uLL)
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
            return 0;
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = std::__throw_bad_optional_access[abi:nn200100]();
    return md::MaterialTextureManager::TextureKey::hash(v16);
  }

  return result;
}

uint64_t md::MaterialTextureManager::TextureKey::hash(md::MaterialTextureManager::TextureKey *this)
{
  v1 = ((*this >> 34) + *this + (HIDWORD(*this) << 6) - 0x61C8864680B583EBLL) ^ HIDWORD(*this);
  v2 = (*(this + 4) + (v1 << 6) + (v1 >> 2) - 0x61C8864680B583EBLL) ^ v1;
  return (*(this + 10) + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583EBLL) ^ v2;
}

void std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>>>::__emplace_unique_key_args<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,md::DaVinciGroundRenderLayer::ColorStyleCacheKey const&,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *&>(float *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a2 + 16);
  if ((v4 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v7 = geo::Color<float,4,(geo::ColorSpace)0>::hash(a2);
  v8 = v7 - 0x61C8864680B583EBLL;
  v9 = *(a1 + 2);
  if (!*&v9)
  {
    goto LABEL_30;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v7 - 0x61C8864680B583EBLL;
    if (v8 >= *&v9)
    {
      v11 = v8 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v8;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_30:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 != v8)
    {
      if (v10.u32[0] > 1uLL)
      {
        if (v14 >= *&v9)
        {
          v14 %= *&v9;
        }
      }

      else
      {
        v14 &= *&v9 - 1;
      }

      if (v14 != v11)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v15 = *(v13 + 32);
    if (v15 != v4 || v15 == 0)
    {
      if (v15 == v4)
      {
        return;
      }

      goto LABEL_29;
    }

    if (v13[2] == *a2 && v13[3] == *(a2 + 8))
    {
      break;
    }

LABEL_29:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_30;
    }
  }
}

uint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::minHideOnCollapse(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 576))(v4, a2);
    v6 = HIBYTE(v5);
  }

  else
  {
    v6 = 0;
    LOBYTE(v5) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    LOWORD(v7) = (*(*v7 + 576))(v7, v2);
    v8 = BYTE1(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v5;
  if (v7 < v5)
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v9 = v5;
    v10 = v6;
  }

  if (v6)
  {
    v8 = v10;
  }

  else
  {
    v9 = v7;
  }

  return v9 | (v8 << 8);
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::hideOnCollapse(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 576))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::maxVisibility(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 264))(v4, a2);
    v6 = HIBYTE(v5);
  }

  else
  {
    v6 = 0;
    LOBYTE(v5) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    LOWORD(v7) = (*(*v7 + 264))(v7, v2);
    v8 = BYTE1(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v7;
  if (v5 > v7)
  {
    v9 = v5;
  }

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v9 = v5;
    v10 = v6;
  }

  if (v6)
  {
    v8 = v10;
  }

  else
  {
    v9 = v7;
  }

  return v9 | (v8 << 8);
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::visibility(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 264))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

unint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::minZIndex(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 216))(v4, a2);
    v6 = v5 & 0xFFFFFF00;
    v7 = HIDWORD(v5);
    v8 = v5;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    LOBYTE(v7) = 0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 216))(v9, v2);
    v11 = v10 & 0xFFFFFF00;
    v12 = HIDWORD(v10);
    v13 = v10;
  }

  else
  {
    v11 = 0;
    v13 = 0;
    LOBYTE(v12) = 0;
  }

  LODWORD(v14) = v11 | v13;
  v15 = v6 | v8;
  if (v14 >= (v6 | v8))
  {
    v16 = v6 | v8;
  }

  else
  {
    v16 = v14;
  }

  if (v12)
  {
    v15 = v16;
    v17 = 1;
  }

  else
  {
    v17 = v7;
  }

  if (v7)
  {
    v14 = v15;
  }

  else
  {
    v14 = v14;
  }

  if (v7)
  {
    LOBYTE(v12) = v17;
  }

  return v14 | (v12 << 32);
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::zIndex(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 216))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

unint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::alpha(uint64_t a1, float a2)
{
  v4 = **(a1 + 48);
  if (v4 <= 0.00000011921 && (v5 = *(a1 + 16)) != 0 || v4 >= 1.0 && (v5 = *(a1 + 32)) != 0)
  {
    v6 = (*(*v5 + 624))(v5, a2);
    v7 = HIDWORD(v6);
  }

  else
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = (*(*v8 + 624))(v8, a2);
      v10 = v9 & 0xFFFFFF00;
      v11 = HIDWORD(v9);
      v12 = v9;
    }

    else
    {
      v10 = 0;
      v12 = 0;
      LOBYTE(v11) = 0;
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = (*(*v13 + 624))(v13, a2);
      v15 = v14 & 0xFFFFFF00;
      v7 = HIDWORD(v14);
      v16 = v14;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      LOBYTE(v7) = 0;
    }

    v17 = v16 | v15;
    v18 = v12 | v10;
    if (v7)
    {
      *&v18 = COERCE_FLOAT(v12 | v10) + ((*&v17 - COERCE_FLOAT(v12 | v10)) * v4);
      v19 = 1;
    }

    else
    {
      v19 = v11;
    }

    if (v11)
    {
      LODWORD(v6) = v18;
    }

    else
    {
      LODWORD(v6) = v17;
    }

    if (v11)
    {
      LOBYTE(v7) = v19;
    }
  }

  return v6 | (v7 << 32);
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::alpha(uint64_t a1)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 624))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

void *gms::PBRWithColorRampMaterial<ggl::Texture2D>::albedoFactor@<X0>(uint64_t a1@<X0>, float32x4_t *a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if (v6 <= 0.00000011921 && (v7 = *(a1 + 16)) != 0 || v6 >= 1.0 && (v7 = *(a1 + 32)) != 0)
  {
    v8 = *(*v7 + 192);

    return v8(a3);
  }

  else
  {
    v13 = v6;
    v10 = *(a1 + 16);
    if (v10)
    {
      (*(*v10 + 192))(&v16, a3.n128_f32[0]);
    }

    else
    {
      v16.i8[0] = 0;
      v17 = 0;
    }

    result = *(a1 + 32);
    if (result)
    {
      result = (*(*result + 192))(&v14, v3);
    }

    else
    {
      v14.i8[0] = 0;
      v15 = 0;
    }

    if (v17 == 1)
    {
      if (v15 == 1)
      {
        v11 = vmlaq_n_f32(v16, vsubq_f32(v14, v16), v13);
      }

      else
      {
        v11 = v16;
      }

      *a2 = v11;
      v12 = a2 + 1;
    }

    else
    {
      a2->i8[0] = 0;
      a2[1].i8[0] = 0;
      if (v15 != 1)
      {
        return result;
      }

      *a2 = v14;
      v12 = a2 + 1;
    }

    v12->i8[0] = 1;
  }

  return result;
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::emissive(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 96))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::albedoFactor@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 144);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 192))();
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::emissive(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LOWORD(v1) = (*(*v1 + 96))(v1);
    v2 = BYTE1(v1);
  }

  else
  {
    v2 = 0;
  }

  return v1 | (v2 << 8);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresDepthPeel>(ecs2::Entity,md::ls::RequiresDepthPeel &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A078E8;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresDepthPeel>(ecs2::Entity,md::ls::RequiresDepthPeel &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresDepthPeel>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresDepthPeel>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresDepthPeel>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresDepthPeel>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresDepthPeel>(void)::metadata) = *(a2 + 4096);
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> * const&>(ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
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

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>::pop(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v2 = *(a1 + 1);
  if (v2 == *a1)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    *(a1 + 1) = v2 - 8;
  }

  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  if (v6 >= v5)
  {
    v8 = *(v1 + 4);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 56;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 1;
    v17 = *(v1 + 4);
    v18 = *(v1 + 5) - v17;
    v19 = v15 - v18;
    memcpy(v15 - v18, v17, v18);
    v20 = *(v1 + 4);
    *(v1 + 4) = v19;
    *(v1 + 5) = v7;
    v21 = *(v1 + 6);
    *(v1 + 6) = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  *(v1 + 5) = v7;
  v24[0] = v3;
  v22 = *(v1 + 15);
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>>>::__emplace_unique_key_args<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,md::DaVinciGroundRenderLayer::ColorStyleCacheKey const&,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *&>(float *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a2 + 16);
  if ((v4 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v7 = geo::Color<float,4,(geo::ColorSpace)0>::hash(a2);
  v8 = v7 - 0x61C8864680B583EBLL;
  v9 = *(a1 + 2);
  if (!*&v9)
  {
    goto LABEL_30;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v7 - 0x61C8864680B583EBLL;
    if (v8 >= *&v9)
    {
      v11 = v8 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v8;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_30:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 != v8)
    {
      if (v10.u32[0] > 1uLL)
      {
        if (v14 >= *&v9)
        {
          v14 %= *&v9;
        }
      }

      else
      {
        v14 &= *&v9 - 1;
      }

      if (v14 != v11)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v15 = *(v13 + 32);
    if (v15 != v4 || v15 == 0)
    {
      if (v15 == v4)
      {
        return;
      }

      goto LABEL_29;
    }

    if (v13[2] == *a2 && v13[3] == *(a2 + 8))
    {
      break;
    }

LABEL_29:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_30;
    }
  }
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ShouldSkipRender>(ecs2::Entity,md::ls::ShouldSkipRender &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A350D8;
  a2[1] = *(result + 8);
  return result;
}

_BYTE *std::__function::__func<md::ita::PrepareFunctionConstantDescriptorRoutelineMask::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::StyleRouteLineMaskDataKeyHandle const&>)::$_0,std::allocator<md::ita::PrepareFunctionConstantDescriptorRoutelineMask::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::StyleRouteLineMaskDataKeyHandle const&>)::$_0>,void ()(md::ls::FunctionConstants &,md::ls::StyleRouteLineMaskDataKeyHandle const&)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  result = md::getStorage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>((**(a1 + 8) + 3144), *a3);
  v5 = result && (*result & 1) != 0;
  *(a2 + 11) = v5;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::DaVinci::Style> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::Style> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::Style> * const&>(ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
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

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::Style> *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::Style> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::Style> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

uint64_t md::RouteStyleContext::RouteStyleContext(uint64_t a1, float *a2, uint64_t a3, int a4, float a5)
{
  v438 = *MEMORY[0x1E69E9840];
  *(a1 + 264) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  *(a1 + 2) = 0;
  v10 = *(a3 + 248);
  v11 = *(a3 + 256);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v429, v10, v11);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  if (v432)
  {
    v419 = a4;
    v12 = a2[2];
    v13 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(*a2 + 16), *(*(*a2 + 16) + 8));
    v16 = v429[3];
    if (v12 >= 0x17)
    {
      v17 = 23;
    }

    else
    {
      v17 = v12;
    }

    v18 = *v16;
    v421 = a2;
    v425 = a3;
    if (*v16)
    {
      v14.n128_u32[0] = *v18;
      LODWORD(v15) = 1.0;
      v19 = *v18 == 1.0;
      if (*(v16 + 10) == 1 && v14.n128_f32[0] != 0.0 && v14.n128_f32[0] != 1.0)
      {
LABEL_17:
        v22 = *(v16 + 16);
        if (v22)
        {
          v23 = *(v22 + 72);
          if (v23)
          {
            v24 = *v23 + 120 * *(v23 + v17 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v24, 0x5Cu) != *(v24 + 12))
            {
              goto LABEL_30;
            }
          }

          if (*(v16 + 56))
          {
            v25 = *(v16 + 48);
            v26 = 8 * *(v16 + 56);
            v21 = 1;
            while (1)
            {
              v27 = *(*v25 + 72);
              if (v27)
              {
                v28 = *v27 + 120 * *(v27 + v17 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v28, 0x5Cu) != *(v28 + 12))
                {
                  goto LABEL_30;
                }
              }

              v25 += 8;
              v26 -= 8;
              if (!v26)
              {
                goto LABEL_27;
              }
            }
          }
        }

        v21 = 1;
LABEL_27:
        v29 = *(v16 + 16 * v21 + 16);
        if (v29)
        {
          v30 = *(v29 + 72);
          if (v30)
          {
            v31 = *v30 + 120 * *(v30 + v17 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v31, 0x5Cu) != *(v31 + 12))
            {
LABEL_30:
              v422 = 1;
              goto LABEL_31;
            }
          }

          v42 = v16 + 16 * v21;
          if (*(v42 + 56))
          {
            v43 = *(v42 + 48);
            v44 = 8 * *(v42 + 56);
            while (1)
            {
              v45 = *(*v43 + 72);
              if (v45)
              {
                v46 = *v45 + 120 * *(v45 + v17 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v46, 0x5Cu) != *(v46 + 12))
                {
                  goto LABEL_30;
                }
              }

              v422 = 0;
              v43 += 8;
              v44 -= 8;
              if (!v44)
              {
                goto LABEL_31;
              }
            }
          }
        }

        v422 = 0;
LABEL_31:
        if (v18)
        {
          v14.n128_u32[0] = *v18;
          LODWORD(v15) = 1.0;
          v32 = *v18 == 1.0;
          if (*(v16 + 10) == 1 && v14.n128_f32[0] != 0.0 && v14.n128_f32[0] != 1.0)
          {
LABEL_39:
            v35 = *(v16 + 16);
            if (v35)
            {
              v36 = *(v35 + 72);
              if (v36)
              {
                v37 = *v36 + 120 * *(v36 + v17 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v37, 0x5Du) != *(v37 + 12))
                {
                  goto LABEL_59;
                }
              }

              if (*(v16 + 56))
              {
                v38 = *(v16 + 48);
                v39 = 8 * *(v16 + 56);
                while (1)
                {
                  v40 = *(*v38 + 72);
                  if (v40)
                  {
                    v41 = *v40 + 120 * *(v40 + v17 + 16);
                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v41, 0x5Du) != *(v41 + 12))
                    {
                      goto LABEL_59;
                    }
                  }

                  v38 += 8;
                  v34 = 1;
                  v39 -= 8;
                  if (!v39)
                  {
                    goto LABEL_56;
                  }
                }
              }
            }

            v34 = 1;
LABEL_56:
            v47 = *(v16 + 16 * v34 + 16);
            if (v47)
            {
              v48 = *(v47 + 72);
              if (v48)
              {
                v49 = *v48 + 120 * *(v48 + v17 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v49, 0x5Du) != *(v49 + 12))
                {
LABEL_59:
                  v50 = 1;
LABEL_60:
                  v51 = v419;
                  goto LABEL_61;
                }
              }

              v66 = v16 + 16 * v34;
              if (*(v66 + 56))
              {
                v67 = *(v66 + 48);
                v68 = 8 * *(v66 + 56);
                v51 = v419;
                while (1)
                {
                  v69 = *(*v67 + 72);
                  if (v69)
                  {
                    v70 = *v69 + 120 * *(v69 + v17 + 16);
                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v70, 0x5Du) != *(v70 + 12))
                    {
                      break;
                    }
                  }

                  v50 = 0;
                  v67 += 8;
                  v68 -= 8;
                  if (!v68)
                  {
                    goto LABEL_61;
                  }
                }

                v50 = 1;
LABEL_61:
                if (v422)
                {
                  md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(buf, v13, &v429, v12, 2u, v14, v15);
                  v14 = *buf;
                  *(a1 + 8) = *buf;
                }

                if (v50)
                {
                  md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)93,(gss::PropertyID)490>(buf, v13, &v429, v12, v14, v15);
                  v14 = *buf;
                  *(a1 + 56) = *buf;
                }

                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v426, v429[3], 504, v17, 2u, 0, v14, v15);
                *buf = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v426.f32)), vdupq_n_s32(0x37800080u));
                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v429[3], 507, v17, 2u, 0);
                md::AccessibilityHelper::luminanceAdjustedColor(&v426, *v13, buf, v52);
                *(a1 + 88) = v426;
                v53 = v429[3];
                v54 = *v53;
                if (*v53 && (v55 = *v54, LODWORD(v54) = *v54 == 1.0, *(v53 + 10) == 1) && (v55 != 0.0 ? (v56 = v55 == 1.0) : (v56 = 1), !v56) || (v57 = *(v53 + v54 + 11), v57 == 2))
                {
                  v58 = *(v53 + 16);
                  if (v58)
                  {
                    v59 = *(v58 + 72);
                    if (v59)
                    {
                      v60 = *v59 + 120 * *(v59 + v17 + 16);
                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v60, 0x13Fu) != *(v60 + 12))
                      {
                        goto LABEL_94;
                      }
                    }

                    if (*(v53 + 56))
                    {
                      v62 = *(v53 + 48);
                      v63 = 8 * *(v53 + 56);
                      while (1)
                      {
                        v64 = *(*v62 + 72);
                        if (v64)
                        {
                          v65 = *v64 + 120 * *(v64 + v17 + 16);
                          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v65, 0x13Fu) != *(v65 + 12))
                          {
                            goto LABEL_94;
                          }
                        }

                        v62 += 8;
                        v57 = 1;
                        v63 -= 8;
                        if (!v63)
                        {
                          goto LABEL_91;
                        }
                      }
                    }
                  }

                  v57 = 1;
                }

LABEL_91:
                v71 = *(v53 + 16 * v57 + 16);
                if (!v71)
                {
                  goto LABEL_95;
                }

                v72 = *(v71 + 72);
                if (!v72 || (v73 = *v72 + 120 * *(v72 + v17 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v73, 0x13Fu) == *(v73 + 12)))
                {
                  v83 = v53 + 16 * v57;
                  if (!*(v83 + 56))
                  {
LABEL_95:
                    *(a1 + 312) = gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(104, 2, v53);
                    if (v51)
                    {
                      v74 = v429[3];
                      v75 = fminf(fmaxf(v12, 0.0), 23.0);
                      v76 = *v74;
                      if (*v74 && (v77 = *v76, LODWORD(v76) = *v76 == 1.0, *(v74 + 10) == 1) && (v77 != 0.0 ? (v78 = v77 == 1.0) : (v78 = 1), !v78) || (v79 = *(v74 + v76 + 11), v77 = 0.0, v79 == 2))
                      {
                        buf[0] = 1;
                        v426.i8[0] = 1;
                        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v74, 313, 0, buf, v75);
                        v408 = v407;
                        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v74, 313, 1, &v426, v75);
                        v80 = v408 + ((v409 - v408) * v77);
                      }

                      else
                      {
                        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v429[3], 313, v79, 0, v75);
                      }

                      *(a1 + 340) = v80;
                    }

                    WeakRetained = objc_loadWeakRetained((v425 + 200));
                    *(a1 + 1) = 0;
                    v420 = WeakRetained;
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      *(a1 + 1) = 1;
                      if ((v422 & 1) == 0)
                      {
                        if (WeakRetained)
                        {
                          objc_msgSend_lineColor(WeakRetained);
                        }

                        else
                        {
                          memset(buf, 0, sizeof(buf));
                        }

                        *(a1 + 8) = *buf;
                      }

                      if ((v50 & 1) == 0)
                      {
                        if (WeakRetained)
                        {
                          objc_msgSend_lineColor(WeakRetained);
                        }

                        else
                        {
                          memset(buf, 0, sizeof(buf));
                        }

                        *(a1 + 56) = *buf;
                      }
                    }

                    else if ((v422 & 1) == 0)
                    {
                      if ((hasLogErrorOnce & 1) == 0)
                      {
                        if (GEOGetVectorKitRouteLog_onceToken != -1)
                        {
                          dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
                        }

                        v82 = GEOGetVectorKitRouteLog_log;
                        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_1B2754000, v82, OS_LOG_TYPE_ERROR, "Route FillColor not defined", buf, 2u);
                        }

                        md::RouteLineSection::dumpStyleAttributes(v425);
                        hasLogErrorOnce = 1;
                      }

                      *(a1 + 8) = xmmword_1B33B1340;
                    }

                    v88 = *(a1 + 8);
                    *(a1 + 24) = v88;
                    *(a1 + 40) = v88;
                    v89 = v429;
                    v90 = v429[3];
                    v91 = *v90;
                    if (*v90)
                    {
                      v92 = *v91;
                      v93 = *v91 == 1.0;
                      if (*(v90 + 10) == 1 && v92 != 0.0 && v92 != 1.0)
                      {
LABEL_139:
                        v96 = *(v90 + 16);
                        if (v96)
                        {
                          v97 = *(v96 + 72);
                          if (v97)
                          {
                            v98 = *v97 + 120 * *(v97 + v17 + 16);
                            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v98, 0xF0u) != *(v98 + 12))
                            {
                              goto LABEL_152;
                            }
                          }

                          if (*(v90 + 56))
                          {
                            v101 = *(v90 + 48);
                            v102 = 8 * *(v90 + 56);
                            v95 = 1;
                            while (1)
                            {
                              v103 = *(*v101 + 72);
                              if (v103)
                              {
                                v104 = *v103 + 120 * *(v103 + v17 + 16);
                                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v104, 0xF0u) != *(v104 + 12))
                                {
                                  goto LABEL_152;
                                }
                              }

                              v101 += 8;
                              v102 -= 8;
                              if (!v102)
                              {
                                goto LABEL_149;
                              }
                            }
                          }
                        }

                        v95 = 1;
LABEL_149:
                        v105 = *(v90 + 16 * v95 + 16);
                        if (!v105)
                        {
                          goto LABEL_153;
                        }

                        v106 = *(v105 + 72);
                        if (!v106 || (v107 = *v106 + 120 * *(v106 + v17 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v107, 0xF0u) == *(v107 + 12)))
                        {
                          v121 = v90 + 16 * v95;
                          if (!*(v121 + 56))
                          {
LABEL_153:
                            *(a1 + 72) = *(a1 + 56);
                            if (v91)
                            {
                              v108 = *v91;
                              v109 = *v91 == 1.0;
                              if (*(v90 + 10) == 1 && v108 != 0.0 && v108 != 1.0)
                              {
LABEL_161:
                                v112 = *(v90 + 16);
                                if (v112)
                                {
                                  v113 = *(v112 + 72);
                                  if (v113)
                                  {
                                    v114 = *v113 + 120 * *(v113 + v17 + 16);
                                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v114, 0x1A3u) != *(v114 + 12))
                                    {
                                      goto LABEL_180;
                                    }
                                  }

                                  if (*(v90 + 56))
                                  {
                                    v117 = *(v90 + 48);
                                    v118 = 8 * *(v90 + 56);
                                    while (1)
                                    {
                                      v119 = *(*v117 + 72);
                                      if (v119)
                                      {
                                        v120 = *v119 + 120 * *(v119 + v17 + 16);
                                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v120, 0x1A3u) != *(v120 + 12))
                                        {
                                          goto LABEL_180;
                                        }
                                      }

                                      v117 += 8;
                                      v111 = 1;
                                      v118 -= 8;
                                      if (!v118)
                                      {
                                        goto LABEL_177;
                                      }
                                    }
                                  }
                                }

                                v111 = 1;
LABEL_177:
                                v126 = *(v90 + 16 * v111 + 16);
                                if (!v126)
                                {
LABEL_181:
                                  *(a1 + 104) = *(a1 + 88);
                                  v129 = v89[3];
                                  v130 = *v129;
                                  if (*v129 && (v131 = *v130, LODWORD(v130) = *v130 == 1.0, *(v129 + 10) == 1) && (v131 != 0.0 ? (v132 = v131 == 1.0) : (v132 = 1), !v132) || (v133 = *(v129 + v130 + 11), v133 == 2))
                                  {
                                    v134 = *(v129 + 16);
                                    if (v134)
                                    {
                                      v135 = *(v134 + 72);
                                      if (v135)
                                      {
                                        v136 = *v135 + 120 * *(v135 + v17 + 16);
                                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v136, 0x1FAu) != *(v136 + 12))
                                        {
                                          goto LABEL_208;
                                        }
                                      }

                                      if (*(v129 + 56))
                                      {
                                        v139 = *(v129 + 48);
                                        v140 = 8 * *(v129 + 56);
                                        while (1)
                                        {
                                          v141 = *(*v139 + 72);
                                          if (v141)
                                          {
                                            v142 = *v141 + 120 * *(v141 + v17 + 16);
                                            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v142, 0x1FAu) != *(v142 + 12))
                                            {
                                              goto LABEL_208;
                                            }
                                          }

                                          v139 += 8;
                                          v133 = 1;
                                          v140 -= 8;
                                          if (!v140)
                                          {
                                            goto LABEL_205;
                                          }
                                        }
                                      }
                                    }

                                    v133 = 1;
                                  }

LABEL_205:
                                  v148 = *(v129 + 16 * v133 + 16);
                                  if (!v148)
                                  {
                                    goto LABEL_209;
                                  }

                                  v149 = *(v148 + 72);
                                  if (!v149 || (v150 = *v149 + 120 * *(v149 + v17 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v150, 0x1FAu) == *(v150 + 12)))
                                  {
                                    v159 = v129 + 16 * v133;
                                    if (!*(v159 + 56))
                                    {
LABEL_209:
                                      *(a1 + 5) = 0;
                                      v151 = *(v129 + 11);
                                      if (v151 == 2)
                                      {
                                        v152 = *(v129 + 16);
                                        if (v152)
                                        {
                                          v153 = *(v152 + 72);
                                          if (v153)
                                          {
                                            v154 = *v153 + 120 * *(v153 + v17 + 16);
                                            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v154, 0x12Cu) != *(v154 + 12))
                                            {
                                              goto LABEL_229;
                                            }
                                          }

                                          if (*(v129 + 56))
                                          {
                                            v155 = *(v129 + 48);
                                            v156 = 8 * *(v129 + 56);
                                            while (1)
                                            {
                                              v157 = *(*v155 + 72);
                                              if (v157)
                                              {
                                                v158 = *v157 + 120 * *(v157 + v17 + 16);
                                                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v158, 0x12Cu) != *(v158 + 12))
                                                {
                                                  goto LABEL_229;
                                                }
                                              }

                                              v155 += 8;
                                              v151 = 1;
                                              v156 -= 8;
                                              if (!v156)
                                              {
                                                goto LABEL_226;
                                              }
                                            }
                                          }
                                        }

                                        v151 = 1;
                                      }

LABEL_226:
                                      v164 = *(v129 + 16 * v151 + 16);
                                      if (v164)
                                      {
                                        v165 = *(v164 + 72);
                                        if (v165)
                                        {
                                          v166 = *v165 + 120 * *(v165 + v17 + 16);
                                          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v166, 0x12Cu) != *(v166 + 12))
                                          {
LABEL_229:
                                            v167 = 0;
                                            goto LABEL_230;
                                          }
                                        }

                                        v176 = v129 + 16 * v151;
                                        if (*(v176 + 56))
                                        {
                                          v177 = *(v176 + 48);
                                          v178 = 8 * *(v176 + 56);
                                          while (1)
                                          {
                                            v179 = *(*v177 + 72);
                                            if (v179)
                                            {
                                              v180 = *v179 + 120 * *(v179 + v17 + 16);
                                              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v180, 0x12Cu) != *(v180 + 12))
                                              {
                                                goto LABEL_229;
                                              }
                                            }

                                            v177 += 8;
                                            v167 = 1;
                                            v178 -= 8;
                                            if (!v178)
                                            {
                                              goto LABEL_230;
                                            }
                                          }
                                        }
                                      }

                                      v167 = 1;
LABEL_230:
                                      v168 = *(v129 + 12);
                                      if (v168 == 2)
                                      {
                                        v169 = *(v129 + 16);
                                        if (v169)
                                        {
                                          v170 = *(v169 + 72);
                                          if (v170)
                                          {
                                            v171 = *v170 + 120 * *(v170 + v17 + 16);
                                            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v171, 0x12Cu) != *(v171 + 12))
                                            {
                                              goto LABEL_251;
                                            }
                                          }

                                          if (*(v129 + 56))
                                          {
                                            v172 = *(v129 + 48);
                                            v173 = 8 * *(v129 + 56);
                                            v168 = 1;
                                            while (1)
                                            {
                                              v174 = *(*v172 + 72);
                                              if (v174)
                                              {
                                                v175 = *v174 + 120 * *(v174 + v17 + 16);
                                                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v175, 0x12Cu) != *(v175 + 12))
                                                {
                                                  goto LABEL_251;
                                                }
                                              }

                                              v172 += 8;
                                              v173 -= 8;
                                              if (!v173)
                                              {
                                                goto LABEL_248;
                                              }
                                            }
                                          }
                                        }

                                        v168 = 1;
                                      }

LABEL_248:
                                      v181 = *(v129 + 16 * v168 + 16);
                                      if (!v181)
                                      {
                                        goto LABEL_258;
                                      }

                                      v182 = *(v181 + 72);
                                      if (!v182 || (v183 = *v182 + 120 * *(v182 + v17 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v183, 0x12Cu) == *(v183 + 12)))
                                      {
                                        v184 = v129 + 16 * v168;
                                        if (!*(v184 + 56))
                                        {
                                          goto LABEL_258;
                                        }

                                        v185 = *(v184 + 48);
                                        v186 = 8 * *(v184 + 56);
                                        while (1)
                                        {
                                          v187 = *(*v185 + 72);
                                          if (v187)
                                          {
                                            v188 = *v187 + 120 * *(v187 + v17 + 16);
                                            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v188, 0x12Cu) != *(v188 + 12))
                                            {
                                              break;
                                            }
                                          }

                                          v185 += 8;
                                          v186 -= 8;
                                          if (!v186)
                                          {
                                            goto LABEL_258;
                                          }
                                        }
                                      }

LABEL_251:
                                      if ((v167 & 1) == 0)
                                      {
                                        gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<gss::DashPattern>(buf, v129, 300, v17, 2);
                                        goto LABEL_259;
                                      }

LABEL_258:
                                      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<gss::DashPattern>(buf, v129, 300, v17, 1);
LABEL_259:
                                      std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__vdeallocate((a1 + 272));
                                      *(a1 + 272) = *buf;
                                      *(a1 + 288) = v435;
                                      v435 = 0;
                                      memset(buf, 0, sizeof(buf));
                                      *(a1 + 304) = v437;
                                      std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
                                      v189 = v421;
                                      v191 = *(a1 + 272);
                                      v190 = *(a1 + 280);
                                      *(a1 + 5) = v190 != v191;
                                      if (*(v421 + 145))
                                      {
                                        v192 = 0;
                                        *(a1 + 6) = 0;
                                      }

                                      else
                                      {
                                        v193 = *(a1 + 1) | (v190 != v191);
                                        *(a1 + 6) = v193 ^ 1;
                                        if (v193)
                                        {
                                          v192 = 0;
                                        }

                                        else
                                        {
                                          v192 = *(v421 + 192);
                                        }
                                      }

                                      *a1 = v192 & 1;
                                      md::RouteLineSection::halfWidthAtZoom(&v429, v12);
                                      v195 = v194 + v194;
                                      *(a1 + 316) = v194 + v194;
                                      v196 = v429;
                                      if (v432 != 1)
                                      {
                                        v205 = v429[3];
                                        v207 = *v205;
                                        v204 = 0.0;
                                        v213 = 0.0;
                                        goto LABEL_284;
                                      }

                                      v197 = v429[3];
                                      v198 = fminf(fmaxf(v12, 0.0), 23.0);
                                      v199 = *v197;
                                      if (*v197 && (v200 = *v199, LODWORD(v199) = *v199 == 1.0, *(v197 + 10) == 1) && (v200 != 0.0 ? (v201 = v200 == 1.0) : (v201 = 1), !v201) || (v202 = *(v197 + v199 + 11), v200 = 0.0, v202 == 2))
                                      {
                                        buf[0] = 1;
                                        v426.i8[0] = 1;
                                        v410 = v200;
                                        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v197, 97, 0, buf, v198);
                                        v412 = v411;
                                        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v197, 97, 1, &v426, v198);
                                        v204 = v412 + ((v413 - v412) * v410);
                                      }

                                      else
                                      {
                                        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v429[3], 97, v202, 0, v198);
                                        v204 = v203;
                                      }

                                      v205 = v196[3];
                                      v206 = fminf(fmaxf(v12, 0.0), 23.0);
                                      v207 = *v205;
                                      if (*v205)
                                      {
                                        v208 = *v207;
                                        v209 = *v207 == 1.0;
                                        if (*(v205 + 10) == 1 && v208 != 0.0 && v208 != 1.0)
                                        {
LABEL_564:
                                          buf[0] = 1;
                                          v426.i8[0] = 1;
                                          v414 = v206;
                                          v415 = v208;
                                          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v205, 505, 0, buf, v206);
                                          v424 = v195;
                                          v417 = v416;
                                          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v205, 505, 1, &v426, v414);
                                          v213 = v417 + ((v418 - v417) * v415);
                                          v195 = v424;
LABEL_284:
                                          *(a1 + 332) = 0;
                                          v214 = v421[32];
                                          v215 = ((a5 * 0.5) * v195) * v214;
                                          *(a1 + 320) = v215;
                                          v216 = *(v425 + 144);
                                          v217 = *(v425 + 168);
                                          v218 = exp((*(v425 + 152) + (*(v425 + 176) - *(v425 + 152)) * 0.5) * 6.28318531 + -3.14159265);
                                          v219 = atan(v218);
                                          v220 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v219 * 114.591559 + -90.0) / ((v217 - v216) * v421[45]);
                                          *(a1 + 336) = v220 * a5;
                                          *(a1 + 324) = (v204 * a5) * v214;
                                          *(a1 + 328) = (v213 * a5) * v214;
                                          v221 = fminf(fmaxf(v12, 0.0), 23.0);
                                          if (v207)
                                          {
                                            v222 = *v207;
                                            v223 = *v207 == 1.0;
                                            if (*(v205 + 10) == 1 && v222 != 0.0 && v222 != 1.0)
                                            {
                                              goto LABEL_560;
                                            }
                                          }

                                          else
                                          {
                                            v223 = 0;
                                          }

                                          v224 = *(v205 + v223 + 11);
                                          v222 = 0.0;
                                          if (v224 != 2)
                                          {
                                            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v205, 464, v224, 0, v221);
LABEL_290:
                                            *(a1 + 348) = v225;
                                            *(a1 + 344) = v215;
                                            occludedColorForColor(buf, (a1 + 8));
                                            *(a1 + 168) = *buf;
                                            occludedColorForColor(buf, (a1 + 40));
                                            *(a1 + 184) = *buf;
                                            if (*(v421 + 176) == 1)
                                            {
                                              v226 = +[VKDebugSettings sharedSettings];
                                              v227 = [v226 enableDynamicRouteWidth];

                                              if (v227)
                                              {
                                                *(a1 + 332) = fminf(fmaxf((v421[39] * 0.2) + -2.4, 0.0), 1.0);
                                              }
                                            }

                                            v228 = *(v425 + 264);
                                            v229 = *(v425 + 272);
                                            if (v229)
                                            {
                                              atomic_fetch_add_explicit(&v229->__shared_owners_, 1uLL, memory_order_relaxed);
                                            }

                                            gss::QueryableLocker<gss::PropertyID>::QueryableLocker(buf, v228, v229);
                                            if (v229)
                                            {
                                              std::__shared_weak_count::__release_shared[abi:nn200100](v229);
                                            }

                                            v232 = v437;
                                            *(a1 + 3) = v437;
                                            if (v232 != 1)
                                            {
                                              goto LABEL_358;
                                            }

                                            gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v426, *(*buf + 24), 92, v17, 2u, 0, v230, v231);
                                            v423 = vdupq_n_s32(0x37800080u);
                                            v233 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v426.f32)), v423);
                                            *(a1 + 120) = v233;
                                            gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v426, *(*buf + 24), 93, v17, 2u, 0, v233, *v423.i64);
                                            v234 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v426.f32)), v423);
                                            *(a1 + 136) = v234;
                                            gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v426, *(*buf + 24), 504, v17, 2u, 0, v234, *v423.i64);
                                            *(a1 + 152) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v426.f32)), v423);
                                            v235 = *(*buf + 24);
                                            v236 = *v235;
                                            if (*v235)
                                            {
                                              v237 = *v236;
                                              v238 = *v236 == 1.0;
                                              if (*(v235 + 10) == 1 && v237 != 0.0 && v237 != 1.0)
                                              {
LABEL_303:
                                                v240 = *(v235 + 16);
                                                if (v240)
                                                {
                                                  v241 = *(v240 + 72);
                                                  v189 = v421;
                                                  if (v241)
                                                  {
                                                    v242 = *v241 + 120 * *(v241 + v17 + 16);
                                                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v242, 0x5Cu) != *(v242 + 12))
                                                    {
                                                      goto LABEL_316;
                                                    }
                                                  }

                                                  if (*(v235 + 56))
                                                  {
                                                    v243 = *(v235 + 48);
                                                    v244 = 8 * *(v235 + 56);
                                                    while (1)
                                                    {
                                                      v245 = *(*v243 + 72);
                                                      if (v245)
                                                      {
                                                        v246 = *v245 + 120 * *(v245 + v17 + 16);
                                                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v246, 0x5Cu) != *(v246 + 12))
                                                        {
                                                          break;
                                                        }
                                                      }

                                                      v243 += 8;
                                                      v239 = 1;
                                                      v244 -= 8;
                                                      if (!v244)
                                                      {
                                                        goto LABEL_313;
                                                      }
                                                    }

                                                    LOBYTE(v247) = 1;
                                                    goto LABEL_324;
                                                  }
                                                }

                                                v239 = 1;
LABEL_313:
                                                v247 = *(v235 + 16 * v239 + 16);
                                                if (!v247)
                                                {
LABEL_324:
                                                  v189 = v421;
LABEL_325:
                                                  if (*(a1 + 1) != 1)
                                                  {
                                                    goto LABEL_358;
                                                  }

                                                  if ((v247 & 1) == 0)
                                                  {
                                                    if (v420)
                                                    {
                                                      objc_msgSend_lineColor(v420);
                                                      v235 = *(*buf + 24);
                                                    }

                                                    else
                                                    {
                                                      v426 = 0uLL;
                                                    }

                                                    *(a1 + 120) = v426;
                                                    v236 = *v235;
                                                  }

                                                  if (v236)
                                                  {
                                                    v255 = *v236;
                                                    v256 = *v236 == 1.0;
                                                    if (*(v235 + 10) == 1 && v255 != 0.0 && v255 != 1.0)
                                                    {
LABEL_336:
                                                      v258 = *(v235 + 16);
                                                      if (v258)
                                                      {
                                                        v259 = *(v258 + 72);
                                                        if (v259)
                                                        {
                                                          v260 = *v259 + 120 * *(v259 + v17 + 16);
                                                          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v260, 0x5Du) != *(v260 + 12))
                                                          {
                                                            goto LABEL_358;
                                                          }
                                                        }

                                                        if (*(v235 + 56))
                                                        {
                                                          v261 = *(v235 + 48);
                                                          v262 = 8 * *(v235 + 56);
                                                          while (1)
                                                          {
                                                            v263 = *(*v261 + 72);
                                                            if (v263)
                                                            {
                                                              v264 = *v263 + 120 * *(v263 + v17 + 16);
                                                              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v264, 0x5Du) != *(v264 + 12))
                                                              {
                                                                goto LABEL_358;
                                                              }
                                                            }

                                                            v261 += 8;
                                                            v257 = 1;
                                                            v262 -= 8;
                                                            if (!v262)
                                                            {
                                                              goto LABEL_346;
                                                            }
                                                          }
                                                        }
                                                      }

                                                      v257 = 1;
LABEL_346:
                                                      v265 = *(v235 + 16 * v257 + 16);
                                                      if (!v265)
                                                      {
                                                        goto LABEL_354;
                                                      }

                                                      v266 = *(v265 + 72);
                                                      if (v266)
                                                      {
                                                        v267 = *v266 + 120 * *(v266 + v17 + 16);
                                                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v267, 0x5Du) != *(v267 + 12))
                                                        {
                                                          goto LABEL_358;
                                                        }
                                                      }

                                                      v268 = v235 + 16 * v257;
                                                      if (*(v268 + 56))
                                                      {
                                                        v269 = *(v268 + 48);
                                                        v270 = 8 * *(v268 + 56);
                                                        while (1)
                                                        {
                                                          v271 = *(*v269 + 72);
                                                          if (v271)
                                                          {
                                                            v272 = *v271 + 120 * *(v271 + v17 + 16);
                                                            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v272, 0x5Du) != *(v272 + 12))
                                                            {
                                                              break;
                                                            }
                                                          }

                                                          v269 += 8;
                                                          v270 -= 8;
                                                          if (!v270)
                                                          {
                                                            goto LABEL_354;
                                                          }
                                                        }
                                                      }

                                                      else
                                                      {
LABEL_354:
                                                        if (v420)
                                                        {
                                                          objc_msgSend_lineColor(v420);
                                                        }

                                                        else
                                                        {
                                                          v426 = 0uLL;
                                                        }

                                                        *(a1 + 136) = v426;
                                                      }

LABEL_358:
                                                      if (*(a1 + 5) == 1)
                                                      {
                                                        *(a1 + 8) = 0;
                                                        *(a1 + 16) = 0;
                                                      }

                                                      occludedColorForColor(&v426, (a1 + 56));
                                                      *(a1 + 200) = v426;
                                                      occludedColorForColor(&v426, (a1 + 72));
                                                      *(a1 + 216) = v426;
                                                      occludedColorForColor(&v426, (a1 + 104));
                                                      *(a1 + 248) = v426;
                                                      *(a1 + 4) = 0;
                                                      v274 = *(v425 + 280);
                                                      v273 = *(v425 + 288);
                                                      if (v273)
                                                      {
                                                        atomic_fetch_add_explicit(&v273->__shared_owners_, 1uLL, memory_order_relaxed);
                                                        if (!v274)
                                                        {
LABEL_540:
                                                          std::__shared_weak_count::__release_shared[abi:nn200100](v273);
                                                          goto LABEL_541;
                                                        }

                                                        v275 = *(v189 + 144);
                                                        std::__shared_weak_count::__release_shared[abi:nn200100](v273);
                                                        if (v275 != 1)
                                                        {
LABEL_541:
                                                          *(a1 + 2) = 1;
                                                          if (v437 == 1)
                                                          {
                                                            (*(**buf + 56))(*buf);
                                                          }

                                                          if (v436)
                                                          {
                                                            std::__shared_weak_count::__release_shared[abi:nn200100](v436);
                                                          }

                                                          if (*&buf[8])
                                                          {
                                                            std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
                                                          }

                                                          if (v432)
                                                          {
                                                            (*(*v429 + 56))(v429);
                                                          }

                                                          goto LABEL_549;
                                                        }

                                                        v274 = *(v425 + 280);
                                                        v276 = *(v425 + 288);
                                                        if (v276)
                                                        {
                                                          atomic_fetch_add_explicit(&v276->__shared_owners_, 1uLL, memory_order_relaxed);
                                                        }
                                                      }

                                                      else
                                                      {
                                                        if (!v274 || *(v189 + 144) != 1)
                                                        {
                                                          goto LABEL_541;
                                                        }

                                                        v276 = 0;
                                                      }

                                                      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v426, v274, v276);
                                                      if (v276)
                                                      {
                                                        std::__shared_weak_count::__release_shared[abi:nn200100](v276);
                                                      }

                                                      v277 = v428;
                                                      *(a1 + 4) = v428;
                                                      if (v277 != 1)
                                                      {
                                                        goto LABEL_535;
                                                      }

                                                      if ((v189[44] & 1) == 0)
                                                      {
                                                        *(a1 + 344) = (*(a1 + 316) * 0.5) * v189[32];
                                                      }

                                                      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v426.i64[0] + 24), 448, v17, 2u, 0);
                                                      v279 = v278;
                                                      v280 = v426.i64[0];
                                                      v281 = *(v426.i64[0] + 24);
                                                      v282 = *v281;
                                                      if (*v281 && (v283 = *v282, LODWORD(v282) = *v282 == 1.0, *(v281 + 10) == 1) && (v283 != 0.0 ? (v284 = v283 == 1.0) : (v284 = 1), !v284) || (v285 = *(v281 + v282 + 11), v285 == 2))
                                                      {
                                                        v286 = *(v281 + 16);
                                                        if (v286)
                                                        {
                                                          v287 = *(v286 + 72);
                                                          if (v287)
                                                          {
                                                            v288 = *v287 + 120 * *(v287 + v17 + 16);
                                                            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v288, 0x5Cu) != *(v288 + 12))
                                                            {
                                                              goto LABEL_394;
                                                            }
                                                          }

                                                          if (*(v281 + 56))
                                                          {
                                                            v291 = *(v281 + 48);
                                                            v292 = 8 * *(v281 + 56);
                                                            while (1)
                                                            {
                                                              v293 = *(*v291 + 72);
                                                              if (v293)
                                                              {
                                                                v294 = *v293 + 120 * *(v293 + v17 + 16);
                                                                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v294, 0x5Cu) != *(v294 + 12))
                                                                {
                                                                  goto LABEL_394;
                                                                }
                                                              }

                                                              v291 += 8;
                                                              v285 = 1;
                                                              v292 -= 8;
                                                              if (!v292)
                                                              {
                                                                goto LABEL_391;
                                                              }
                                                            }
                                                          }
                                                        }

                                                        v285 = 1;
                                                      }

LABEL_391:
                                                      v295 = *(v281 + 16 * v285 + 16);
                                                      if (v295)
                                                      {
                                                        v296 = *(v295 + 72);
                                                        if (v296)
                                                        {
                                                          v297 = *v296 + 120 * *(v296 + v17 + 16);
                                                          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v297, 0x5Cu) != *(v297 + 12))
                                                          {
LABEL_394:
                                                            gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v433, v281, 92, v17, 2u, 0, v289, v290);
                                                            *(a1 + 168) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v433)), vdupq_n_s32(0x37800080u));
                                                            v280 = v426.i64[0];
LABEL_401:
                                                            v303 = *(v280 + 24);
                                                            v304 = *v303;
                                                            if (*v303 && (v305 = *v304, LODWORD(v304) = *v304 == 1.0, *(v303 + 10) == 1) && (v305 != 0.0 ? (v306 = v305 == 1.0) : (v306 = 1), !v306) || (v307 = *(v303 + v304 + 11), v307 == 2))
                                                            {
                                                              v308 = *(v303 + 16);
                                                              if (v308)
                                                              {
                                                                v309 = *(v308 + 72);
                                                                if (v309)
                                                                {
                                                                  v310 = *v309 + 120 * *(v309 + v17 + 16);
                                                                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v310, 0xF0u) != *(v310 + 12))
                                                                  {
                                                                    goto LABEL_422;
                                                                  }
                                                                }

                                                                if (*(v303 + 56))
                                                                {
                                                                  v313 = *(v303 + 48);
                                                                  v314 = 8 * *(v303 + 56);
                                                                  while (1)
                                                                  {
                                                                    v315 = *(*v313 + 72);
                                                                    if (v315)
                                                                    {
                                                                      v316 = *v315 + 120 * *(v315 + v17 + 16);
                                                                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v316, 0xF0u) != *(v316 + 12))
                                                                      {
                                                                        goto LABEL_422;
                                                                      }
                                                                    }

                                                                    v313 += 8;
                                                                    v307 = 1;
                                                                    v314 -= 8;
                                                                    if (!v314)
                                                                    {
                                                                      goto LABEL_419;
                                                                    }
                                                                  }
                                                                }
                                                              }

                                                              v307 = 1;
                                                            }

LABEL_419:
                                                            v317 = *(v303 + 16 * v307 + 16);
                                                            if (v317)
                                                            {
                                                              v318 = *(v317 + 72);
                                                              if (v318)
                                                              {
                                                                v319 = *v318 + 120 * *(v318 + v17 + 16);
                                                                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v319, 0xF0u) != *(v319 + 12))
                                                                {
LABEL_422:
                                                                  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v433, v303, 240, v17, 2u, 0, v311, v312);
                                                                  *(a1 + 184) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v433)), vdupq_n_s32(0x37800080u));
                                                                  v280 = v426.i64[0];
                                                                  goto LABEL_429;
                                                                }
                                                              }

                                                              v320 = v303 + 16 * v307;
                                                              if (*(v320 + 56))
                                                              {
                                                                v321 = *(v320 + 48);
                                                                v322 = 8 * *(v320 + 56);
                                                                do
                                                                {
                                                                  v323 = *(*v321 + 72);
                                                                  if (v323)
                                                                  {
                                                                    v324 = *v323 + 120 * *(v323 + v17 + 16);
                                                                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v324, 0xF0u) != *(v324 + 12))
                                                                    {
                                                                      goto LABEL_422;
                                                                    }
                                                                  }

                                                                  v321 += 8;
                                                                  v322 -= 8;
                                                                }

                                                                while (v322);
                                                              }
                                                            }

                                                            *(a1 + 196) = *(a1 + 196) * v279;
LABEL_429:
                                                            v325 = *(v280 + 24);
                                                            v326 = *v325;
                                                            if (*v325)
                                                            {
                                                              v327 = *v326;
                                                              v328 = *v326 == 1.0;
                                                              if (*(v325 + 10) == 1 && v327 != 0.0 && v327 != 1.0)
                                                              {
LABEL_437:
                                                                v331 = *(v325 + 16);
                                                                if (v331)
                                                                {
                                                                  v332 = *(v331 + 72);
                                                                  if (v332)
                                                                  {
                                                                    v333 = *v332 + 120 * *(v332 + v17 + 16);
                                                                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v333, 0x5Du) != *(v333 + 12))
                                                                    {
                                                                      goto LABEL_450;
                                                                    }
                                                                  }

                                                                  if (*(v325 + 56))
                                                                  {
                                                                    v334 = *(v325 + 48);
                                                                    v335 = 8 * *(v325 + 56);
                                                                    while (1)
                                                                    {
                                                                      v336 = *(*v334 + 72);
                                                                      if (v336)
                                                                      {
                                                                        v337 = *v336 + 120 * *(v336 + v17 + 16);
                                                                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v337, 0x5Du) != *(v337 + 12))
                                                                        {
                                                                          goto LABEL_450;
                                                                        }
                                                                      }

                                                                      v334 += 8;
                                                                      v330 = 1;
                                                                      v335 -= 8;
                                                                      if (!v335)
                                                                      {
                                                                        goto LABEL_447;
                                                                      }
                                                                    }
                                                                  }
                                                                }

                                                                v330 = 1;
LABEL_447:
                                                                v338 = *(v325 + 16 * v330 + 16);
                                                                if (!v338)
                                                                {
                                                                  goto LABEL_451;
                                                                }

                                                                v339 = *(v338 + 72);
                                                                if (!v339 || (v340 = *v339 + 120 * *(v339 + v17 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v340, 0x5Du) == *(v340 + 12)))
                                                                {
                                                                  v352 = v325 + 16 * v330;
                                                                  if (!*(v352 + 56))
                                                                  {
LABEL_451:
                                                                    if (v326)
                                                                    {
                                                                      v341 = *v326;
                                                                      v342 = *v326 == 1.0;
                                                                      if (*(v325 + 10) == 1 && v341 != 0.0 && v341 != 1.0)
                                                                      {
LABEL_459:
                                                                        v345 = *(v325 + 16);
                                                                        if (v345)
                                                                        {
                                                                          v346 = *(v345 + 72);
                                                                          if (v346)
                                                                          {
                                                                            v347 = *v346 + 120 * *(v346 + v17 + 16);
                                                                            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v347, 0x1A3u) != *(v347 + 12))
                                                                            {
                                                                              goto LABEL_478;
                                                                            }
                                                                          }

                                                                          if (*(v325 + 56))
                                                                          {
                                                                            v348 = *(v325 + 48);
                                                                            v349 = 8 * *(v325 + 56);
                                                                            while (1)
                                                                            {
                                                                              v350 = *(*v348 + 72);
                                                                              if (v350)
                                                                              {
                                                                                v351 = *v350 + 120 * *(v350 + v17 + 16);
                                                                                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v351, 0x1A3u) != *(v351 + 12))
                                                                                {
                                                                                  goto LABEL_478;
                                                                                }
                                                                              }

                                                                              v348 += 8;
                                                                              v344 = 1;
                                                                              v349 -= 8;
                                                                              if (!v349)
                                                                              {
                                                                                goto LABEL_475;
                                                                              }
                                                                            }
                                                                          }
                                                                        }

                                                                        v344 = 1;
LABEL_475:
                                                                        v357 = *(v325 + 16 * v344 + 16);
                                                                        if (!v357)
                                                                        {
                                                                          goto LABEL_479;
                                                                        }

                                                                        v358 = *(v357 + 72);
                                                                        if (!v358 || (v359 = *v358 + 120 * *(v358 + v17 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v359, 0x1A3u) == *(v359 + 12)))
                                                                        {
                                                                          v371 = v325 + 16 * v344;
                                                                          if (!*(v371 + 56))
                                                                          {
LABEL_479:
                                                                            if (v326)
                                                                            {
                                                                              v360 = *v326;
                                                                              v361 = *v326 == 1.0;
                                                                              if (*(v325 + 10) == 1 && v360 != 0.0 && v360 != 1.0)
                                                                              {
LABEL_487:
                                                                                v364 = *(v325 + 16);
                                                                                if (v364)
                                                                                {
                                                                                  v365 = *(v364 + 72);
                                                                                  if (v365)
                                                                                  {
                                                                                    v366 = *v365 + 120 * *(v365 + v17 + 16);
                                                                                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v366, 0x1F8u) != *(v366 + 12))
                                                                                    {
                                                                                      goto LABEL_506;
                                                                                    }
                                                                                  }

                                                                                  if (*(v325 + 56))
                                                                                  {
                                                                                    v367 = *(v325 + 48);
                                                                                    v368 = 8 * *(v325 + 56);
                                                                                    while (1)
                                                                                    {
                                                                                      v369 = *(*v367 + 72);
                                                                                      if (v369)
                                                                                      {
                                                                                        v370 = *v369 + 120 * *(v369 + v17 + 16);
                                                                                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v370, 0x1F8u) != *(v370 + 12))
                                                                                        {
                                                                                          goto LABEL_506;
                                                                                        }
                                                                                      }

                                                                                      v367 += 8;
                                                                                      v363 = 1;
                                                                                      v368 -= 8;
                                                                                      if (!v368)
                                                                                      {
                                                                                        goto LABEL_503;
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }

                                                                                v363 = 1;
LABEL_503:
                                                                                v376 = *(v325 + 16 * v363 + 16);
                                                                                if (!v376)
                                                                                {
                                                                                  goto LABEL_507;
                                                                                }

                                                                                v377 = *(v376 + 72);
                                                                                if (!v377 || (v378 = *v377 + 120 * *(v377 + v17 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v378, 0x1F8u) == *(v378 + 12)))
                                                                                {
                                                                                  v390 = v325 + 16 * v363;
                                                                                  if (!*(v390 + 56))
                                                                                  {
LABEL_507:
                                                                                    if (v326)
                                                                                    {
                                                                                      v379 = *v326;
                                                                                      v380 = *v326 == 1.0;
                                                                                      if (*(v325 + 10) == 1 && v379 != 0.0 && v379 != 1.0)
                                                                                      {
                                                                                        goto LABEL_515;
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v380 = 0;
                                                                                    }

                                                                                    v382 = *(v325 + v380 + 11);
                                                                                    if (v382 != 2)
                                                                                    {
LABEL_531:
                                                                                      v395 = *(v325 + 16 * v382 + 16);
                                                                                      if (!v395)
                                                                                      {
                                                                                        goto LABEL_535;
                                                                                      }

                                                                                      v396 = *(v395 + 72);
                                                                                      if (v396)
                                                                                      {
                                                                                        v397 = *v396 + 120 * *(v396 + v17 + 16);
                                                                                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v397, 0x1FAu) != *(v397 + 12))
                                                                                        {
                                                                                          goto LABEL_534;
                                                                                        }
                                                                                      }

                                                                                      v399 = v325 + 16 * v382;
                                                                                      if (*(v399 + 56))
                                                                                      {
                                                                                        v400 = *(v399 + 48);
                                                                                        v401 = 8 * *(v399 + 56);
                                                                                        do
                                                                                        {
                                                                                          v402 = *(*v400 + 72);
                                                                                          if (v402)
                                                                                          {
                                                                                            v403 = *v402 + 120 * *(v402 + v17 + 16);
                                                                                            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v403, 0x1FAu) != *(v403 + 12))
                                                                                            {
                                                                                              goto LABEL_534;
                                                                                            }
                                                                                          }

                                                                                          v400 += 8;
                                                                                          v401 -= 8;
                                                                                        }

                                                                                        while (v401);
                                                                                      }

LABEL_535:
                                                                                      if (v428 == 1)
                                                                                      {
                                                                                        (*(*v426.i64[0] + 56))(v426.i64[0]);
                                                                                      }

                                                                                      if (v427)
                                                                                      {
                                                                                        std::__shared_weak_count::__release_shared[abi:nn200100](v427);
                                                                                      }

                                                                                      v273 = v426.i64[1];
                                                                                      if (!v426.i64[1])
                                                                                      {
                                                                                        goto LABEL_541;
                                                                                      }

                                                                                      goto LABEL_540;
                                                                                    }

LABEL_515:
                                                                                    v383 = *(v325 + 16);
                                                                                    if (v383)
                                                                                    {
                                                                                      v384 = *(v383 + 72);
                                                                                      if (v384)
                                                                                      {
                                                                                        v385 = *v384 + 120 * *(v384 + v17 + 16);
                                                                                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v385, 0x1FAu) != *(v385 + 12))
                                                                                        {
LABEL_534:
                                                                                          gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v433, v325, 506, 2u, v221);
                                                                                          *(a1 + 248) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v433)), vdupq_n_s32(0x37800080u));
                                                                                          goto LABEL_535;
                                                                                        }
                                                                                      }

                                                                                      if (*(v325 + 56))
                                                                                      {
                                                                                        v386 = *(v325 + 48);
                                                                                        v387 = 8 * *(v325 + 56);
                                                                                        while (1)
                                                                                        {
                                                                                          v388 = *(*v386 + 72);
                                                                                          if (v388)
                                                                                          {
                                                                                            v389 = *v388 + 120 * *(v388 + v17 + 16);
                                                                                            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v389, 0x1FAu) != *(v389 + 12))
                                                                                            {
                                                                                              goto LABEL_534;
                                                                                            }
                                                                                          }

                                                                                          v386 += 8;
                                                                                          v382 = 1;
                                                                                          v387 -= 8;
                                                                                          if (!v387)
                                                                                          {
                                                                                            goto LABEL_531;
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }

                                                                                    v382 = 1;
                                                                                    goto LABEL_531;
                                                                                  }

                                                                                  v391 = *(v390 + 48);
                                                                                  v392 = 8 * *(v390 + 56);
                                                                                  while (1)
                                                                                  {
                                                                                    v393 = *(*v391 + 72);
                                                                                    if (v393)
                                                                                    {
                                                                                      v394 = *v393 + 120 * *(v393 + v17 + 16);
                                                                                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v394, 0x1F8u) != *(v394 + 12))
                                                                                      {
                                                                                        break;
                                                                                      }
                                                                                    }

                                                                                    v391 += 8;
                                                                                    v392 -= 8;
                                                                                    if (!v392)
                                                                                    {
                                                                                      goto LABEL_507;
                                                                                    }
                                                                                  }
                                                                                }

LABEL_506:
                                                                                gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v433, v325, 504, 2u, v221);
                                                                                *(a1 + 232) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v433)), vdupq_n_s32(0x37800080u));
                                                                                v325 = *(v426.i64[0] + 24);
                                                                                v326 = *v325;
                                                                                goto LABEL_507;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v361 = 0;
                                                                            }

                                                                            v363 = *(v325 + v361 + 11);
                                                                            if (v363 != 2)
                                                                            {
                                                                              goto LABEL_503;
                                                                            }

                                                                            goto LABEL_487;
                                                                          }

                                                                          v372 = *(v371 + 48);
                                                                          v373 = 8 * *(v371 + 56);
                                                                          while (1)
                                                                          {
                                                                            v374 = *(*v372 + 72);
                                                                            if (v374)
                                                                            {
                                                                              v375 = *v374 + 120 * *(v374 + v17 + 16);
                                                                              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v375, 0x1A3u) != *(v375 + 12))
                                                                              {
                                                                                break;
                                                                              }
                                                                            }

                                                                            v372 += 8;
                                                                            v373 -= 8;
                                                                            if (!v373)
                                                                            {
                                                                              goto LABEL_479;
                                                                            }
                                                                          }
                                                                        }

LABEL_478:
                                                                        gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v433, v325, 419, 2u, v221);
                                                                        *(a1 + 216) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v433)), vdupq_n_s32(0x37800080u));
                                                                        v325 = *(v426.i64[0] + 24);
                                                                        v326 = *v325;
                                                                        goto LABEL_479;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v342 = 0;
                                                                    }

                                                                    v344 = *(v325 + v342 + 11);
                                                                    if (v344 != 2)
                                                                    {
                                                                      goto LABEL_475;
                                                                    }

                                                                    goto LABEL_459;
                                                                  }

                                                                  v353 = *(v352 + 48);
                                                                  v354 = 8 * *(v352 + 56);
                                                                  while (1)
                                                                  {
                                                                    v355 = *(*v353 + 72);
                                                                    if (v355)
                                                                    {
                                                                      v356 = *v355 + 120 * *(v355 + v17 + 16);
                                                                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v356, 0x5Du) != *(v356 + 12))
                                                                      {
                                                                        break;
                                                                      }
                                                                    }

                                                                    v353 += 8;
                                                                    v354 -= 8;
                                                                    if (!v354)
                                                                    {
                                                                      goto LABEL_451;
                                                                    }
                                                                  }
                                                                }

LABEL_450:
                                                                gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v433, v325, 93, 2u, v221);
                                                                *(a1 + 200) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v433)), vdupq_n_s32(0x37800080u));
                                                                v325 = *(v426.i64[0] + 24);
                                                                v326 = *v325;
                                                                goto LABEL_451;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v328 = 0;
                                                            }

                                                            v330 = *(v325 + v328 + 11);
                                                            if (v330 != 2)
                                                            {
                                                              goto LABEL_447;
                                                            }

                                                            goto LABEL_437;
                                                          }
                                                        }

                                                        v298 = v281 + 16 * v285;
                                                        if (*(v298 + 56))
                                                        {
                                                          v299 = *(v298 + 48);
                                                          v300 = 8 * *(v298 + 56);
                                                          do
                                                          {
                                                            v301 = *(*v299 + 72);
                                                            if (v301)
                                                            {
                                                              v302 = *v301 + 120 * *(v301 + v17 + 16);
                                                              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v302, 0x5Cu) != *(v302 + 12))
                                                              {
                                                                goto LABEL_394;
                                                              }
                                                            }

                                                            v299 += 8;
                                                            v300 -= 8;
                                                          }

                                                          while (v300);
                                                        }
                                                      }

                                                      *(a1 + 180) = *(a1 + 180) * v279;
                                                      goto LABEL_401;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v256 = 0;
                                                  }

                                                  v257 = *(v235 + v256 + 11);
                                                  if (v257 != 2)
                                                  {
                                                    goto LABEL_346;
                                                  }

                                                  goto LABEL_336;
                                                }

                                                v248 = *(v247 + 72);
                                                v189 = v421;
                                                if (!v248 || (v249 = *v248 + 120 * *(v248 + v17 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v249, 0x5Cu) == *(v249 + 12)))
                                                {
                                                  v250 = v235 + 16 * v239;
                                                  v247 = *(v250 + 56);
                                                  if (!*(v250 + 56))
                                                  {
                                                    goto LABEL_325;
                                                  }

                                                  v251 = *(v250 + 48);
                                                  v252 = 8 * v247;
                                                  while (1)
                                                  {
                                                    v253 = *(*v251 + 72);
                                                    if (v253)
                                                    {
                                                      v254 = *v253 + 120 * *(v253 + v17 + 16);
                                                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v254, 0x5Cu) != *(v254 + 12))
                                                      {
                                                        break;
                                                      }
                                                    }

                                                    LOBYTE(v247) = 0;
                                                    v251 += 8;
                                                    v252 -= 8;
                                                    if (!v252)
                                                    {
                                                      goto LABEL_325;
                                                    }
                                                  }
                                                }

LABEL_316:
                                                LOBYTE(v247) = 1;
                                                goto LABEL_325;
                                              }
                                            }

                                            else
                                            {
                                              v238 = 0;
                                            }

                                            v239 = *(v235 + v238 + 11);
                                            if (v239 != 2)
                                            {
                                              goto LABEL_313;
                                            }

                                            goto LABEL_303;
                                          }

LABEL_560:
                                          buf[0] = 1;
                                          v426.i8[0] = 1;
                                          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v205, 464, 0, buf, v221);
                                          v405 = v404;
                                          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v205, 464, 1, &v426, v221);
                                          v225 = v405 + ((v406 - v405) * v222);
                                          goto LABEL_290;
                                        }
                                      }

                                      else
                                      {
                                        v209 = 0;
                                      }

                                      v211 = *(v205 + v209 + 11);
                                      v208 = 0.0;
                                      if (v211 != 2)
                                      {
                                        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v205, 505, v211, 0, v206);
                                        v213 = v212;
                                        goto LABEL_284;
                                      }

                                      goto LABEL_564;
                                    }

                                    v160 = *(v159 + 48);
                                    v161 = 8 * *(v159 + 56);
                                    while (1)
                                    {
                                      v162 = *(*v160 + 72);
                                      if (v162)
                                      {
                                        v163 = *v162 + 120 * *(v162 + v17 + 16);
                                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v163, 0x1FAu) != *(v163 + 12))
                                        {
                                          break;
                                        }
                                      }

                                      v160 += 8;
                                      v161 -= 8;
                                      if (!v161)
                                      {
                                        goto LABEL_209;
                                      }
                                    }
                                  }

LABEL_208:
                                  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(buf, v129, 506, v17, 2u, 0, v137, v138);
                                  *(a1 + 104) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*buf)), vdupq_n_s32(0x37800080u));
                                  v129 = v429[3];
                                  goto LABEL_209;
                                }

                                v127 = *(v126 + 72);
                                if (!v127 || (v128 = *v127 + 120 * *(v127 + v17 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v128, 0x1A3u) == *(v128 + 12)))
                                {
                                  v143 = v90 + 16 * v111;
                                  if (!*(v143 + 56))
                                  {
                                    goto LABEL_181;
                                  }

                                  v144 = *(v143 + 48);
                                  v145 = 8 * *(v143 + 56);
                                  while (1)
                                  {
                                    v146 = *(*v144 + 72);
                                    if (v146)
                                    {
                                      v147 = *v146 + 120 * *(v146 + v17 + 16);
                                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v147, 0x1A3u) != *(v147 + 12))
                                      {
                                        break;
                                      }
                                    }

                                    v144 += 8;
                                    v145 -= 8;
                                    if (!v145)
                                    {
                                      goto LABEL_181;
                                    }
                                  }
                                }

LABEL_180:
                                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(buf, v90, 419, v17, 2u, 0, v115, v116);
                                *(a1 + 72) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*buf)), vdupq_n_s32(0x37800080u));
                                v89 = v429;
                                goto LABEL_181;
                              }
                            }

                            else
                            {
                              v109 = 0;
                            }

                            v111 = *(v90 + v109 + 11);
                            if (v111 != 2)
                            {
                              goto LABEL_177;
                            }

                            goto LABEL_161;
                          }

                          v122 = *(v121 + 48);
                          v123 = 8 * *(v121 + 56);
                          while (1)
                          {
                            v124 = *(*v122 + 72);
                            if (v124)
                            {
                              v125 = *v124 + 120 * *(v124 + v17 + 16);
                              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v125, 0xF0u) != *(v125 + 12))
                              {
                                break;
                              }
                            }

                            v122 += 8;
                            v123 -= 8;
                            if (!v123)
                            {
                              goto LABEL_153;
                            }
                          }
                        }

LABEL_152:
                        gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(buf, v90, 240, v17, 2u, 0, v99, v100);
                        *(a1 + 40) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*buf)), vdupq_n_s32(0x37800080u));
                        v89 = v429;
                        v90 = v429[3];
                        v91 = *v90;
                        goto LABEL_153;
                      }
                    }

                    else
                    {
                      v93 = 0;
                    }

                    v95 = *(v90 + v93 + 11);
                    if (v95 != 2)
                    {
                      goto LABEL_149;
                    }

                    goto LABEL_139;
                  }

                  v84 = *(v83 + 48);
                  v85 = 8 * *(v83 + 56);
                  while (1)
                  {
                    v86 = *(*v84 + 72);
                    if (v86)
                    {
                      v87 = *v86 + 120 * *(v86 + v17 + 16);
                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v87, 0x13Fu) != *(v87 + 12))
                      {
                        break;
                      }
                    }

                    v84 += 8;
                    v85 -= 8;
                    if (!v85)
                    {
                      goto LABEL_95;
                    }
                  }
                }

LABEL_94:
                v61.n128_u32[1] = 0;
                v61.n128_f32[0] = fminf(fmaxf(v12, 0.0), 23.0);
                *(a1 + 264) = gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<unsigned int>(v53, v61);
                v53 = v429[3];
                goto LABEL_95;
              }
            }

            v50 = 0;
            goto LABEL_60;
          }
        }

        else
        {
          v32 = 0;
        }

        v34 = *(v16 + v32 + 11);
        if (v34 != 2)
        {
          goto LABEL_56;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v19 = 0;
    }

    v21 = *(v16 + v19 + 11);
    if (v21 != 2)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

LABEL_549:
  if (v431)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v431);
  }

  if (v430)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v430);
  }

  return a1;
}

void sub_1B2B29EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, char a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, std::__shared_weak_count *a28, char a29)
{
  if (a29 == 1)
  {
    (*(*a25 + 56))(a25, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a28);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a26);
  }

  if (a23 == 1)
  {
    (*(*a19 + 56))(a19);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v29 + 272));
  _Unwind_Resume(a1);
}

unint64_t md::VKMRenderResourcesStore::createConstantDataHandle<ggl::DaVinci::MaterialStyle,md::VKMShinyStyleCacheKey>(int8x8_t *a1, float *a2)
{
  v3 = a1[1528];
  v4 = a1[1530];
  if (*&a1[1527] == *&v3)
  {
    v5 = ((*&a1[1531] - *&v4) >> 3) | 0x100000000;
    v86 = v5;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&a1[1530], &v86);
  }

  else
  {
    v5 = *(*&v4 + 8 * *(*&v3 - 8));
    a1[1528] = (*&v3 - 8);
  }

  v86 = v5;
  v6 = v5 >> 6;
  v7 = a1[1503];
  v8 = a1[1502];
  if (v6 >= (*&v7 - *&v8) >> 3)
  {
    v9 = v6 + 1;
    v10 = v6 + 1 - ((*&v7 - *&v8) >> 3);
    v11 = a1[1504];
    if (v10 > (*&v11 - *&v7) >> 3)
    {
      v12 = *&v11 - *&v8;
      if (v12 >> 2 > v9)
      {
        v9 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v9;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v13);
    }

    bzero(*&a1[1503], 8 * v10);
    a1[1503] = (*&v7 + 8 * v10);
    v8 = a1[1502];
  }

  v14 = *(*&v8 + 8 * v6);
  if (!v14)
  {
    operator new();
  }

  v15 = (v14 + 16 * (v5 & 0x3F));
  if (*v15 == -1 && v15[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&a1[1505], &v86);
    v17 = ((*&a1[1506] - *&a1[1505]) >> 3) - 1;
    *v15 = HIDWORD(v5);
    v15[1] = v17;
    v18 = v17 & 0x3F;
    v19 = *(*&a1[1508] + 8 * ecs2::pool<md::Counter,64ul>::page_at_index(&a1[1508], v17)) + 24 * v18;
    *v19 = xmmword_1B33B09D0;
    *(v19 + 16) = 0;
    v20 = v17 >> 6;
    v21 = a1[1515];
    v22 = a1[1514];
    v23 = *&v21 - *&v22;
    v84 = v18;
    if (v17 >> 6 < (*&v21 - *&v22) >> 3)
    {
LABEL_50:
      v43 = *(*&v22 + 8 * v20) + 24 * v18;
      *v43 = 0uLL;
      *(v43 + 16) = 0;
      v44 = a1[1521];
      v45 = a1[1520];
      v46 = *&v44 - *&v45;
      if (v20 < (*&v44 - *&v45) >> 3)
      {
LABEL_80:
        *(*(*&v45 + 8 * v20) + 8 * v18) = 0;
        goto LABEL_81;
      }

      v47 = v20 + 1;
      v48 = v20 + 1 - (v46 >> 3);
      v49 = a1[1522];
      if (v48 > (*&v49 - *&v44) >> 3)
      {
        v50 = *&v49 - *&v45;
        v51 = (*&v49 - *&v45) >> 2;
        if (v51 <= v47)
        {
          v51 = v20 + 1;
        }

        if (v50 >= 0x7FFFFFFFFFFFFFF8)
        {
          v52 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v52 = v51;
        }

        if (!(v52 >> 61))
        {
          operator new();
        }

        goto LABEL_125;
      }

      v53 = 0;
      v54 = (v48 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v55 = vdupq_n_s64(v54);
      do
      {
        v56 = vmovn_s64(vcgeq_u64(v55, vorrq_s8(vdupq_n_s64(v53), xmmword_1B33B0560)));
        if (v56.i8[0])
        {
          *(*&v44 + 8 * v53) = 0;
        }

        if (v56.i8[4])
        {
          *(*&v44 + 8 * v53 + 8) = 0;
        }

        v53 += 2;
      }

      while (v54 - ((v48 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v53);
      a1[1521] = (*&v44 + 8 * v48);
      v57 = a1[1524];
      v58 = a1[1523];
      v59 = (*&v57 - *&v58) >> 4;
      if (v59 > v20)
      {
        if (v47 >= v59)
        {
          goto LABEL_78;
        }

        v60 = (*&v58 + 16 * v47);
LABEL_77:
        a1[1524] = v60;
LABEL_78:
        v45 = a1[1520];
        v18 = v84;
        if (v46 < *&a1[1521] - *&v45)
        {
          operator new();
        }

        goto LABEL_80;
      }

      v61 = v47 - v59;
      v62 = a1[1525];
      if (v61 <= (*&v62 - *&v57) >> 4)
      {
        bzero(*&a1[1524], 16 * v61);
        v60 = (*&v57 + 16 * v61);
        goto LABEL_77;
      }

      v63 = *&v62 - *&v58;
      v64 = v63 >> 3;
      if (v63 >> 3 <= v47)
      {
        v64 = v20 + 1;
      }

      if (v63 >= 0x7FFFFFFFFFFFFFF0)
      {
        v65 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v65 = v64;
      }

      if (!(v65 >> 60))
      {
        operator new();
      }

LABEL_125:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v24 = v20 + 1;
    v25 = v20 + 1 - (v23 >> 3);
    v26 = a1[1516];
    if (v25 > (*&v26 - *&v21) >> 3)
    {
      v27 = *&v26 - *&v22;
      v28 = (*&v26 - *&v22) >> 2;
      if (v28 <= v24)
      {
        v28 = v20 + 1;
      }

      if (v27 >= 0x7FFFFFFFFFFFFFF8)
      {
        v29 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v28;
      }

      if (!(v29 >> 61))
      {
        operator new();
      }

      goto LABEL_125;
    }

    v30 = 0;
    v31 = (v25 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v32 = vdupq_n_s64(v31);
    do
    {
      v33 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(vdupq_n_s64(v30), xmmword_1B33B0560)));
      if (v33.i8[0])
      {
        *(*&v21 + 8 * v30) = 0;
      }

      if (v33.i8[4])
      {
        *(*&v21 + 8 * v30 + 8) = 0;
      }

      v30 += 2;
    }

    while (v31 - ((v25 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v30);
    a1[1515] = (*&v21 + 8 * v25);
    v34 = a1[1518];
    v35 = a1[1517];
    v36 = (*&v34 - *&v35) >> 4;
    if (v36 <= v20)
    {
      v38 = v24 - v36;
      v39 = a1[1519];
      if (v38 > (*&v39 - *&v34) >> 4)
      {
        v40 = *&v39 - *&v35;
        v41 = v40 >> 3;
        if (v40 >> 3 <= v24)
        {
          v41 = v20 + 1;
        }

        if (v40 >= 0x7FFFFFFFFFFFFFF0)
        {
          v42 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v41;
        }

        if (!(v42 >> 60))
        {
          operator new();
        }

        goto LABEL_125;
      }

      bzero(*&a1[1518], 16 * v38);
      v37 = (*&v34 + 16 * v38);
    }

    else
    {
      if (v24 >= v36)
      {
        goto LABEL_48;
      }

      v37 = (*&v35 + 16 * v24);
    }

    a1[1518] = v37;
LABEL_48:
    v22 = a1[1514];
    v18 = v84;
    if (v23 < *&a1[1515] - *&v22)
    {
      operator new();
    }

    goto LABEL_50;
  }

LABEL_81:
  v66 = a2[1];
  v67 = *a2;
  if (*a2 == 0.0)
  {
    v67 = 0;
  }

  v68 = LODWORD(v66) - 0x61C8864680B583EBLL;
  if (v66 == 0.0)
  {
    v68 = 0x9E3779B97F4A7C15;
  }

  v69 = ((v67 >> 2) + (v67 << 6) + v68) ^ v67;
  v70 = a1[1546];
  if (!*&v70)
  {
    goto LABEL_106;
  }

  v71 = vcnt_s8(v70);
  v71.i16[0] = vaddlv_u8(v71);
  if (v71.u32[0] > 1uLL)
  {
    v72 = ((v67 >> 2) + (v67 << 6) + v68) ^ v67;
    if (v69 >= *&v70)
    {
      v72 = v69 % *&v70;
    }
  }

  else
  {
    v72 = v69 & (*&v70 - 1);
  }

  v73 = *(*&a1[1545] + 8 * v72);
  if (!v73 || (v74 = *v73) == 0)
  {
LABEL_106:
    operator new();
  }

  while (1)
  {
    v75 = *(v74 + 1);
    if (v75 == v69)
    {
      break;
    }

    if (v71.u32[0] > 1uLL)
    {
      if (v75 >= *&v70)
      {
        v75 %= *&v70;
      }
    }

    else
    {
      v75 &= *&v70 - 1;
    }

    if (v75 != v72)
    {
      goto LABEL_106;
    }

LABEL_105:
    v74 = *v74;
    if (!v74)
    {
      goto LABEL_106;
    }
  }

  if (v74[4] != *a2 || v74[5] != v66)
  {
    goto LABEL_105;
  }

  *(v74 + 3) = v5;
  v77 = a1[1551];
  if (!*&v77)
  {
    goto LABEL_124;
  }

  v78 = vcnt_s8(v77);
  v78.i16[0] = vaddlv_u8(v78);
  if (v78.u32[0] > 1uLL)
  {
    v79 = v5;
    if (v5 >= *&v77)
    {
      v79 = v5 % *&v77;
    }
  }

  else
  {
    v79 = (*&v77 - 1) & v5;
  }

  v80 = *(*&a1[1550] + 8 * v79);
  if (!v80 || (v81 = *v80) == 0)
  {
LABEL_124:
    operator new();
  }

  while (2)
  {
    v82 = v81[1];
    if (v82 != v5)
    {
      if (v78.u32[0] > 1uLL)
      {
        if (v82 >= *&v77)
        {
          v82 %= *&v77;
        }
      }

      else
      {
        v82 &= *&v77 - 1;
      }

      if (v82 != v79)
      {
        goto LABEL_124;
      }

      goto LABEL_123;
    }

    if (v81[2] != v5)
    {
LABEL_123:
      v81 = *v81;
      if (!v81)
      {
        goto LABEL_124;
      }

      continue;
    }

    break;
  }

  v81[3] = *a2;
  return v5;
}

void sub_1B2B2B04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  operator delete(v15);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  _Unwind_Resume(a1);
}

unint64_t md::VKMRenderResourcesStore::pop<ggl::DaVinci::MaterialStyle>(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 1501, a2);
  if (v3 != a1[1506])
  {
    v5 = v3;
    v6 = a1[1505];
    v7 = a1[1539];
    if (a1[1538] == v7)
    {
      v8 = a1[1544];
      if (!v8)
      {
        std::__throw_bad_function_call[abi:nn200100]();
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v4 = (*(*v8 + 48))(v8);
    }

    else
    {
      v4 = *(v7 - 8);
      a1[1539] = v7 - 8;
    }

    v9 = 0x9DDFEA08EB382D69 * ((8 * (v4 & 0x1FFFFFFF) + 8) ^ HIDWORD(v4));
    v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v9 >> 47) ^ v9);
    v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
    v12 = a1[1534];
    if (!*&v12)
    {
      goto LABEL_24;
    }

    v13 = vcnt_s8(v12);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      v14 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
      if (v11 >= *&v12)
      {
        v14 = v11 % *&v12;
      }
    }

    else
    {
      v14 = v11 & (*&v12 - 1);
    }

    v15 = *(a1[1533] + 8 * v14);
    if (!v15 || (v16 = *v15) == 0)
    {
LABEL_24:
      operator new();
    }

    while (1)
    {
      v17 = v16[1];
      if (v17 == v11)
      {
        if (v16[2] == v4)
        {
          v18 = (((v5 - v6) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
          v19 = *(a1[1508] + v18);
          v20 = ((v5 - v6) >> 3) & 0x3F;
          v21 = *(a1[1514] + v18);
          v22 = *(a1[1520] + v18);
          *(v21 + 24 * v20) = v4;
          ++*(v19 + 24 * v20);
          *(v22 + 8 * v20) = v4;
          return v4;
        }
      }

      else
      {
        if (v13.u32[0] > 1uLL)
        {
          if (v17 >= *&v12)
          {
            v17 %= *&v12;
          }
        }

        else
        {
          v17 &= *&v12 - 1;
        }

        if (v17 != v14)
        {
          goto LABEL_24;
        }
      }

      v16 = *v16;
      if (!v16)
      {
        goto LABEL_24;
      }
    }
  }

  return 0;
}

void *gms::BasicMaterial<ggl::Texture2D>::gradientMaskFactor@<X0>(uint64_t a1@<X0>, float32x4_t *a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if (v6 <= 0.00000011921 && (v7 = *(a1 + 16)) != 0 || v6 >= 1.0 && (v7 = *(a1 + 32)) != 0)
  {
    v8 = *(*v7 + 552);

    return v8(a3);
  }

  else
  {
    v13 = v6;
    v10 = *(a1 + 16);
    if (v10)
    {
      (*(*v10 + 552))(&v16, a3.n128_f32[0]);
    }

    else
    {
      v16.i8[0] = 0;
      v17 = 0;
    }

    result = *(a1 + 32);
    if (result)
    {
      result = (*(*result + 552))(&v14, v3);
    }

    else
    {
      v14.i8[0] = 0;
      v15 = 0;
    }

    if (v17 == 1)
    {
      if (v15 == 1)
      {
        v11 = vmlaq_n_f32(v16, vsubq_f32(v14, v16), v13);
      }

      else
      {
        v11 = v16;
      }

      *a2 = v11;
      v12 = a2 + 1;
    }

    else
    {
      a2->i8[0] = 0;
      a2[1].i8[0] = 0;
      if (v15 != 1)
      {
        return result;
      }

      *a2 = v14;
      v12 = a2 + 1;
    }

    v12->i8[0] = 1;
  }

  return result;
}

unint64_t md::add2(uint64_t a1, void *a2, char a3)
{
  v8 = *(a1 + 184);
  v6 = a1 + 184;
  v7 = v8;
  v9 = *(v6 - 16);
  if (*(v6 - 24) == v9)
  {
    v10 = ((*(a1 + 192) - v7) >> 3) | 0x100000000;
    v52.i64[0] = v10;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v6, &v52);
  }

  else
  {
    v10 = *(v7 + 8 * *(v9 - 8));
    *(a1 + 168) = v9 - 8;
  }

  v51 = v10;
  v11 = *a2;
  v52 = vdupq_n_s64(1uLL);
  LOBYTE(v53) = 1;
  BYTE1(v53) = a3;
  v12 = v10 >> 6;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  if (v12 >= (v14 - v13) >> 3)
  {
    v15 = v12 + 1;
    v16 = v12 + 1 - ((v14 - v13) >> 3);
    v17 = *(a1 + 24);
    if (v16 > (v17 - v14) >> 3)
    {
      v18 = v17 - v13;
      if (v18 >> 2 > v15)
      {
        v15 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v15;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v19);
    }

    bzero(*(a1 + 16), 8 * v16);
    *(a1 + 16) = v14 + 8 * v16;
    v13 = *(a1 + 8);
  }

  v20 = *(v13 + 8 * v12);
  if (!v20)
  {
    operator new();
  }

  v21 = (v20 + 16 * (v10 & 0x3F));
  if (*v21 == -1 && v21[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 32, &v51);
    v23 = ((*(a1 + 40) - *(a1 + 32)) >> 3) - 1;
    *v21 = HIDWORD(v10);
    v21[1] = v23;
    v54 = v11;
    v24 = v23 & 0x3F;
    v25 = *(*(a1 + 56) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 56), v23)) + 24 * v24;
    v26 = v54;
    *(v25 + 16) = v53;
    *v25 = v52;
    v27 = v23 >> 6;
    v29 = *(a1 + 104);
    v28 = *(a1 + 112);
    v30 = v28 - v29;
    if (v23 >> 6 >= (v28 - v29) >> 3)
    {
      v31 = v27 + 1;
      v32 = v27 + 1 - (v30 >> 3);
      v33 = *(a1 + 120);
      if (v32 > (v33 - v28) >> 3)
      {
        v34 = v33 - v29;
        v35 = (v33 - v29) >> 2;
        if (v35 <= v31)
        {
          v35 = v27 + 1;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFF8)
        {
          v36 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v35;
        }

        if (!(v36 >> 61))
        {
          operator new();
        }

        goto LABEL_51;
      }

      v37 = 0;
      v38 = (v32 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v39 = vdupq_n_s64(v38);
      do
      {
        v40 = vmovn_s64(vcgeq_u64(v39, vorrq_s8(vdupq_n_s64(v37), xmmword_1B33B0560)));
        if (v40.i8[0])
        {
          *(v28 + 8 * v37) = 0;
        }

        if (v40.i8[4])
        {
          *(v28 + 8 * v37 + 8) = 0;
        }

        v37 += 2;
      }

      while (v38 - ((v32 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v37);
      *(a1 + 112) = v28 + 8 * v32;
      v41 = *(a1 + 128);
      v42 = *(a1 + 136);
      v43 = &v42[-v41] >> 4;
      if (v43 <= v27)
      {
        v50 = v24;
        v44 = v31 - v43;
        v45 = *(a1 + 144);
        if (v44 > (v45 - v42) >> 4)
        {
          v46 = v45 - v41;
          v47 = v46 >> 3;
          if (v46 >> 3 <= v31)
          {
            v47 = v27 + 1;
          }

          if (v46 >= 0x7FFFFFFFFFFFFFF0)
          {
            v48 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v48 = v47;
          }

          if (!(v48 >> 60))
          {
            operator new();
          }

LABEL_51:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        bzero(v42, 16 * v44);
        *(a1 + 136) = &v42[16 * v44];
        v24 = v50;
      }

      else if (v31 < v43)
      {
        *(a1 + 136) = v41 + 16 * v31;
      }

      v29 = *(a1 + 104);
      if (v30 < (*(a1 + 112) - v29))
      {
        operator new();
      }
    }

    *(*(v29 + 8 * v27) + 8 * v24) = *v26;
  }

  return v10;
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::StencilRefValueToUse>(ecs2::Entity,md::ls::StencilRefValueToUse &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A0DFD8;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::StencilRefValueToUse>(ecs2::Entity,md::ls::StencilRefValueToUse &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StencilRefValueToUse>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StencilRefValueToUse>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::StencilRefValueToUse>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StencilRefValueToUse>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StencilRefValueToUse>(void)::metadata) = *(a2 + 4096);
}

void md::RouteRenderLayer::layoutOverlay(uint64_t a1, uint64_t a2, float32x2_t *a3, char a4, void *a5)
{
  v5 = a3;
  v1350 = *MEMORY[0x1E69E9840];
  v7 = *a3;
  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(*&v7 + 200) >= 1.0 || *(*&v7 + 176))
  {
    v8 = 0;
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v63 = [[VKTimedAnimation alloc] initWithDuration:0.25];
  v64 = *(*&v7 + 176);
  *(*&v7 + 176) = v63;

  *v1277 = MEMORY[0x1E69E9820];
  *&v1277[8] = 3321888768;
  *&v1277[16] = ___ZN2md16RouteRenderLayer27startRouteAnimationIfNeededERKNS_13LayoutContextENSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke;
  *&v1277[24] = &__block_descriptor_48_ea8_32c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE_e8_v12__0f8l;
  *&v1277[32] = v7;
  *&v1277[40] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [*(*&v7 + 176) setStepHandler:v1277];
  v1251[0] = MEMORY[0x1E69E9820];
  v1251[1] = 3321888768;
  *&v1252 = ___ZN2md16RouteRenderLayer27startRouteAnimationIfNeededERKNS_13LayoutContextENSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke_8;
  *(&v1252 + 1) = &__block_descriptor_48_ea8_32c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE_e8_v12__0B8l;
  *&v1253 = v7;
  *(&v1253 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [*(*&v7 + 176) setCompletionHandler:v1251];
  md::AnimationRunner::runAnimation(*(a1 + 88), *(*&v7 + 176));
  if (*(&v1253 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v1253 + 1));
  }

  if (*&v1277[40])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v1277[40]);
  }

  v8 = 1;
  if (v6)
  {
LABEL_6:
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

LABEL_7:
  v10 = *v5;
  v9 = v5[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(*&v10 + 204);
  v1238 = v5;
  if (*(*&v10 + 208) == 1)
  {
    if (v11 >= 1.0 || *(*&v10 + 184))
    {
      goto LABEL_27;
    }

    v12 = [[VKTimedAnimation alloc] initWithDuration:0.25];
    v13 = *(*&v10 + 184);
    *(*&v10 + 184) = v12;

    *v1277 = MEMORY[0x1E69E9820];
    *&v1277[8] = 3321888768;
    *&v1277[16] = ___ZN2md16RouteRenderLayer28startArrowAnimationsIfNeededENSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke;
    *&v1277[24] = &__block_descriptor_48_ea8_32c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE_e8_v12__0f8l;
    *&v1277[32] = v10;
    *&v1277[40] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [*(*&v10 + 184) setStepHandler:v1277];
    v1251[0] = MEMORY[0x1E69E9820];
    v1251[1] = 3321888768;
    *&v1252 = ___ZN2md16RouteRenderLayer28startArrowAnimationsIfNeededENSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke_8;
    *(&v1252 + 1) = &__block_descriptor_48_ea8_32c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE_e8_v12__0B8l;
    *&v1253 = v10;
    *(&v1253 + 1) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    if (v11 <= 0.0 || *(*&v10 + 184))
    {
      goto LABEL_27;
    }

    v14 = [[VKTimedAnimation alloc] initWithDuration:0.25];
    v15 = *(*&v10 + 184);
    *(*&v10 + 184) = v14;

    *v1277 = MEMORY[0x1E69E9820];
    *&v1277[8] = 3321888768;
    *&v1277[16] = ___ZN2md16RouteRenderLayer28startArrowAnimationsIfNeededENSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke_13;
    *&v1277[24] = &__block_descriptor_48_ea8_32c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE_e8_v12__0f8l;
    *&v1277[32] = v10;
    *&v1277[40] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [*(*&v10 + 184) setStepHandler:v1277];
    v1251[0] = MEMORY[0x1E69E9820];
    v1251[1] = 3321888768;
    *&v1252 = ___ZN2md16RouteRenderLayer28startArrowAnimationsIfNeededENSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke_2;
    *(&v1252 + 1) = &__block_descriptor_48_ea8_32c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE_e8_v12__0B8l;
    *&v1253 = v10;
    *(&v1253 + 1) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  [*(*&v10 + 184) setCompletionHandler:v1251];
  md::AnimationRunner::runAnimation(*(a1 + 88), *(*&v10 + 184));
  if (*(&v1253 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v1253 + 1));
  }

  if (*&v1277[40])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v1277[40]);
  }

LABEL_27:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v16 = *v5;
  if (!*(*v5 + 216))
  {
    _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_4Tile4ViewEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(v1277);
  }

  if (!v16[29])
  {
    md::GeometryLogic::createUnitTransformConstantData(v1277);
  }

  if (!v16[31])
  {
    _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_19SinglePassRouteLine10ClipParamsEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(v1277);
  }

  v17 = *(a2 + 8);
  v18 = md::LayoutContext::get<md::CameraContext>(v17);
  v1185 = gdc::Context::context<md::RouteOverlayContext>(v17);
  v19 = md::LayoutContext::get<md::NavigationContext>(v17);
  v20 = gdc::Context::context<md::RouteLineContext>(v17);
  v21 = md::LayoutContext::get<md::SettingsContext>(v17);
  v1178 = v20[19];
  ggl::DataAccess<ggl::Tile::View>::DataAccess(buf, v16[27], 1);
  v22 = 0;
  v23 = *v5 + 8;
  v24 = 808;
  do
  {
    v25 = 0;
    v26 = v23;
    do
    {
      v27 = 0;
      v28 = 0.0;
      v29 = v24;
      do
      {
        v28 = v28 + *(v26 + v27) * *(v18 + v29);
        v27 += 8;
        v29 += 32;
      }

      while (v27 != 32);
      *&v1277[32 * v25++ + 8 * v22] = v28;
      v26 += 32;
    }

    while (v25 != 4);
    ++v22;
    v24 += 8;
  }

  while (v22 != 4);
  v1162 = v18 + 202;
  v30 = 0;
  v31 = v1277;
  do
  {
    v33 = *v31;
    v32 = v31[1];
    v31 += 2;
    *&v1251[v30] = vcvt_hight_f32_f64(vcvt_f32_f64(v33), v32);
    v30 += 2;
  }

  while (v30 != 8);
  v34 = buf[2].i64[1];
  *buf[2].i64[1] = *v1251;
  *(v34 + 16) = v1252;
  *(v34 + 32) = v1253;
  *(v34 + 48) = v1254[0];
  *(v34 + 64) = v1178;
  ggl::BufferMemory::~BufferMemory(buf);
  v35 = md::LayoutContext::cameraType(a2);
  if (gdc::ToCoordinateSystem(v35))
  {
    v36 = gdc::CameraView::position((v18 + 950));
    v37 = md::GlobeClipPlane(*v36, v36[1], v36[2]);
    v39 = v38;
    v41 = v40;
    v43 = v42;
  }

  else
  {
    v37 = 0.0;
    v39 = 0;
    v41 = 0;
    v43 = 0;
  }

  v1169 = v21;
  ggl::DataAccess<ggl::Tile::View>::DataAccess(v1251, *(*v5 + 248), 1);
  v44 = 0;
  v45 = (*v5 + 8);
  do
  {
    v47 = *v45;
    v46 = v45[1];
    v45 += 2;
    *&v1277[v44] = vcvt_hight_f32_f64(vcvt_f32_f64(v47), v46);
    v44 += 16;
  }

  while (v44 != 64);
  v48 = *(&v1253 + 1);
  **(&v1253 + 1) = *v1277;
  *(v48 + 16) = *&v1277[16];
  *(v48 + 32) = *&v1277[32];
  *(v48 + 48) = *&v1277[48];
  *(v48 + 64) = v37;
  *(v48 + 68) = v39;
  *(v48 + 72) = v41;
  *(v48 + 76) = v43;
  ggl::BufferMemory::~BufferMemory(v1251);
  v1179 = v19;
  obj = v18;
  if (!*(*v5 + 312))
  {
    md::LayoutContext::get<md::SharedResourcesContext>(*(a2 + 8));
    operator new();
  }

  v49 = *(a2 + 8);
  v1168 = md::LayoutContext::get<md::SceneQueryContext>(v49);
  if (!v19)
  {
    v51 = gdc::Context::get<md::StyleLogicContext>(v49);
    v1175 = 0;
    v53 = -1;
LABEL_60:
    v54 = -1;
    goto LABEL_61;
  }

  v1175 = v19[5];

  if (v1175)
  {
    v50 = [v1175 snappingToTransitLines];
    v51 = gdc::Context::get<md::StyleLogicContext>(*(a2 + 8));
    v52 = v1179;
    if (v50)
    {
      v53 = [v1175 currentSegmentIndex];
    }

    else
    {
      v53 = -1;
    }
  }

  else
  {
    v51 = gdc::Context::get<md::StyleLogicContext>(*(a2 + 8));
    v1175 = 0;
    v53 = -1;
    v52 = v1179;
  }

  if (*v52 != 1 || *(v52 + 36) != 1)
  {
    goto LABEL_60;
  }

  v54 = *(v52 + 8);
LABEL_61:
  v55 = *(*v51 + 520);
  v56 = *(*v51 + 528);
  if (v56)
  {
    atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v1248 = gss::ClientStyleState<gss::PropertyID>::targetMapDisplayStyle(v55);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v56);
  }

  v1172 = *(v1185 + 176);
  v57 = fmaxf(v18[770] + v18[769], 1.0);
  v58 = *v5;
  v59 = *(*v5 + 160);
  v1242[0] = MEMORY[0x1E69E9820];
  v1242[1] = 3321888768;
  v1242[2] = ___ZN2md16RouteRenderLayer13layoutOverlayERKNS_13LayoutContextENSt3__110shared_ptrINS_16RouteLineOverlayEEEbPN3ggl13CommandBufferE_block_invoke;
  v1242[3] = &__block_descriptor_77_ea8_48c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE_e90_v16__0_fast_shared_ptr_md::RouteLineSection__mdm::allocator_____fast_shared_ptr_control__8l;
  v1242[4] = v51;
  v1242[5] = &v1248;
  v60 = v5[1];
  v1242[6] = v58;
  v1243 = v60;
  if (v60)
  {
    atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v1247 = v1172 == 2;
  v1244 = v57;
  v1245 = v53;
  v1246 = v54;
  [v59 forEachSection:v1242];
  v61 = *v5;
  v1176 = v51;
  if (!*(*v5 + 320))
  {
    std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::less<GEOComposedRouteSection * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,mdm::zone_mallocator>>::destroy(*(*&v61 + 440));
    *(*&v61 + 456) = 0;
    *(*&v61 + 432) = *&v61 + 440;
    *(*&v61 + 440) = 0;
    v1218 = +[VKDebugSettings sharedSettings];
    *v1277 = 0;
    *&v1277[8] = v1277;
    *&v1277[16] = 0x5812000000;
    *&v1277[24] = __Block_byref_object_copy__6702;
    *&v1277[32] = __Block_byref_object_dispose__6703;
    *&v1277[40] = "";
    memset(&v1277[48], 0, 32);
    *&v1277[80] = 1065353216;
    v1251[0] = 0;
    v1251[1] = v1251;
    *&v1252 = 0x5812000000;
    *(&v1252 + 1) = __Block_byref_object_copy__7_6705;
    *&v1253 = __Block_byref_object_dispose__8_6706;
    *(&v1253 + 1) = "";
    memset(v1254, 0, sizeof(v1254));
    v1255 = 1065353216;
    v62 = *(*v5 + 160);
    if (v62)
    {
      objc_msgSend_sections(v62);
    }

    else
    {
      v1324 = 0uLL;
      v1325 = 0;
    }

    if ([v1218 disableContinuousMultiSectionRoutes])
    {
LABEL_82:
      v66 = *(&v1324 + 1);
      v65 = v1324;
      if (v1324 == *(&v1324 + 1))
      {
        goto LABEL_261;
      }

      while (1)
      {
        v67 = *v65;
        v1321[0] = v67;
        if (v67)
        {
          *v67 = (*v67 + 1);
        }

        if ([v1218 routeDebugPoints])
        {
          v68 = *v1238;
          if (v1321[0])
          {
            v69 = (v1321[0] + 1);
          }

          else
          {
            v69 = 0;
          }

          *&v1303 = objc_loadWeakRetained(v69 + 25);
          buf[0].i64[0] = &v1303;
          std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::less<GEOComposedRouteSection * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,mdm::zone_mallocator>>::__emplace_unique_key_args<GEOComposedRouteSection * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRouteSection * {__strong}&&>,std::tuple<>>((*&v68 + 432), v1303, buf);
          operator new();
        }

        if (v1321[0])
        {
          v70 = (v1321[0] + 1);
        }

        else
        {
          v70 = 0;
        }

        if (*(v70 + 236) != 1)
        {
          v91 = *&v1277[8];
          v1310.i64[0] = v70;
          v92 = (*(**(v70 + 72) + 24))(*(v70 + 72));
          v93 = mdm::zone_mallocator::instance(v92);
          v94 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::RouteLineRibbon>(v93);
          md::RouteLineRibbon::RouteLineRibbon(v94, v92);
          __src.i64[0] = v94;
          if (v92)
          {
            v95 = 0;
            for (i = 0; i != v92; i = (i + 1))
            {
              v97 = (*(**(v70 + 72) + 32))(*(v70 + 72), i);
              v98 = 0;
              v99 = *(v94 + 9) + v95;
              do
              {
                *(v99 + v98) = *(v97 + v98);
                v98 += 4;
              }

              while (v98 != 12);
              *(*(v94 + 13) + 12 * i + 8) = *((*(**(v70 + 72) + 32))(*(v70 + 72), i) + 44);
              *(*(v94 + 13) + 12 * i + 9) = *((*(**(v70 + 72) + 32))(*(v70 + 72), i) + 45);
              *(*(v94 + 13) + 12 * i + 4) = *((*(**(v70 + 72) + 32))(*(v70 + 72), i) + 40);
              *(*(v94 + 13) + 12 * i) = *((*(**(v70 + 72) + 32))(*(v70 + 72), i) + 36);
              v95 += 12;
            }
          }

          v100 = (*(**(v70 + 72) + 32))(*(v70 + 72), 0);
          v101 = __src.i64[0];
          *(__src.i64[0] + 100) = *(v100 + 32);
          *(v101 + 96) = 257;
          buf[0].i64[0] = &v1310;
          v102 = std::__hash_table<std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::RouteLineBatchKey,std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::hash<md::RouteLineBatchKey>,std::equal_to<md::RouteLineBatchKey>,true>,std::__unordered_map_equal<md::RouteLineBatchKey,std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::RouteLineBatchKey>,std::hash<md::RouteLineBatchKey>,true>,std::allocator<std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::RouteLineBatchKey,std::piecewise_construct_t const&,std::tuple<md::RouteLineBatchKey const&>,std::tuple<>>((v91 + 48), v1310.u64[0], buf);
          v103 = v102;
          v105 = v102[4];
          v104 = v102[5];
          if (v105 < v104)
          {
            v106 = __src.i64[0];
            __src.i64[0] = 0;
            *v105 = v106;
            v107 = v105 + 1;
LABEL_135:
            v103[4] = v107;
            std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>::~unique_ptr[abi:nn200100](&__src);
            goto LABEL_149;
          }

          v108 = v102[3];
          v109 = v105 - v108;
          v110 = (v105 - v108) >> 3;
          v111 = v110 + 1;
          if (!((v110 + 1) >> 61))
          {
            v112 = v104 - v108;
            if (v112 >> 2 > v111)
            {
              v111 = v112 >> 2;
            }

            if (v112 >= 0x7FFFFFFFFFFFFFF8)
            {
              v113 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v113 = v111;
            }

            buf[2].i64[0] = (v102 + 6);
            if (v113)
            {
              v114 = mdm::zone_mallocator::instance(v102);
              v115 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>>(v114, v113);
              v108 = v103[3];
              v109 = v103[4] - v108;
              v116 = v109 >> 3;
            }

            else
            {
              v115 = 0;
              v116 = v110;
            }

            v120 = &v115[8 * v110];
            v121 = &v115[8 * v113];
            v122 = __src.i64[0];
            __src.i64[0] = 0;
            v123 = &v120[-v116];
            *v120 = v122;
            v107 = v120 + 1;
            memcpy(v123, v108, v109);
            v124 = v103[3];
            v103[3] = v123;
            v103[4] = v107;
            v125 = v103[5];
            v103[5] = v121;
            buf[1].i64[0] = v124;
            buf[1].i64[1] = v125;
            buf[0].i64[1] = v124;
            buf[0].i64[0] = v124;
            std::__split_buffer<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(buf);
            goto LABEL_135;
          }

LABEL_1384:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v71 = v1251[1];
        v72 = (*(**(v70 + 72) + 24))(*(v70 + 72));
        v73 = mdm::zone_mallocator::instance(v72);
        v74 = pthread_rwlock_rdlock((v73 + 32));
        if (v74)
        {
          geo::read_write_lock::logFailure(v74, "read lock", v75);
        }

        v76 = malloc_type_zone_malloc(*v73, 0x70uLL, 0x10A1040D893A2BCuLL);
        atomic_fetch_add((v73 + 24), 1u);
        geo::read_write_lock::unlock((v73 + 32));
        v77 = *(v70 + 208);
        md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::StandardModeRibbonUsingPositionType(v76, v72);
        v78 = v77;
        v76[48] = 0;
        *v76 = &unk_1F2A2F900;
        *(v76 + 25) = 0;
        *(v76 + 26) = v78;
        v1310.i64[0] = v76;
        if (v72)
        {
          v79 = 0;
          for (j = 0; j != v72; j = (j + 1))
          {
            v81 = (*(**(v70 + 72) + 32))(*(v70 + 72), j);
            v82 = 0;
            v83 = *(v76 + 9) + v79;
            do
            {
              *(v83 + v82) = *(v81 + v82);
              v82 += 4;
            }

            while (v82 != 12);
            v79 += 12;
          }
        }

        v84 = (*(**(v70 + 72) + 32))(*(v70 + 72), 0);
        *(v1310.i64[0] + 100) = *(v84 + 8);
        v85 = 0x9DDFEA08EB382D69 * ((8 * (v70 & 0x1FFFFFFF) + 8) ^ HIDWORD(v70));
        v86 = 0x9DDFEA08EB382D69 * (HIDWORD(v70) ^ (v85 >> 47) ^ v85);
        v87 = 0x9DDFEA08EB382D69 * (v86 ^ (v86 >> 47));
        v88 = *(v71 + 56);
        if (!*&v88)
        {
          goto LABEL_132;
        }

        v89 = vcnt_s8(v88);
        v89.i16[0] = vaddlv_u8(v89);
        if (v89.u32[0] > 1uLL)
        {
          v90 = 0x9DDFEA08EB382D69 * (v86 ^ (v86 >> 47));
          if (v87 >= *&v88)
          {
            v90 = v87 % *&v88;
          }
        }

        else
        {
          v90 = (*&v88 - 1) & v87;
        }

        v117 = *(*(v71 + 6) + 8 * v90);
        if (!v117 || (v118 = *v117) == 0)
        {
LABEL_132:
          operator new();
        }

        while (1)
        {
          v119 = v118[1];
          if (v119 == v87)
          {
            break;
          }

          if (v89.u32[0] > 1uLL)
          {
            if (v119 >= *&v88)
            {
              v119 %= *&v88;
            }
          }

          else
          {
            v119 &= *&v88 - 1;
          }

          if (v119 != v90)
          {
            goto LABEL_132;
          }

LABEL_131:
          v118 = *v118;
          if (!v118)
          {
            goto LABEL_132;
          }
        }

        if (v118[2] != v70)
        {
          goto LABEL_131;
        }

        v127 = v118[4];
        v126 = v118[5];
        if (v127 >= v126)
        {
          v130 = v118[3];
          v131 = v127 - v130;
          v132 = (v127 - v130) >> 3;
          v133 = v132 + 1;
          if ((v132 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v134 = v126 - v130;
          if (v134 >> 2 > v133)
          {
            v133 = v134 >> 2;
          }

          if (v134 >= 0x7FFFFFFFFFFFFFF8)
          {
            v135 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v135 = v133;
          }

          buf[2].i64[0] = (v118 + 6);
          if (v135)
          {
            v136 = mdm::zone_mallocator::instance(v84);
            v137 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>>(v136, v135);
            v130 = v118[3];
            v131 = v118[4] - v130;
            v138 = v131 >> 3;
          }

          else
          {
            v137 = 0;
            v138 = v132;
          }

          v139 = &v137[8 * v132];
          v140 = &v137[8 * v135];
          v141 = v1310.i64[0];
          v1310.i64[0] = 0;
          v142 = &v139[-v138];
          *v139 = v141;
          v129 = v139 + 1;
          memcpy(v142, v130, v131);
          v143 = v118[3];
          v118[3] = v142;
          v118[4] = v129;
          v144 = v118[5];
          v118[5] = v140;
          buf[1].i64[0] = v143;
          buf[1].i64[1] = v144;
          buf[0].i64[1] = v143;
          buf[0].i64[0] = v143;
          std::__split_buffer<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(buf);
        }

        else
        {
          v128 = v1310.i64[0];
          v1310.i64[0] = 0;
          *v127 = v128;
          v129 = v127 + 1;
        }

        v118[4] = v129;
        std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>::~unique_ptr[abi:nn200100](&v1310);
LABEL_149:
        geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr(v1321);
        if (++v65 == v66)
        {
LABEL_261:
          v261 = *(*&v1277[8] + 64);
          if (v261)
          {
            v262 = 0;
            do
            {
              for (k = v261[3]; k != v261[4]; ++k)
              {
                v264 = *k;
                v262 += *(v264 + 88);
              }

              v261 = *v261;
            }

            while (v261);
          }

          else
          {
            v262 = 0;
          }

          if (GEOGetVectorKitRouteLog_onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
          }

          v265 = GEOGetVectorKitRouteLog_log;
          if (os_log_type_enabled(v265, OS_LOG_TYPE_INFO))
          {
            v266 = *(*&v1277[8] + 72);
            buf[0].i32[0] = 134218240;
            *(buf[0].i64 + 4) = v266;
            buf[0].i16[6] = 1024;
            *(&buf[0].i32[3] + 2) = v262;
            _os_log_impl(&dword_1B2754000, v265, OS_LOG_TYPE_INFO, "RouteRenderLayer::buildRouteLineLayer routeRibbons size: %zu  pointCount: %d", buf, 0x12u);
          }

          v267 = *(a2 + 744);
          buf[0].i64[0] = MEMORY[0x1E69E9820];
          buf[0].i64[1] = 3221225472;
          buf[1].i64[0] = ___ZN2md16RouteRenderLayer19buildRouteLineLayerERKNS_13LayoutContextERKNSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke;
          buf[1].i64[1] = &unk_1E7B33008;
          buf[2].i64[1] = v1238;
          buf[2].i64[0] = v1277;
          *&v1311[8] = 0;
          v1310.i64[0] = &unk_1F2A59B50;
          v1310.i64[1] = MEMORY[0x1B8C62DA0](buf);
          *&v1311[8] = &v1310;
          __src = 0uLL;
          ggl::Loader::performWithAccessor(*(v267 + 32));
          if (__src.i64[1])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](__src.i64[1]);
          }

          std::__function::__value_func<void ()(ggl::ResourceAccessor *)>::~__value_func[abi:nn200100](&v1310);
          v268 = *(a2 + 744);
          v1310.i64[0] = MEMORY[0x1E69E9820];
          v1310.i64[1] = 3221225472;
          *v1311 = ___ZN2md16RouteRenderLayer19buildRouteLineLayerERKNS_13LayoutContextERKNSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke_2;
          *&v1311[8] = &unk_1E7B33008;
          *&v1311[24] = v1238;
          *&v1311[16] = v1251;
          p_src = 0;
          __src.i64[0] = &unk_1F2A59B50;
          __src.i64[1] = MEMORY[0x1B8C62DA0](&v1310);
          p_src = &__src;
          v1321[1] = 0;
          v1321[0] = 0;
          ggl::Loader::performWithAccessor(*(v268 + 32));
          if (v1321[1])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v1321[1]);
          }

          std::__function::__value_func<void ()(ggl::ResourceAccessor *)>::~__value_func[abi:nn200100](&__src);
          __src.i64[0] = &v1324;
          std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](&__src);
          _Block_object_dispose(v1251, 8);
          std::__hash_table<std::__hash_value_type<md::DottedRouteLineBatchKey,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::DottedRouteLineBatchKey,std::__hash_value_type<md::DottedRouteLineBatchKey,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>>,std::hash<md::DottedRouteLineBatchKey>,std::equal_to<md::DottedRouteLineBatchKey>,true>,std::__unordered_map_equal<md::DottedRouteLineBatchKey,std::__hash_value_type<md::DottedRouteLineBatchKey,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::DottedRouteLineBatchKey>,std::hash<md::DottedRouteLineBatchKey>,true>,std::allocator<std::__hash_value_type<md::DottedRouteLineBatchKey,std::vector<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(v1254);
          _Block_object_dispose(v1277, 8);
          std::__hash_table<std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::RouteLineBatchKey,std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::hash<md::RouteLineBatchKey>,std::equal_to<md::RouteLineBatchKey>,true>,std::__unordered_map_equal<md::RouteLineBatchKey,std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::RouteLineBatchKey>,std::hash<md::RouteLineBatchKey>,true>,std::allocator<std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(&v1277[48]);

          v5 = v1238;
          v61 = *v1238;
          v8 = 1;
          goto LABEL_278;
        }
      }
    }

    v145 = *(*v5 + 144);
    v146 = [v145 composedRoute];
    if ([v146 transportType] == 3)
    {
    }

    else
    {
      v147 = [*(*v5 + 144) composedRoute];
      v148 = [v147 transportType] == 2;

      if (!v148)
      {
        goto LABEL_82;
      }
    }

    v149 = v1324;
    if (*(&v1324 + 1) == v1324)
    {
      goto LABEL_261;
    }

    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = (*(&v1324 + 1) - v1324) >> 3;
    while (1)
    {
      v154 = 0;
      v155 = *(v149 + 8 * v152);
      if (v155)
      {
        v156 = (v155 + 8);
      }

      else
      {
        v156 = 0;
      }

      v157 = v152 + 1;
      if (v157 < v153)
      {
        v158 = *(v149 + 8 * v157);
        if (v158)
        {
          v154 = v158 + 8;
        }

        else
        {
          v154 = 0;
        }
      }

      __p = v150;
      v1193 = v157;
      v159 = [v1218 continuousMultiSectionRouteAdditionalOverlap];
      v160 = v1238;
      v1199 = v151;
      if (!v154)
      {
        break;
      }

      v161 = v159;
      v162 = (*(*v154 + 48))(v154, 0);
      v163 = (*(*v156 + 7))(v156);
      v164 = (*(*v156 + 6))(v156, v163 - 1);
      if (vabds_f32(*v164, *v162) >= 0.000001)
      {
        goto LABEL_193;
      }

      v165 = (v161 + 1);
      v166 = 1;
      do
      {
        if (v166 == 3)
        {
          goto LABEL_169;
        }

        v167 = v166;
        v168 = vabds_f32(*(v164 + 4 * v166), v162[v166]);
        ++v166;
      }

      while (v168 < 0.000001);
      if ((v167 - 1) < 2)
      {
LABEL_193:
        __n = 0;
LABEL_195:
        v169 = v150;
        goto LABEL_198;
      }

LABEL_169:
      buf[0].i64[0] = *v164;
      buf[0].i32[2] = *(v164 + 8);
      if (v161 == -1)
      {
        v169 = v150;
      }

      else
      {
        v169 = v150;
        v170 = 1;
        do
        {
          if (v170 >= (*(*v154 + 56))(v154))
          {
            break;
          }

          v171 = (*(*v154 + 48))(v154, v170);
          v172 = v171;
          if (vabds_f32(buf[0].f32[0], *v171) >= 0.000001)
          {
            goto LABEL_177;
          }

          v173 = 0;
          do
          {
            if (v173 == 2)
            {
              goto LABEL_191;
            }

            v174 = v173++;
          }

          while (vabds_f32(buf[0].f32[v174 + 1], v171[v174 + 1]) < 0.000001);
          if (v174 <= 1)
          {
LABEL_177:
            v175 = 0xAAAAAAAAAAAAAAABLL * ((v169 - __p) >> 4) + 1;
            if (v175 > 0x555555555555555)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            if (0x5555555555555556 * (-__p >> 4) > v175)
            {
              v175 = 0x5555555555555556 * (-__p >> 4);
            }

            if (0xAAAAAAAAAAAAAAABLL * (-__p >> 4) >= 0x2AAAAAAAAAAAAAALL)
            {
              v176 = 0x555555555555555;
            }

            else
            {
              v176 = v175;
            }

            if (v176)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<md::RouteLineSection::Vertex>>(v176);
            }

            v177 = (16 * ((v169 - __p) >> 4));
            v178 = *v172;
            v179 = *(v172 + 2);
            v177[1] = *(v172 + 1);
            v177[2] = v179;
            *v177 = v178;
            v180 = &v177[3 * ((v169 - __p) / -48)];
            if (__p != v169)
            {
              v181 = __p;
              v182 = (16 * ((v169 - __p) >> 4) + 48 * ((v169 - __p) / -48));
              do
              {
                v183 = *v181;
                v184 = v181[2];
                v182[1] = v181[1];
                v182[2] = v184;
                *v182 = v183;
                v182 += 3;
                v181 += 3;
              }

              while (v181 != v169);
            }

            v169 = v177 + 3;
            if (__p)
            {
              operator delete(__p);
            }

            __p = v180;
            buf[0].i64[0] = *v172;
            buf[0].f32[2] = v172[2];
            --v165;
          }

LABEL_191:
          ++v170;
          v160 = v1238;
        }

        while (v165);
      }

      __n = 1;
LABEL_198:
      v185 = (*(*v156 + 7))(v156);
      v186 = mdm::zone_mallocator::instance(v185);
      v187 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::RouteLineRibbon>(v186);
      v188 = 0xAAAAAAAAAAAAAAABLL * ((v169 - __p) >> 4);
      v1230 = v185 + v188;
      v1321[0] = md::RouteLineRibbon::RouteLineRibbon(v187, v185 + v188);
      v189 = (*(*v156 + 6))(v156, 0);
      v190 = 0;
      v191 = 0;
      v192 = v1321[0];
      *(v1321[0] + 25) = *(v189 + 32);
      *(v192 + 96) = (v1199 & 1) == 0;
      *(v192 + 97) = __n ^ 1;
      while (v191 < (*(*v156 + 7))(v156))
      {
        v193 = (*(*v156 + 6))(v156, v191);
        v194 = 0;
        v195 = v1321[0][9] + v190;
        do
        {
          *&v195[v194] = *(v193 + v194);
          v194 += 4;
        }

        while (v194 != 12);
        v196 = (*(*v156 + 6))(v156, v191);
        *(v1321[0][13] + 12 * v191++ + 8) = *(v196 + 44);
        v190 += 12;
      }

      if (v169 != __p)
      {
        v197 = 0;
        v198 = 0;
        if (v188 <= 1)
        {
          v188 = 1;
        }

        v199 = __p;
        do
        {
          v200 = v1321[0][9];
          v201 = (*(*v156 + 7))(v156);
          for (m = 0; m != 12; m += 4)
          {
            *(v200 + 12 * v201 + v197 + m) = *(v199 + m);
          }

          v203 = *(__p + 48 * v198 + 44);
          v204 = v1321[0];
          *(v204[13] + 12 * (*(*v156 + 7))(v156) + 12 * v198++ + 8) = v203;
          v197 += 12;
          v199 += 48;
        }

        while (v198 != v188);
      }

      v205 = [v1218 routeDebugPoints];
      v150 = __p;
      if (v205)
      {
        v1310 = 0uLL;
        *v1311 = 0;
        __src = 0uLL;
        v1332 = 0;
        if (v1230)
        {
          v206 = 0;
          v207 = 0;
          for (n = 0; n != v1230; ++n)
          {
            v209 = v1321[0];
            v210 = v1321[0][9] + 12 * n;
            if (v207 >= v206)
            {
              v212 = v1310.i64[0];
              v213 = v207 - v1310.i64[0];
              v214 = 0xAAAAAAAAAAAAAAABLL * ((v207 - v1310.i64[0]) >> 2);
              v215 = v214 + 1;
              if (v214 + 1 > 0x1555555555555555)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              if (0x5555555555555556 * ((v206 - v1310.i64[0]) >> 2) > v215)
              {
                v215 = 0x5555555555555556 * ((v206 - v1310.i64[0]) >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v206 - v1310.i64[0]) >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v216 = 0x1555555555555555;
              }

              else
              {
                v216 = v215;
              }

              if (v216)
              {
                v217 = mdm::zone_mallocator::instance(v205);
                v205 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gm::Matrix<float,3,1>>(v217, v216);
                v218 = v205;
              }

              else
              {
                v218 = 0;
              }

              v219 = *v210;
              v220 = *(v210 + 2);
              v221 = v218 + 12 * v214;
              *(v221 + 2) = v220;
              *v221 = v219;
              if (v212 != v207)
              {
                v222 = &v221[-v213];
                do
                {
                  v223 = *v212;
                  *(v222 + 2) = v212[2];
                  *v222 = v223;
                  v222 += 12;
                  v212 += 3;
                }

                while (v212 != v207);
                v212 = v1310.i64[0];
              }

              v1310.i64[0] = &v221[-v213];
              if (v212)
              {
                v224 = mdm::zone_mallocator::instance(v205);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<float,3,1>>(v224, v212);
              }

              v206 = v218 + 12 * v216;
              v209 = v1321[0];
              v207 = v218 + 12 * v214;
              v160 = v1238;
            }

            else
            {
              v211 = *v210;
              *(v207 + 8) = *(v210 + 2);
              *v207 = v211;
            }

            v207 += 12;
            v225 = v209[13] + 12 * n;
            v226 = __src.i64[1];
            if (__src.i64[1] >= v1332)
            {
              v228 = __src.i64[1] - __src.i64[0];
              v229 = __src.i64[1] - __src.i64[0] + 1;
              if (v229 < 0)
              {
LABEL_1376:
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v230 = v1332 - __src.i64[0];
              if (2 * (v1332 - __src.i64[0]) > v229)
              {
                v229 = 2 * v230;
              }

              if (v230 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v231 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v231 = v229;
              }

              buf[2].i64[0] = &p_src;
              if (v231)
              {
                v232 = mdm::zone_mallocator::instance(v205);
                v233 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v232, v231);
                v160 = v1238;
              }

              else
              {
                v233 = 0;
              }

              v234 = &v233[v228];
              v233[v228] = *(v225 + 8);
              v227 = &v233[v228 + 1];
              v235 = &v233[v231];
              v236 = &v234[__src.i64[0] - __src.i64[1]];
              memcpy(v236, __src.i64[0], __src.i64[1] - __src.i64[0]);
              v237 = __src.i64[0];
              v238 = v1332;
              __src.i64[0] = v236;
              __src.i64[1] = v227;
              v1332 = v235;
              buf[1].i64[0] = v237;
              buf[1].i64[1] = v238;
              buf[0].i64[1] = v237;
              buf[0].i64[0] = v237;
              v205 = std::__split_buffer<unsigned char,geo::allocator_adapter<unsigned char,mdm::zone_mallocator> &>::~__split_buffer(buf);
            }

            else
            {
              *__src.i64[1] = *(v225 + 8);
              v227 = v226 + 1;
            }

            __src.i64[1] = v227;
          }

          v1310.i64[1] = v207;
          *v1311 = v206;
        }

        v239 = *v160;
        *&v1303 = objc_loadWeakRetained(v156 + 25);
        buf[0].i64[0] = &v1303;
        std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::less<GEOComposedRouteSection * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,mdm::zone_mallocator>>::__emplace_unique_key_args<GEOComposedRouteSection * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRouteSection * {__strong}&&>,std::tuple<>>((*&v239 + 432), v1303, buf);
        operator new();
      }

      v1310.i64[0] = v156;
      buf[0].i64[0] = &v1310;
      v240 = std::__hash_table<std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::RouteLineBatchKey,std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::hash<md::RouteLineBatchKey>,std::equal_to<md::RouteLineBatchKey>,true>,std::__unordered_map_equal<md::RouteLineBatchKey,std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::RouteLineBatchKey>,std::hash<md::RouteLineBatchKey>,true>,std::allocator<std::__hash_value_type<md::RouteLineBatchKey,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::RouteLineBatchKey,std::piecewise_construct_t const&,std::tuple<md::RouteLineBatchKey const&>,std::tuple<>>((*&v1277[8] + 48), v156, buf);
      v152 = v1193;
      v241 = v240;
      v243 = v240[4];
      v242 = v240[5];
      if (v243 >= v242)
      {
        v246 = v240[3];
        v247 = v243 - v246;
        v248 = (v243 - v246) >> 3;
        v249 = v248 + 1;
        if ((v248 + 1) >> 61)
        {
          goto LABEL_1384;
        }

        v250 = v242 - v246;
        if (v250 >> 2 > v249)
        {
          v249 = v250 >> 2;
        }

        if (v250 >= 0x7FFFFFFFFFFFFFF8)
        {
          v251 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v251 = v249;
        }

        buf[2].i64[0] = (v240 + 6);
        if (v251)
        {
          v252 = mdm::zone_mallocator::instance(v240);
          v253 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>>(v252, v251);
          v246 = v241[3];
          v247 = v241[4] - v246;
          v254 = v247 >> 3;
        }

        else
        {
          v253 = 0;
          v254 = v248;
        }

        v255 = &v253[8 * v248];
        v256 = &v253[8 * v251];
        v257 = v1321[0];
        v1321[0] = 0;
        v258 = &v255[-8 * v254];
        *v255 = v257;
        v245 = v255 + 8;
        memcpy(v258, v246, v247);
        v259 = v241[3];
        v241[3] = v258;
        v241[4] = v245;
        v260 = v241[5];
        v241[5] = v256;
        buf[1].i64[0] = v259;
        buf[1].i64[1] = v260;
        buf[0].i64[1] = v259;
        buf[0].i64[0] = v259;
        std::__split_buffer<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(buf);
      }

      else
      {
        v244 = v1321[0];
        v1321[0] = 0;
        *v243 = v244;
        v245 = v243 + 8;
      }

      v241[4] = v245;
      std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>::~unique_ptr[abi:nn200100](v1321);
      v149 = v1324;
      v153 = (*(&v1324 + 1) - v1324) >> 3;
      v151 = __n;
      if (v1193 >= v153)
      {
        if (__p)
        {
          operator delete(__p);
        }

        goto LABEL_261;
      }
    }

    __n = 0;
    goto LABEL_195;
  }

LABEL_278:
  if (*(*&v61 + 328))
  {
    goto LABEL_389;
  }

  v269 = gdc::Context::get<md::StyleLogicContext>(*(a2 + 8));
  *v1277 = 0;
  *&v1277[8] = v1277;
  *&v1277[16] = 0x5812000000;
  *&v1277[24] = __Block_byref_object_copy__11;
  *&v1277[32] = __Block_byref_object_dispose__12;
  *&v1277[40] = "";
  memset(&v1277[48], 0, 32);
  *&v1277[80] = 1065353216;
  v270 = *(*&v61 + 160);
  if (!v270)
  {
    v1303 = 0uLL;
    *&v1304 = 0;
    goto LABEL_386;
  }

  objc_msgSend_sections(v270);
  v1202 = *(&v1303 + 1);
  v271 = v1303;
  if (v1303 == *(&v1303 + 1))
  {
    goto LABEL_386;
  }

  v1219 = v269;
  do
  {
    v1208 = v271;
    v272 = *v271;
    v1301[0] = v272;
    if (v272)
    {
      ++*v272;
    }

    v273 = 0;
    v274 = 0;
    *&v1321[1] = 0u;
    if (v272)
    {
      v275 = v272 + 1;
    }

    else
    {
      v275 = 0;
    }

    v1321[0] = v275;
    v1332 = 0;
    *v1220 = 0u;
    __src = 0uLL;
    v1231 = *&v1277[8];
    while ((*(*v275[9] + 24))(v275[9]) != v273)
    {
      v276 = (*(*v275[9] + 32))(v275[9], v273);
      buf[0].i32[0] = 5;
      buf[0].i16[2] = 11;
      v277 = *(v276 + 47);
      buf[0].i32[2] = 65621;
      buf[0].i16[6] = v277;
      buf[1].i32[0] = 65613;
      buf[1].i16[2] = 0;
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v1251, buf, 3uLL);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v1324, v1251);
      gss::FeatureAttributeSet::sort(v1324, *(&v1324 + 1));
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1251);
      v278 = (*(*v275[9] + 24))(v275[9]);
      if (!v273)
      {
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::pair<gss::StyleAttribute,unsigned short>*,std::pair<gss::StyleAttribute,unsigned short>*>(&__src, v1324, *(&v1324 + 1), (*(&v1324 + 1) - v1324) >> 3);
LABEL_300:
        *__pa = *v1220;
        goto LABEL_378;
      }

      v279 = v278 - 1;
      v280 = __src.i64[0];
      v281 = v1324;
      if (__src.i64[1] - __src.i64[0] == *(&v1324 + 1) - v1324)
      {
        while (v280 != __src.i64[1])
        {
          _ZF = *v280 == *v281 && *(v280 + 4) == *(v281 + 4);
          if (!_ZF)
          {
            goto LABEL_301;
          }

          v280 += 8;
          v281 += 8;
        }

        if (v279 != v273)
        {
          goto LABEL_300;
        }
      }

LABEL_301:
      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(v1251, *v269, &__src);
      v283 = *v1251;
      v1251[1] = 0;
      v1251[0] = 0;
      v284 = v1321[2];
      *&v1321[1] = v283;
      if (v284)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v284);
        if (v1251[1])
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v1251[1]);
        }
      }

      v285 = *v269;
      LODWORD(v1307) = 65613;
      WORD2(v1307) = 1;
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](buf, &v1307, 1uLL);
      gss::FeatureAttributeSet::setByReplacingAttributes(v1251, &__src, buf[0].i64[0], buf[0].i64[1]);
      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v1310, v285, v1251);
      *__pa = v1310;
      v1310 = 0uLL;
      if (v1220[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v1220[1]);
        if (v1310.i64[1])
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v1310.i64[1]);
        }
      }

      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1251);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
      v286 = v1321[1];
      v287 = v1321[2];
      if (v1321[2])
      {
        atomic_fetch_add_explicit(v1321[2] + 1, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(buf, v286, v287);
      if (v287)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v287);
      }

      if (__pa[1])
      {
        atomic_fetch_add_explicit(__pa[1] + 1, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v1310, __pa[0], __pa[1]);
      if (__pa[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](__pa[1]);
      }

      if ((buf[2].i8[0] & 1) != 0 || v1311[16] == 1)
      {
        v288 = (*(*v275[9] + 32))(v275[9], (v273 - (v279 != v273)));
        v289 = mdm::zone_mallocator::instance(v288);
        v290 = pthread_rwlock_rdlock((v289 + 32));
        if (v290)
        {
          geo::read_write_lock::logFailure(v290, "read lock", v291);
        }

        v292 = malloc_type_zone_malloc(*v289, 0x80uLL, 0x10A10404927B2FBuLL);
        atomic_fetch_add((v289 + 24), 1u);
        geo::read_write_lock::unlock((v289 + 32));
        md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::StandardModeRibbonUsingPositionType(v292, v273 - v274);
        *v292 = &unk_1F2A2F920;
        *(v292 + 6) = 0u;
        *(v292 + 7) = 0u;
        if (v273 != v274)
        {
          if (!((v273 - v274) >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v1307 = v292;
        v293 = (*(*v275[9] + 32))(v275[9], v274);
        v294 = v293[8];
        v295 = v1307;
        *(v1307 + 24) = v294;
        v296 = v288[8];
        *(v295 + 25) = v296;
        v297 = v1321[0];
        v298 = v1321[1];
        v299 = 0x9DDFEA08EB382D69 * ((8 * (v1321[0] & 0x1FFFFFFF) + 8) ^ (v1321[0] >> 32));
        v300 = 0x9DDFEA08EB382D69 * ((v1321[0] >> 32) ^ (v299 >> 47) ^ v299);
        v301 = v300 ^ (v300 >> 47);
        v302 = 0x9DDFEA08EB382D69 * v301;
        if (v1321[1])
        {
          v293 = std::hash<gss::StylesheetQuery<gss::PropertyID>>::operator()(v1321[1]);
          v302 ^= &v293[0x1DFEA08EB382D690 * v301 - 0x18722191A02D60FALL] + (v302 >> 2) - 3;
          if (__pa[0])
          {
            goto LABEL_324;
          }
        }

        else if (__pa[0])
        {
LABEL_324:
          v293 = std::hash<gss::StylesheetQuery<gss::PropertyID>>::operator()(__pa[0]);
          v302 ^= &v293[16 * v302 - 0x18722191A02D60FALL] + (v302 >> 2) - 3;
        }

        v303 = LODWORD(v294) - 0x61C8864680B583EBLL;
        if (v294 == 0.0)
        {
          v303 = 0x9E3779B97F4A7C15;
        }

        v304 = ((v302 >> 2) + (v302 << 6) + v303) ^ v302;
        v305 = LODWORD(v296) - 0x61C8864680B583EBLL;
        if (v296 == 0.0)
        {
          v305 = 0x9E3779B97F4A7C15;
        }

        v306 = (v305 + (v304 << 6) + (v304 >> 2)) ^ v304;
        v307 = v1231[7];
        if (!*&v307)
        {
          goto LABEL_351;
        }

        v308 = vcnt_s8(v307);
        v308.i16[0] = vaddlv_u8(v308);
        if (v308.u32[0] > 1uLL)
        {
          v309 = (v305 + (v304 << 6) + (v304 >> 2)) ^ v304;
          if (v306 >= *&v307)
          {
            v309 = v306 % *&v307;
          }
        }

        else
        {
          v309 = (*&v307 - 1) & v306;
        }

        v310 = *(*&v1231[6] + 8 * v309);
        if (!v310 || (v311 = *v310) == 0)
        {
LABEL_351:
          operator new();
        }

        while (1)
        {
          v312 = *(v311 + 1);
          if (v312 == v306)
          {
            if (*(v311 + 2) == v297 && *(v311 + 3) == v298 && *(v311 + 5) == __pa[0] && v311[14] == v294 && v311[15] == v296)
            {
              v269 = v1219;
              v314 = *(v311 + 9);
              v313 = *(v311 + 10);
              if (v314 >= v313)
              {
                v317 = *(v311 + 8);
                v318 = v314 - v317;
                v319 = (v314 - v317) >> 3;
                v320 = v319 + 1;
                if ((v319 + 1) >> 61)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v321 = v313 - v317;
                if (v321 >> 2 > v320)
                {
                  v320 = v321 >> 2;
                }

                if (v321 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v322 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v322 = v320;
                }

                *&v1253 = v311 + 22;
                if (v322)
                {
                  v323 = mdm::zone_mallocator::instance(v293);
                  v324 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>>(v323, v322);
                  v317 = *(v311 + 8);
                  v318 = *(v311 + 9) - v317;
                  v325 = v318 >> 3;
                  v269 = v1219;
                }

                else
                {
                  v324 = 0;
                  v325 = (v314 - v317) >> 3;
                }

                v326 = &v324[8 * v319];
                v327 = &v324[8 * v322];
                v328 = v1307;
                v1307 = 0;
                v329 = &v326[-v325];
                *v326 = v328;
                v316 = v326 + 1;
                memcpy(v329, v317, v318);
                v330 = *(v311 + 8);
                *(v311 + 8) = v329;
                *(v311 + 9) = v316;
                v331 = *(v311 + 10);
                *(v311 + 10) = v327;
                *&v1252 = v330;
                *(&v1252 + 1) = v331;
                v1251[1] = v330;
                v1251[0] = v330;
                std::__split_buffer<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(v1251);
              }

              else
              {
                v315 = v1307;
                v1307 = 0;
                *v314 = v315;
                v316 = v314 + 8;
              }

              *(v311 + 9) = v316;
              std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>::~unique_ptr[abi:nn200100](&v1307);
              break;
            }
          }

          else
          {
            if (v308.u32[0] > 1uLL)
            {
              if (v312 >= *&v307)
              {
                v312 %= *&v307;
              }
            }

            else
            {
              v312 &= *&v307 - 1;
            }

            if (v312 != v309)
            {
              goto LABEL_351;
            }
          }

          v311 = *v311;
          if (!v311)
          {
            goto LABEL_351;
          }
        }
      }

      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::pair<gss::StyleAttribute,unsigned short>*,std::pair<gss::StyleAttribute,unsigned short>*>(&__src, v1324, *(&v1324 + 1), (*(&v1324 + 1) - v1324) >> 3);
      v5 = v1238;
      if (v1311[16] == 1)
      {
        (*(*v1310.i64[0] + 56))(v1310.i64[0]);
      }

      if (*&v1311[8])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*&v1311[8]);
      }

      if (v1310.i64[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v1310.i64[1]);
      }

      if (buf[2].u8[0] == 1)
      {
        (*(*buf[0].i64[0] + 56))(buf[0].i64[0]);
      }

      if (buf[1].i64[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](buf[1].i64[1]);
      }

      if (buf[0].i64[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](buf[0].i64[1]);
      }

      v274 = v273;
LABEL_378:
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v1324);
      ++v273;
      *v1220 = *__pa;
    }

    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&__src);
    if (v1220[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v1220[1]);
    }

    if (v1321[2])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v1321[2]);
    }

    geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr(v1301);
    v271 = v1208 + 1;
  }

  while (v1208 + 1 != v1202);
LABEL_386:
  v332 = *(a2 + 744);
  v1251[0] = MEMORY[0x1E69E9820];
  v1251[1] = 3221225472;
  *&v1252 = ___ZN2md16RouteRenderLayer28buildRouteStyledOverlayLayerERKNS_13LayoutContextERKNSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke;
  *(&v1252 + 1) = &unk_1E7B33008;
  *(&v1253 + 1) = v5;
  *&v1253 = v1277;
  buf[1].i64[1] = 0;
  buf[0].i64[0] = &unk_1F2A59B50;
  buf[0].i64[1] = MEMORY[0x1B8C62DA0](v1251);
  buf[1].i64[1] = buf;
  v1310 = 0uLL;
  ggl::Loader::performWithAccessor(*(v332 + 32));
  if (v1310.i64[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1310.i64[1]);
  }

  std::__function::__value_func<void ()(ggl::ResourceAccessor *)>::~__value_func[abi:nn200100](buf);
  buf[0].i64[0] = &v1303;
  std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](buf);
  _Block_object_dispose(v1277, 8);
  std::__hash_table<std::__hash_value_type<md::RouteStyledOverlayBatchKey,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::RouteStyledOverlayBatchKey,std::__hash_value_type<md::RouteStyledOverlayBatchKey,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<md::RouteStyledOverlayBatchKey>,std::equal_to<md::RouteStyledOverlayBatchKey>,true>,std::__unordered_map_equal<md::RouteStyledOverlayBatchKey,std::__hash_value_type<md::RouteStyledOverlayBatchKey,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::RouteStyledOverlayBatchKey>,std::hash<md::RouteStyledOverlayBatchKey>,true>,std::allocator<std::__hash_value_type<md::RouteStyledOverlayBatchKey,std::vector<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteStyledOverlayRibbon,mdm::TypeDeleter<md::RouteStyledOverlayRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(&v1277[48]);
  v5 = v1238;
  v61 = *v1238;
  v8 = 1;
LABEL_389:
  v333 = *(*&v61 + 320);
  v334 = *(v333 + 8);
  v335 = *(v333 + 16);
  if (v334 != v335)
  {
    do
    {
      v336 = *v334++;
      ggl::Batcher::reset((v336 + 2832));
      md::RenderItemPool::reset((v336 + 2912));
    }

    while (v334 != v335);
    v61 = *v5;
  }

  v337 = *(*&v61 + 328);
  v338 = *(v337 + 8);
  v339 = *(v337 + 16);
  if (v338 != v339)
  {
    do
    {
      v340 = *v338++;
      ggl::Batcher::reset((v340 + 144));
      md::RenderItemPool::reset((v340 + 224));
    }

    while (v338 != v339);
    v61 = *v5;
  }

  if (*(*&v61 + 620) == 1)
  {
    v341 = *(*&v61 + 160);
    v342 = v1185[23];
    [v341 splitRouteLineAtAnnotation:v342 puckOffset:*(v1179 + 12)];
    goto LABEL_399;
  }

  if (*(*&v61 + 622) == 1)
  {
    v343 = *(*&v61 + 160);
    v342 = v1185[24];
    [v343 splitRouteLineAtAnnotation:v342 puckOffset:*MEMORY[0x1E69A1918]];
LABEL_399:
  }

  v344 = gdc::Context::get<md::StyleLogicContext>(*(a2 + 8));
  if (v344)
  {
    v1171 = *(v344 + 85) == 3;
  }

  else
  {
    v1171 = 0;
  }

  v345 = +[VKDebugSettings sharedSettings];
  v1186 = [v345 showRoutelineAnimation];

  v346 = md::LayoutContext::get<md::NavigationContext>(*(a2 + 8));
  v347 = v1238;
  if (v346)
  {
    v348 = v346;
    v349 = [*(v346 + 5) routeInfo];
    v350 = [v349 route];
    v351 = [v350 source];

    v352 = [*(v348 + 5) routeInfo];
    v353 = [v352 route];
    if ([v353 transportType])
    {
      v354 = v1172 == 9;
    }

    else
    {
      v354 = 1;
    }

    v355 = !v354;

    v356 = *(v348 + 5);
    if (v356)
    {
      v357 = [*(v348 + 5) useType] != 1;
    }

    else
    {
      v357 = 1;
    }

    v358 = +[VKPlatform sharedPlatform];
    v359 = [v358 reduceMotionEnabled];

    if ((v351 == 4 || v357) | v355 & 1 | v1171 & 1)
    {
      v1186 = 0;
      v347 = v1238;
      goto LABEL_437;
    }

    v347 = v1238;
    if ((*v348 | v359))
    {
      v1186 = 0;
      goto LABEL_437;
    }
  }

  if (!v8)
  {
LABEL_437:
    v363 = obj;
    goto LABEL_438;
  }

  v360 = *v347;
  if (!*(*v347 + 320))
  {
    v363 = obj;
    goto LABEL_439;
  }

  if (v1172 == 9)
  {
    v364 = [*(*&v360 + 160) composedRoute];
    v365 = [v364 anchorPoints];
    v366 = [v365 count];

    v347 = v1238;
    v367 = *v1238;
    if (v366 < 2 || *(a1 + 48) >= v366)
    {
      if (*(*&v367 + 849) != 1)
      {
LABEL_436:
        *(a1 + 48) = v366;
        goto LABEL_437;
      }

      v372 = [*(*&v367 + 160) composedRoute];
      v373 = [v372 anchorPoints];
      v370 = [v373 lastObject];

      v371 = v1238[1];
      *v1277 = *v1238;
      *&v1277[8] = v371;
      if (v371)
      {
        atomic_fetch_add_explicit(&v371->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v368 = [*(*&v367 + 160) composedRoute];
      v369 = [v368 anchorPoints];
      v370 = [v369 objectAtIndexedSubscript:v366 - 2];

      v371 = v1238[1];
      *v1277 = *v1238;
      *&v1277[8] = v371;
      if (v371)
      {
        atomic_fetch_add_explicit(&v371->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    v374 = [v370 routeCoordinate];
    md::RouteRenderLayer::updateRoutelineDrawinAnimation(a1, a2, v1277, v374);
    if (v371)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v371);
    }

    v347 = v1238;
    goto LABEL_436;
  }

  v361 = v347[1];
  *v1277 = *v347;
  *&v1277[8] = v361;
  if (v361)
  {
    atomic_fetch_add_explicit(&v361->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v362 = 0;
  md::RouteRenderLayer::updateRoutelineDrawinAnimation(a1, a2, v1277, v362);
  v363 = obj;
  if (v361)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v361);
  }

LABEL_438:
  v360 = *v347;
LABEL_439:
  if (v1186 && *&v360)
  {
    LODWORD(v1251[0]) = 0;
    md::RouteLineDrawAnimation::update((*&v360 + 632), *(*&v360 + 832), v1251);
    md::RouteLineLayer::updateAnimationParameters(*(*(*v347 + 320) + 8), v375, *(*(*v347 + 320) + 16), v1251[0], 0);
  }

  else
  {
    v376 = *(*&v360 + 696);
    if (v376)
    {
      [v376 stop];
      v360 = *v347;
      v363 = obj;
    }

    v377 = *(*&v360 + 320);
    v378 = *(v377 + 8);
    for (ii = *(v377 + 16); v378 != ii; v378 += 8)
    {
      if (*(*v378 + 2960) == 1)
      {
        *(*v378 + 3112) = 1065353216;
      }
    }
  }

  v380 = *v347;
  if (v1186 && (v381 = *(*&v380 + 696)) != 0 && *(*&v380 + 832) < 1.0)
  {
    if ([v381 state] == 3)
    {
      v380 = *v347;
      goto LABEL_454;
    }

    v382 = [*(*&v380 + 696) state];
    v380 = *v347;
    if (v382 == 4)
    {
LABEL_454:
      v363 = obj;
      goto LABEL_455;
    }

    v383 = 1;
    v363 = obj;
  }

  else
  {
LABEL_455:
    v383 = 0;
    v1186 = 0;
  }

  *(*&v380 + 857) = v383;
  v384 = *(*&v380 + 312);
  v385 = *(*&v380 + 320);
  v386 = v385[43];
  if (v386)
  {
    v387 = v386 == v384;
  }

  else
  {
    v387 = 0;
  }

  if (!v387)
  {
    v385[43] = v384;
    v388 = v385[1];
    v389 = v385[2];
    if (v388 != v389)
    {
      do
      {
        v390 = *v388;
        v391 = *(*(*v388 + 8) + 344);
        ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(*v388 + 2976), *(v391 + 96), *(v391 + 104));
        **(*(v390 + 2976) + 168) = *(*(v391 + 248) + 24);
        ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v390 + 2984), *(v391 + 96), *(v391 + 104));
        **(*(v390 + 2984) + 168) = *(*(v391 + 248) + 24);
        ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v390 + 2992), *(v391 + 96), *(v391 + 104));
        **(*(v390 + 2992) + 168) = *(*(v391 + 248) + 24);
        ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v390 + 3000), *(v391 + 96), *(v391 + 104));
        **(*(v390 + 3000) + 168) = *(*(v391 + 248) + 24);
        ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v390 + 3008), *(v391 + 96), *(v391 + 104));
        **(*(v390 + 3008) + 168) = *(*(v391 + 248) + 24);
        ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v390 + 3016), *(v391 + 96), *(v391 + 104));
        **(*(v390 + 3016) + 168) = *(*(v391 + 248) + 24);
        if (*(v390 + 3137))
        {
          v392 = *(v390 + 3040);
          v393 = *(v391 + 136);
          *v1277 = *(v391 + 128);
          *&v1277[8] = v393;
          if (v393)
          {
            atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
            ggl::PipelineSetup::setState(v392, v1277);
            std::__shared_weak_count::__release_shared[abi:nn200100](v393);
          }

          else
          {
            ggl::PipelineSetup::setState(v392, v1277);
          }
        }

        else
        {
          ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v390 + 3048), *(v391 + 96), *(v391 + 104));
          **(*(v390 + 3048) + 168) = *(*(v391 + 248) + 24);
        }

        v394 = *(v390 + 3080);
        v395 = *(v391 + 168);
        *v1277 = *(v391 + 160);
        *&v1277[8] = v395;
        if (v395)
        {
          atomic_fetch_add_explicit(&v395->__shared_owners_, 1uLL, memory_order_relaxed);
          ggl::PipelineSetup::setState(v394, v1277);
          std::__shared_weak_count::__release_shared[abi:nn200100](v395);
        }

        else
        {
          ggl::PipelineSetup::setState(v394, v1277);
        }

        ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v390 + 3024), *(v391 + 112), *(v391 + 120));
        ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v390 + 3032), *(v391 + 112), *(v391 + 120));
        ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v390 + 3056), *(v391 + 96), *(v391 + 104));
        **(*(v390 + 3056) + 168) = *(*(v391 + 248) + 24);
        ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v390 + 3064), *(v391 + 144), *(v391 + 152));
        **(*(v390 + 3064) + 168) = *(*(v391 + 248) + 24);
        ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v390 + 3072), *(v391 + 144), *(v391 + 152));
        **(*(v390 + 3072) + 168) = *(*(v391 + 248) + 24);
        **(*(v390 + 3088) + 168) = *(*(v391 + 256) + 16);
        **(*(v390 + 3096) + 168) = *(*(v391 + 256) + 16);
        **(*(v390 + 3104) + 168) = *(*(v391 + 256) + 16);
        ++v388;
      }

      while (v388 != v389);
      v380 = *v347;
      v384 = *(*v347 + 312);
    }
  }

  v396 = *(*&v380 + 336);
  v397 = v396[20];
  if (v397)
  {
    v398 = v397 == v384;
  }

  else
  {
    v398 = 0;
  }

  if (!v398)
  {
    v396[20] = v384;
    v399 = v396[1];
    v400 = v396[2];
    if (v399 != v400)
    {
      do
      {
        v401 = *(*(*v399 + 8) + 160);
        v402 = *(*v399 + 288);
        v403 = *(v401 + 184);
        *v1277 = *(v401 + 176);
        *&v1277[8] = v403;
        if (v403)
        {
          atomic_fetch_add_explicit(&v403->__shared_owners_, 1uLL, memory_order_relaxed);
          ggl::PipelineSetup::setState(v402, v1277);
          std::__shared_weak_count::__release_shared[abi:nn200100](v403);
        }

        else
        {
          ggl::PipelineSetup::setState(v402, v1277);
        }

        v399 += 8;
      }

      while (v399 != v400);
      v380 = *v347;
      v384 = *(*v347 + 312);
    }
  }

  v404 = *(*&v380 + 328);
  v405 = v404[20];
  if (v405)
  {
    v406 = v405 == v384;
  }

  else
  {
    v406 = 0;
  }

  if (!v406)
  {
    v404[20] = v384;
    v407 = v404[1];
    v408 = v404[2];
    if (v407 != v408)
    {
      do
      {
        v409 = *(*(*v407 + 8) + 160);
        v410 = *(*v407 + 328);
        v411 = *(v409 + 200);
        *v1277 = *(v409 + 192);
        *&v1277[8] = v411;
        if (v411)
        {
          atomic_fetch_add_explicit(&v411->__shared_owners_, 1uLL, memory_order_relaxed);
          ggl::PipelineSetup::setState(v410, v1277);
          std::__shared_weak_count::__release_shared[abi:nn200100](v411);
        }

        else
        {
          ggl::PipelineSetup::setState(v410, v1277);
        }

        v407 += 8;
      }

      while (v407 != v408);
      v380 = *v347;
    }
  }

  v412 = *(v363 + 1310);
  v413 = *(*&v380 + 144);
  v414 = [v413 composedRoute];
  v415 = [v414 transportType] != 1;

  v416 = v1238;
  if (v1169)
  {
    v417 = *v1169;
    v418 = v1169[1];
    if (*v1169 != v418)
    {
      v419 = *v1169;
      while (*v419 != 2)
      {
        v419 += 16;
        if (v419 == v418)
        {
          goto LABEL_499;
        }
      }

      if (v419 != v418)
      {
        v420 = *(v419 + 8) == 0;
        goto LABEL_500;
      }
    }

LABEL_499:
    v420 = 1;
LABEL_500:
    while (v417 != v418)
    {
      if (*v417 == 23)
      {
        if (v417 == v418)
        {
          if (v420)
          {
            goto LABEL_504;
          }
        }

        else
        {
          v422 = *(v417 + 8);
          if (v420)
          {
            v1174 = *(*v1238 + 623);
            if (!v422)
            {
              goto LABEL_515;
            }

            v1177 = 0;
            v423 = 1;
            goto LABEL_518;
          }

          v423 = 1;
          if (v422)
          {
            v1177 = 0;
            v1174 = 1;
            goto LABEL_518;
          }
        }

LABEL_513:
        v421 = 1;
        goto LABEL_514;
      }

      v417 += 16;
    }

    if (v420)
    {
      goto LABEL_504;
    }

    goto LABEL_513;
  }

LABEL_504:
  v421 = *(*v1238 + 623);
LABEL_514:
  v1174 = v421;
LABEL_515:
  gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v1240, *v1176, (*v1238 + 536));
  md::TrafficMeshStyle::TrafficMeshStyle(v1277, v1240, v1241, 0);
  v1177 = *&v1277[4] == 0;
  if (v1241)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1241);
  }

  v423 = 0;
LABEL_518:
  v1165 = v423;
  if (*(a1 + 113) != 1)
  {
    goto LABEL_530;
  }

  v424 = *v1169;
  v425 = v1169[1];
  if (*v1169 == v425)
  {
    goto LABEL_529;
  }

  v426 = *v1169;
  while (*v426 != 21)
  {
    v426 += 16;
    if (v426 == v425)
    {
      goto LABEL_529;
    }
  }

  if (v426 == v425 || !*(v426 + 8))
  {
LABEL_529:
    while (v424 != v425)
    {
      if (*v424 == 25)
      {
        if (v424 == v425)
        {
          break;
        }

        v427 = *(v424 + 8) != 0;
        goto LABEL_798;
      }

      v424 += 16;
    }

LABEL_530:
    v1200 = 0;
    goto LABEL_531;
  }

  v427 = 1;
LABEL_798:
  v1200 = v427;
LABEL_531:
  md::RouteLayoutContext::RouteLayoutContext(v1251, v1172, *v1238 + 464, a2);
  if (v1168 && *(v1168 + 64) == 1)
  {
    v429 = v1168[9];
    v428 = v1168[10];
    if (v428)
    {
      atomic_fetch_add_explicit(&v428->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v430 = v1266;
    v1265 = v429;
    v1266 = v428;
    if (v430)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v430);
    }

    v1173 = 1;
  }

  else
  {
    v1173 = 0;
  }

  v431 = *v1238;
  v1256 = *(*v1238 + 620);
  v432 = *(*&v431 + 168);
  if (fabs(v432) <= 2.22044605e-16)
  {
    if (GEOGetVectorKitRouteLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
    }

    v433 = GEOGetVectorKitRouteLog_log;
    if (os_log_type_enabled(v433, OS_LOG_TYPE_INFO))
    {
      v434 = *(*v1238 + 168);
      *v1277 = 134217984;
      *&v1277[4] = v434;
      _os_log_impl(&dword_1B2754000, v433, OS_LOG_TYPE_INFO, "*** RouteLine width scale = %f ", v1277, 0xCu);
    }

    v416 = v1238;
    v431 = *v1238;
    v432 = *(*v1238 + 168);
  }

  v435 = v432;
  v1258 = v435;
  v436 = *(*&v431 + 200);
  if (fabsf(v436) <= 0.00000011921)
  {
    if (GEOGetVectorKitRouteLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
    }

    v437 = GEOGetVectorKitRouteLog_log;
    if (os_log_type_enabled(v437, OS_LOG_TYPE_INFO))
    {
      v438 = *(*v416 + 200);
      *v1277 = 134217984;
      *&v1277[4] = v438;
      _os_log_impl(&dword_1B2754000, v437, OS_LOG_TYPE_INFO, "*** RouteLine alpha scale = %f ", v1277, 0xCu);
    }

    v431 = *v1238;
    v436 = *(*v1238 + 200);
  }

  v1257 = v436;
  if (*(*&v431 + 621) == 1)
  {
    if (v1200)
    {
      v439 = 2;
    }

    else
    {
      v439 = 0;
    }
  }

  else
  {
    v439 = *(*&v431 + 620);
    if (*(*&v431 + 620))
    {
      v440 = 1;
    }

    else
    {
      v440 = 2;
    }

    if (!v1200)
    {
      v439 = v440;
    }
  }

  v1259 = (v439 << 24) | (*(*&v431 + 616) << 16);
  BYTE9(v1254[0]) = *(*&v431 + 512);
  v441 = *(*&v431 + 144);
  v442 = [v441 composedRoute];
  v1262 = [v442 transportType];

  if ((**(a2 + 744) | v1200))
  {
    md::LayoutContext::zoomAtCentrePoint(*(a2 + 8));
    v443 = v1238;
    v445 = v444 > 13.5 && (v415 || v412 >= 1.0);
  }

  else
  {
    v445 = 0;
    v443 = v1238;
  }

  v1260 = v445;
  v446 = *a2;
  [v446 contentScale];
  v448 = v447;
  v449 = obj[372];
  v450 = *(*v443 + 168);
  v451 = *a2;
  [v451 sizeInPixels];
  v453 = v452;

  v454 = v449 * v448 * v450 / v453;
  v1263 = v454;
  v1261 = v1177;
  md::LayoutContext::zoomAtCentrePoint(*(a2 + 8));
  v1264 = v455;
  v1267 = a4;
  v1268 = v1178;
  md::LayoutContext::frameState(a2);
  __x = *(v456 + 88);
  v1270 = v1200;
  if (v1179)
  {
    v457 = v1179;
    v458 = *v1179;
  }

  else
  {
    v458 = 0;
    v457 = 0;
  }

  v1271 = v458 & 1;
  v459 = md::LayoutContext::cameraType(a2);
  v1272 = gdc::ToCoordinateSystem(v459);
  isSplinedEnabled = md::CameraContext::isSplinedEnabled(obj, v460);
  if (*(v457 + 36) == 1)
  {
    v461 = *(v457 + 8);
  }

  else
  {
    v461 = -1;
  }

  v1274 = v461;
  v462 = v457[5];
  v463 = [v462 routeInfo];
  v464 = [v463 route];
  v465 = v1275;
  v1275 = v464;

  v466 = v1238;
  v467 = *(*v1238 + 320);
  v468 = *(v467 + 344);
  *(v467 + 200) = v468[2];
  *(v467 + 216) = v468[9];
  *(v467 + 192) = v468[2];
  v469 = *v468;
  *(v467 + 72) = *v468;
  *(v467 + 88) = v469;
  v470 = !v1260;
  v471 = 1;
  if (!v1260)
  {
    v471 = 0;
  }

  v472 = 4;
  if (v1260)
  {
    v472 = 5;
  }

  v473 = v468[v471];
  *(v467 + 56) = v473;
  *(v467 + 104) = v473;
  v474 = v468[v471];
  *(v467 + 120) = v474;
  *(v467 + 136) = v474;
  v475 = v468[v472];
  *(v467 + 64) = v475;
  *(v467 + 80) = v475;
  v476 = v468[v472];
  *(v467 + 96) = v476;
  *(v467 + 112) = v476;
  v477 = 8;
  v478 = v468[v472];
  if (v470)
  {
    v477 = 7;
  }

  *(v467 + 128) = v478;
  *(v467 + 144) = v478;
  *(v467 + 208) = v468[v477];
  *(v467 + 152) = v468[v471];
  v479 = v468[10];
  *(v467 + 224) = v479;
  if (v468[38])
  {
    v480 = 168;
  }

  else
  {
    *(v467 + 184) = v468[6];
    v479 = v468[3];
    v480 = 176;
  }

  *(v467 + v480) = v479;
  *(v467 + 160) = v468[11];
  v481 = *(v467 + 8);
  v482 = *(v467 + 16);
  if (v481 != v482)
  {
    v1164 = v467;
    v483 = 0.5;
    v1232 = vdupq_n_s64(0x16uLL);
    v1221 = *(v467 + 16);
    while (1)
    {
      v484 = *v481;
      if (*(*v481 + 2960) == 1)
      {
        break;
      }

LABEL_758:
      if (++v481 == v482)
      {
        v467 = v1164;
        v481 = *(v1164 + 8);
        v482 = *(v1164 + 16);
        goto LABEL_761;
      }
    }

    v485 = *(*(*(v484 + 8) + 344) + 248);
    if (v485)
    {
      v486 = *(v485 + 16);
    }

    else
    {
      v486 = 1.0;
    }

    md::RouteStyleContext::RouteStyleContext(v1277, v1251, *(v484 + 2968), *(v484 + 3137), v486);
    if ((v1277[2] & 1) == 0)
    {
      if ((*(*(v484 + 8) + 356) & 1) == 0)
      {
        if (GEOGetVectorKitRouteLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
        }

        v492 = GEOGetVectorKitRouteLog_log;
        if (os_log_type_enabled(v492, OS_LOG_TYPE_INFO))
        {
          v493 = [v1275 uniqueRouteID];
          v494 = [v493 UUIDString];
          buf[0].i32[0] = 138412546;
          *(buf[0].i64 + 4) = v494;
          buf[0].i16[6] = 1024;
          *(&buf[0].i32[3] + 2) = v1274;
          _os_log_impl(&dword_1B2754000, v492, OS_LOG_TYPE_INFO, "RouteLineBatch::layout failed due to style locker fail. Route ID %@, route leg %d", buf, 0x12u);
        }

        md::RouteLineSection::dumpStyleAttributes(*(v484 + 2968));
        v466 = v1238;
        *(*(v484 + 8) + 356) = 1;
        v482 = v1221;
      }

      v495 = 24;
      v496 = v484;
      v497 = xmmword_1B33B0560;
      v498 = xmmword_1B33B0550;
      v499 = xmmword_1B33B0C10;
      v500 = xmmword_1B33B0C00;
      do
      {
        if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), v497)), *v497.i8), *v497.i8).u8[0])
        {
          v496[136] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v497)), *&v497), *&v497).i8[1])
        {
          v496[264] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v497, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v498))), *&v497).i8[2])
        {
          v496[392] = 0;
          v496[520] = 0;
        }

        if (vuzp1_s8(*&v497, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v499)), *&v497)).i32[1])
        {
          v496[648] = 0;
        }

        if (vuzp1_s8(*&v497, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v499)), *&v497)).i8[5])
        {
          v496[776] = 0;
        }

        if (vuzp1_s8(*&v497, vuzp1_s16(*&v497, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v500)))).i8[6])
        {
          v496[904] = 0;
          v496[1032] = 0;
        }

        v501 = vdupq_n_s64(8uLL);
        v499 = vaddq_s64(v499, v501);
        v498 = vaddq_s64(v498, v501);
        v497 = vaddq_s64(v497, v501);
        v500 = vaddq_s64(v500, v501);
        v496 += 1024;
        v495 -= 8;
      }

      while (v495);
      *(v484 + 2960) = 0;
      goto LABEL_757;
    }

    if (v1277[0] == 1)
    {
      *(v484 + 136) = 0;
      *(v484 + 392) = 0;
      *(v484 + 648) = 0;
      *(v484 + 904) = 0;
      *(v484 + 1160) = 0;
      *(v484 + 1416) = 0;
      *(v484 + 2440) = 0;
      *(v484 + 2568) = 0;
      *(v484 + 2696) = 0;
      *(v484 + 264) = 0;
      *(v484 + 520) = 0;
      *(v484 + 776) = 0;
      *(v484 + 1032) = 0;
      *(v484 + 1288) = 0;
      *(v484 + 1544) = 0;
      *(v484 + 1672) = 1;
      *(v484 + 2312) = 1;
      *(v484 + 2824) = 1;
      v487 = *(*(v484 + 8) + 344);
      LOBYTE(v1307) = *(v487 + 304);
      BYTE1(v1307) = isSplinedEnabled;
      WORD1(v1307) = v1272;
      md::SinglePassRoutePipelineStateManager::pipelineStateForFunctionConstants(&__src, *(v487 + 208), &v1307);
      v488 = __src;
      ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v484 + 3088), __src.i64[0], __src.i64[1]);
      ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(v484 + 3096), v488.i64[0], v488.i64[1]);
      BYTE3(v1307) = 1;
      md::SinglePassRoutePipelineStateManager::pipelineStateForFunctionConstants(buf, *(v487 + 208), &v1307);
      v489 = buf[0];
      __src = buf[0];
      if (v488.i64[1])
      {
        v1194 = buf[0];
        std::__shared_weak_count::__release_shared[abi:nn200100](v488.i64[1]);
        v489 = v1194;
      }

      v490 = v489.i64[1];
      v491 = *(v484 + 3104);
      buf[0] = v489;
      if (v489.i64[1])
      {
        atomic_fetch_add_explicit((v489.i64[1] + 8), 1uLL, memory_order_relaxed);
        ggl::PipelineSetup::setState(v491, buf);
        std::__shared_weak_count::__release_shared[abi:nn200100](v490);
      }

      else
      {
        ggl::PipelineSetup::setState(v491, buf);
      }

      v510 = *(v484 + 3112);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, *(*(*(v484 + 3088) + 136) + 64));
      *buf[2].i64[1] = v510;
      ggl::BufferMemory::~BufferMemory(buf);
      v511 = *(*(v484 + 2968) + 208);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, *(*(*(v484 + 3088) + 136) + 64));
      v512 = v511;
      *(buf[2].i64[1] + 4) = v512;
      ggl::BufferMemory::~BufferMemory(buf);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(buf, *(*(v484 + 8) + 328), 0);
      v513 = buf[2].i64[1];
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v1310, *(*(*(v484 + 3088) + 136) + 48), 1);
      v514 = 0;
      v515 = *&v1311[24];
      do
      {
        *(v515 + v514) = *(v513 + v514);
        v514 += 4;
      }

      while (v514 != 64);
      ggl::BufferMemory::~BufferMemory(&v1310);
      v516 = buf[2].i64[1] + 64;
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v1310, *(*(*(v484 + 3088) + 136) + 48), 1);
      v517 = 0;
      v518 = *&v1311[24] + 64;
      do
      {
        *(v518 + v517) = *(v516 + v517);
        v517 += 4;
      }

      while (v517 != 16);
      ggl::BufferMemory::~BufferMemory(&v1310);
      v519 = buf[2].i64[1];
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v1310, *(*(*(v484 + 3096) + 136) + 48), 1);
      v520 = 0;
      v521 = *&v1311[24];
      do
      {
        *(v521 + v520) = *(v519 + v520);
        v520 += 4;
      }

      while (v520 != 64);
      ggl::BufferMemory::~BufferMemory(&v1310);
      v522 = buf[2].i64[1] + 64;
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v1310, *(*(*(v484 + 3096) + 136) + 48), 1);
      v523 = 0;
      v524 = *&v1311[24] + 64;
      do
      {
        *(v524 + v523) = *(v522 + v523);
        v523 += 4;
      }

      while (v523 != 16);
      ggl::BufferMemory::~BufferMemory(&v1310);
      v525 = buf[2].i64[1];
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v1310, *(*(*(v484 + 3104) + 136) + 48), 1);
      v526 = 0;
      v527 = *&v1311[24];
      do
      {
        *(v527 + v526) = *(v525 + v526);
        v526 += 4;
      }

      while (v526 != 64);
      ggl::BufferMemory::~BufferMemory(&v1310);
      v528 = buf[2].i64[1] + 64;
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v1310, *(*(*(v484 + 3104) + 136) + 48), 1);
      v529 = 0;
      v530 = *&v1311[24] + 64;
      do
      {
        *(v530 + v529) = *(v528 + v529);
        v529 += 4;
      }

      while (v529 != 16);
      ggl::BufferMemory::~BufferMemory(&v1310);
      ggl::BufferMemory::~BufferMemory(buf);
      v531 = *(v484 + 3112);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, *(*(*(v484 + 3096) + 136) + 64));
      *buf[2].i64[1] = v531;
      ggl::BufferMemory::~BufferMemory(buf);
      v532 = *(*(v484 + 2968) + 208);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, *(*(*(v484 + 3096) + 136) + 64));
      v533 = v532;
      *(buf[2].i64[1] + 4) = v533;
      ggl::BufferMemory::~BufferMemory(buf);
      *(v484 + 1584) = *(v484 + 3088);
      *(v484 + 2224) = *(v484 + 3096);
      *(v484 + 2736) = *(v484 + 3104);
      operator new();
    }

    v502 = *(*(v484 + 2968) + 64);
    *&v1307 = v502;
    v503 = *(v484 + 3137);
    v504 = v1277[1];
    if ((v503 & 1) == 0)
    {
      if (v1277[1])
      {
        v504 = 1;
        v505 = 11;
        v506 = 9;
        v1195 = 7;
        v507 = 5;
        v508 = 3;
        v509 = 1;
        goto LABEL_635;
      }

      v504 = 0;
    }

    v509 = 0;
    v505 = 10;
    v506 = 8;
    v1195 = 6;
    v507 = 4;
    v508 = 2;
LABEL_635:
    v534 = (v504 ^ 1 | v503) & 1;
    *(v484 + 136) = v534;
    *(v484 + 392) = v534;
    *(v484 + 648) = v534;
    *(v484 + 904) = v534;
    *(v484 + 1160) = v534;
    *(v484 + 1416) = v534;
    *(v484 + 264) = v504 & (v503 ^ 1);
    *(v484 + 520) = v504 & (v503 ^ 1);
    *(v484 + 776) = v504 & (v503 ^ 1);
    *(v484 + 1032) = v504 & (v503 ^ 1);
    *(v484 + 1288) = v504 & (v503 ^ 1);
    *(v484 + 1544) = v504 & (v503 ^ 1);
    if ((v503 & 1) == 0)
    {
      *(v484 + 2056) = (v504 ^ 1) & 1;
      *(v484 + 2184) = v504 & 1;
    }

    v535 = v484 + 16;
    *(v484 + 2440) = 0;
    *(v484 + 1672) = 0;
    *(v484 + 2312) = 0;
    *(v484 + 2824) = 0;
    if (v1277[3] == 1)
    {
      v536 = 0;
      buf[0] = 0uLL;
      v1310 = 0uLL;
      __src = 0uLL;
      if ((v503 & 1) == 0)
      {
        v536 = *(v484 + 3048);
      }

      _setupRenderItems(&v1277[8], buf, &v1277[56], &v1310, &v1278, &__src, *(v484 + 2976), *(v484 + 2984), v1293, v1294, v1295, v1257, v502, v1296, v1297, *(v484 + 2992), v536, v535 + (v509 << 7), v535 + (v508 << 7), v535 + (v507 << 7), v503);
      buf[0] = 0uLL;
      v1310 = 0uLL;
      __src = 0uLL;
      _setupRenderItems(buf, &v1280, &v1310, &v1281 + 8, &__src, v1283, *(v484 + 3000), *(v484 + 3008), v1293, v1294, v1295, v1257, *&v1307, v1296, v1297, *(v484 + 3016), 0, v535 + (v1195 << 7), v535 + (v506 << 7), v535 + (v505 << 7), *(v484 + 3137));
LABEL_722:
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, *(*(*(v484 + 3080) + 136) + 32));
      v580 = *(v484 + 3080);
      v581 = +[VKDebugSettings sharedSettings];
      [v581 routeLineMaskWidth];
      v482 = v1221;
      v583 = v582;
      [v581 routeLineMaskAlphaFalloff];
      v585 = v584;
      v586 = *(v484 + 2968);
      gm::Box<double,3>::center<double>(v586 + 144);
      v588 = exp(v587 * 6.28318531 + -3.14159265);
      v589 = atan(v588);
      v590 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v589 * 114.591559 + -90.0);
      if (v1265)
      {
        v591 = *v1265;
        v585 = v1265[1];
      }

      else
      {
        v591 = v583;
      }

      v592 = *(v586 + 64);
      v593 = v590 * (v483 * v591 * v1258) / v1268;
      v594 = buf[2].i64[1];
      *(buf[2].i64[1] + 100) = v585;
      *v594 = v593;
      *(v594 + 32) = v592;
      *(v594 + 96) = 0;
      *(v594 + 92) = v1297;
      *(v484 + 1712) = v580;
      *(v484 + 1800) = 1;

      ggl::BufferMemory::~BufferMemory(buf);
      v595 = 0;
      v596 = *(v484 + 2968);
      v597 = (*(v596 + 216) + v1259) | (v1291 << 18);
      v598 = v1262;
      v599 = v1262 != 1;
      v600 = *(v596 + 192);
      if (v600 != 2)
      {
        v599 = 1;
      }

      v601 = BYTE9(v1254[0]);
      v602 = BYTE9(v1254[0]) + 2;
      v603 = v600 == 1 && v1262 == 1;
      v604 = 163840;
      v605 = BYTE9(v1254[0]) + 1;
      if (v599)
      {
        v604 = 0x8000;
        v606 = v597;
      }

      else
      {
        v606 = v597 | 0x20000;
      }

      v607 = v484 + 56;
      v466 = v1238;
      while (2)
      {
        switch(v595)
        {
          case 2:
          case 3:
          case 4:
          case 5:
            *v607 = v601;
            goto LABEL_737;
          case 6:
          case 7:
          case 10:
          case 11:
            *v607 = BYTE9(v1254[0]) + v603;
LABEL_737:
            v608 = v606;
            goto LABEL_755;
          case 8:
          case 9:
            *v607 = v601;
            v608 = v597 | v604;
            goto LABEL_755;
          case 12:
            v608 = v597 | 0x2000;
            if (*(v484 + 3137))
            {
              goto LABEL_755;
            }

            goto LABEL_752;
          case 13:
          case 15:
          case 16:
            *v607 = v601;
            v608 = v597;
            goto LABEL_755;
          case 14:
            *v607 = v601;
            v608 = v597 | 0xFFFFFFFF80000000;
            goto LABEL_755;
          case 17:
            v608 = v597 | 0x4000;
            if ((*(v484 + 3137) & 1) == 0)
            {
              goto LABEL_752;
            }

            goto LABEL_755;
          case 19:
          case 20:
            if (v599)
            {
              *v607 = v601;
            }

            else
            {
              *v607 = v602;
            }

            v608 = v597 | 0x40000000;
            goto LABEL_755;
          case 21:
LABEL_752:
            *v607 = v601;
            goto LABEL_753;
          default:
            *v607 = v601;
            v608 = v597 | 0x8000;
            if (v598 != 1)
            {
              goto LABEL_755;
            }

            if (v600 == 2)
            {
              *v607 = v602;
              v608 = v597 | 0x28000;
            }

            else
            {
              v608 = v597 | 0x8000;
              if (v600 == 1)
              {
                *v607 = v605;
LABEL_753:
                v608 = v597 | 0x8000;
              }
            }

LABEL_755:
            *(v607 + 8) = v608;
            ++v595;
            v607 += 128;
            if (v595 != 22)
            {
              continue;
            }

            md::RenderItemPool::reset((v484 + 2912));
            break;
        }

        break;
      }

LABEL_757:
      std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v1287);
      goto LABEL_758;
    }

    v537 = 0;
    v538 = *(v484 + 2984);
    v539 = *(v484 + 2992);
    obja = *(v484 + 3024);
    v1170 = *(v484 + 3032);
    if (v1277[5])
    {
      v540 = 0;
    }

    else
    {
      v540 = *(v484 + 2976);
    }

    buf[0] = 0uLL;
    v1310 = 0uLL;
    if ((v503 & 1) == 0)
    {
      v537 = *(v484 + 3048);
    }

    v1167 = v535 + (v508 << 7);
    v1180 = v535 + (v509 << 7);
    _setupRenderItems(&v1277[8], &v1277[40], &v1277[56], buf, &v1278, &v1310, v540, v538, v1293, v1294, v1295, v1257, v502, v1296, v1297, v539, v537, v1180, v1167, v535 + (v507 << 7), v503);
    v541 = *(v484 + 2968);
    v543 = *(v541 + 280);
    v542 = *(v541 + 288);
    if (v542)
    {
      atomic_fetch_add_explicit(&v542->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!v543)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v542);
        goto LABEL_655;
      }

      v544 = v1260;
      std::__shared_weak_count::__release_shared[abi:nn200100](v542);
      if (!v544)
      {
LABEL_655:
        if (v1277[5] != 1)
        {
LABEL_698:
          *(v535 + (v1195 << 7) + 120) = 0;
          *(v535 + (v506 << 7) + 120) = 0;
          *(v535 + (v505 << 7) + 120) = 0;
          if (*(v484 + 3137) == 1)
          {
            if (v1277[5] == 1)
            {
              *(v484 + 1928) = 0;
            }

            else
            {
              md::RouteLineBatch::setupAlphaResetRenderItem(v1251, v484 + 1808, *(v484 + 3040), v1292, v1298);
            }
          }

          *(v484 + 2568) = 0;
          *(v484 + 2696) = 0;
          if (v1277[6] == 1)
          {
            v573 = *(v484 + 2968);
            v574 = v573[37];
            v575 = v573[38];
            __src.i64[0] = v574;
            __src.i64[1] = v575;
            if (v575)
            {
              atomic_fetch_add_explicit(&v575->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v576 = v573[40];
            *&v1324 = v573[39];
            *(&v1324 + 1) = v576;
            if (v576)
            {
              atomic_fetch_add_explicit(&v576->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v577 = v573[41];
            v578 = v573[42];
            v1321[0] = v577;
            v1321[1] = v578;
            if (v578)
            {
              atomic_fetch_add_explicit((v578 + 8), 1uLL, memory_order_relaxed);
            }

            v579 = v573[44];
            *&v1303 = v573[43];
            *(&v1303 + 1) = v579;
            if (v579)
            {
              atomic_fetch_add_explicit(&v579->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v574)
            {
              setupTrafficRenderItem(v1251, &__src, &v1324, v484 + 2448, v1293, v1297, v1296, *&v1307);
            }

            if (v577 && v1260)
            {
              setupTrafficRenderItem(v1251, v1321, &v1303, v484 + 2576, v1293, v1297, v1296, *&v1307);
            }

            if (v579)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v579);
            }

            if (v578)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v578);
            }

            if (v576)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v576);
            }

            if (v575)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v575);
            }
          }

          goto LABEL_722;
        }

        v545 = *(&v1252 + 1) * v1292;
        v546 = *(v484 + 3120);
        if (v546)
        {
          memset(buf, 0, 24);
          buf[1].i8[8] = v1289;
          v547 = v1287;
          v548 = v1288 - v1287;
          v1161 = v505;
          if (v1288 == v1287)
          {
            v550 = 0;
          }

          else
          {
            std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__vallocate[abi:nn200100](buf, v548 >> 2);
            v549 = buf[0].i64[1];
            memmove(buf[0].i64[1], v547, v548);
            v550 = v549 + v548;
            buf[0].i64[1] = v549 + v548;
          }

          buf[2].f32[0] = v1290;
          if (*(v546 + 46) == (v545 + 0.5) && v1290 == *(v546 + 32) && v550 - buf[0].i64[0] == *(v546 + 8) - *v546)
          {
            v505 = v1161;
            if (v550 == buf[0].i64[0])
            {
              std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
              goto LABEL_677;
            }

            v551 = 0;
            v552 = (v550 - buf[0].i64[0]) >> 2;
            v553 = 1;
            do
            {
              v554 = vabds_f32(*(buf[0].i64[0] + 4 * v551), *(*v546 + 4 * v551));
              v551 = v553++;
            }

            while (v554 <= 0.00000011921 && v552 > v551);
            std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
            v483 = 0.5;
            if (v554 <= 0.00000011921)
            {
LABEL_677:
              v564 = *(v484 + 3120);
              LOWORD(v556) = *(v564 + 40);
              *&v1324 = (v1258 * v556) / *(&v1252 + 1);
              if (*(*(v484 + 2968) + 208) / v1263 >= *(v564 + 48))
              {
                __src.i64[0] = &v1324;
                __src.i64[1] = v484;
                v1332 = v1251;
                p_src = &v1307;
                v1334 = v1277;
                md::RouteLineBatch::layoutTwoPasses(md::RouteLayoutContext const&,md::RouteStyleContext const&)::$_0::operator()(&__src, obja, &v1277[24], &v1277[40]);
                *(v1180 + 32) = obja;
                v572 = fabsf(v1294);
                if (v572 <= (v572 * 0.000011921) || v572 < 1.1755e-38)
                {
                  *(v1167 + 120) = 0;
                }

                if (*(v484 + 2440) == 1)
                {
                  md::RouteLineBatch::layoutTwoPasses(md::RouteLayoutContext const&,md::RouteStyleContext const&)::$_0::operator()(&__src, v1170, &v1285, v1286);
                  *(v484 + 2352) = v1170;
                }
              }

              else
              {
                v565 = 24;
                v566 = v484;
                v567 = xmmword_1B33B0560;
                v568 = xmmword_1B33B0550;
                v569 = xmmword_1B33B0C10;
                v570 = xmmword_1B33B0C00;
                do
                {
                  if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v1232, v567)), *v567.i8), *v567.i8).u8[0])
                  {
                    v566[136] = 0;
                  }

                  if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v567)), *&v567), *&v567).i8[1])
                  {
                    v566[264] = 0;
                  }

                  if (vuzp1_s8(vuzp1_s16(*&v567, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v568))), *&v567).i8[2])
                  {
                    v566[392] = 0;
                    v566[520] = 0;
                  }

                  if (vuzp1_s8(*&v567, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v569)), *&v567)).i32[1])
                  {
                    v566[648] = 0;
                  }

                  if (vuzp1_s8(*&v567, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v569)), *&v567)).i8[5])
                  {
                    v566[776] = 0;
                  }

                  if (vuzp1_s8(*&v567, vuzp1_s16(*&v567, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v570)))).i8[6])
                  {
                    v566[904] = 0;
                    v566[1032] = 0;
                  }

                  v571 = vdupq_n_s64(8uLL);
                  v569 = vaddq_s64(v569, v571);
                  v568 = vaddq_s64(v568, v571);
                  v567 = vaddq_s64(v567, v571);
                  v570 = vaddq_s64(v570, v571);
                  v566 += 1024;
                  v565 -= 8;
                }

                while (v565);
                *(v484 + 2960) = 0;
              }

              goto LABEL_698;
            }
          }

          else
          {
            std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
            v505 = v1161;
          }
        }

        v557 = *(*(v484 + 8) + 344);
        *v1311 = 0;
        v1310 = 0uLL;
        v1311[8] = v1289;
        v558 = v1287;
        v559 = v1288 - v1287;
        if (v1288 != v1287)
        {
          std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__vallocate[abi:nn200100](&v1310, v559 >> 2);
          v1160 = v506;
          v560 = v505;
          v561 = v1310.i64[1];
          memmove(v1310.i64[1], v558, v559);
          v562 = v561 + v559;
          v505 = v560;
          v506 = v1160;
          v1310.i64[1] = v562;
        }

        *&v1311[16] = v1290;
        md::DashTextureCache::textureForPattern(&__src, (v557 + 264), &v1310, 0, v545);
        v563 = *(v484 + 3128);
        *(v484 + 3120) = __src;
        if (v563)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v563);
        }

        std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v1310);
        **(*(v484 + 3024) + 168) = *(*(v484 + 3120) + 64);
        **(*(v484 + 3032) + 168) = *(*(v484 + 3120) + 64);
        goto LABEL_677;
      }
    }

    else if (!v543 || !v1260)
    {
      goto LABEL_655;
    }

    if (v1277[4] == 1)
    {
      *(v484 + 2440) = 1;
      buf[0] = 0u;
      v1310 = 0u;
      __src = 0u;
      v1324 = 0u;
      _setupRenderItems(&v1285, v1286, buf, &v1310, &__src, &v1324, *(v484 + 3056), 0, v1299, 0.0, 0.0, v1257, *&v1307, v1296, v1297, 0, 0, v484 + 2320, 0, 0, *(v484 + 3137));
    }

    goto LABEL_655;
  }

LABEL_761:
  v609 = v467;
  if (v481 == v482)
  {
    v610 = 0;
  }

  else
  {
    v610 = 0;
    do
    {
      v611 = *v481++;
      v610 += *(v611 + 2960);
    }

    while (v481 != v482);
  }

  if (*(v467 + 352) != v610)
  {
    if (GEOGetVectorKitRouteLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
    }

    v612 = GEOGetVectorKitRouteLog_log;
    if (os_log_type_enabled(v612, OS_LOG_TYPE_INFO))
    {
      *v1277 = 67109120;
      *&v1277[4] = v610;
      _os_log_impl(&dword_1B2754000, v612, OS_LOG_TYPE_INFO, "RouteLine batchRendered = %d", v1277, 8u);
    }

    v466 = v1238;
  }

  *(v609 + 352) = v610;
  v613 = *(*v466 + 336);
  *(v613 + 56) = **(v613 + 160);
  md::LayoutContext::frameState(v1251[0]);
  if ((*(v614 + 632) & 1) == 0)
  {
    v634 = *(v613 + 8);
    v633 = *(v613 + 16);
    goto LABEL_811;
  }

  v615 = *(v1251[0] + 1);
  __pb = md::LayoutContext::get<md::CameraContext>(v615);
  v1222 = v613;
  if (*(__pb + 3784))
  {
    v616 = *(v613 + 72);
    if (v616)
    {
      v617 = 0;
      v618 = 0;
      v619 = *(gdc::Camera::cameraFrame(__pb) + 16);
      do
      {
        for (jj = 0; jj != 4; ++jj)
        {
          v621 = v617 | (4 * jj);
          geo::Frustum<double>::transformed(v1277, __pb + 984, v616 + 1696 + 56 * v621);
          v622 = v616 + 32 + 104 * v621;
          v623 = *(v622 + 56);
          v624 = *(v622 + 88);
          buf[1] = *(v622 + 72);
          buf[2] = v624;
          buf[0] = v623;
          v1310 = 0uLL;
          *v1311 = v619;
          gm::Box<double,3>::operator+=(buf[0].i64, &v1310);
          for (kk = 0; kk != 192; kk += 32)
          {
            v626 = 0;
            v627 = *&v1277[kk + 16];
            __src = *&v1277[kk];
            v1332 = v627;
            do
            {
              v628 = (buf + v626 * 8);
              if (*&__src.i64[v626] >= 0.0)
              {
                v628 = &buf[1].i64[v626 + 1];
              }

              v1310.i64[v626++] = *v628;
            }

            while (v626 != 3);
            v629 = 0;
            v630 = 0.0;
            do
            {
              v630 = v630 + *&v1277[kk + v629 * 8] * *&v1310.i64[v629];
              ++v629;
            }

            while (v629 != 3);
            v631 = *&v1277[kk + 24] + v630;
            if (v631 < 0.0)
            {
              break;
            }
          }

          v632 = 1 << (4 * jj + v617);
          if (v631 < 0.0)
          {
            v632 = 0;
          }

          v618 |= v632;
        }

        ++v617;
      }

      while (v617 != 4);
      goto LABEL_801;
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v1277, *(v613 + 120), 0);
    v636 = *&v1277[40];
    v637 = 0.0;
  }

  else
  {
    v635 = 0.0;
    if (*md::LayoutContext::get<md::ElevationContext>(v615) == 1 && *(v613 + 112) == 1)
    {
      v635 = *(gdc::Camera::cameraFrame(__pb) + 16) * 0.0000000249532021 * (1 << *(v613 + 81));
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v1277, *(v613 + 120), 0);
    v636 = *&v1277[40];
    v637 = v635;
  }

  v618 = ggl::CullingGrid::intersectedCellsForView(v636, v637);
  ggl::BufferMemory::~BufferMemory(v1277);
LABEL_801:
  v634 = *(v1222 + 8);
  v633 = *(v1222 + 16);
  if (v634 == v633)
  {
    v466 = v1238;
  }

  else
  {
    v638 = *(v1222 + 8);
    v466 = v1238;
    do
    {
      v639 = *v638;
      v640 = *(*v638 + 248);
      v641 = *(*v638 + 256);
      if (v640 == v641)
      {
        v642 = 0;
      }

      else
      {
        v642 = 0;
        do
        {
          v643 = *v640++;
          v644 = (*(v643 + 96) & v618) != 0;
          v642 |= v644;
          *(v643 + 48) = v644;
        }

        while (v640 != v641);
      }

      *(v639 + 136) = v642 & 1;
      *(v639 + 272) = v642 & 1;
      ++v638;
    }

    while (v638 != v633);
  }

LABEL_811:
  __asm { FMOV            V0.4S, #1.0 }

  for (mm = _Q0; v634 != v633; ++v634)
  {
    v649 = *v634;
    if (*(*v634 + 272) == 1)
    {
      v650 = *(*(*(v649 + 8) + 160) + 248);
      if (v650)
      {
        v651 = *(v650 + 16);
      }

      else
      {
        v651 = 1.0;
      }

      md::RouteStyleContext::RouteStyleContext(v1277, v1251, *(v649 + 280), *(v649 + 296), v651);
      if (v1277[2])
      {
        *(v649 + 272) = 1;
        v652 = *(v649 + 280);
        v653 = *(v649 + 288);
        v654 = *(v652 + 64);
        *(v649 + 136) = 1;
        v655 = v1257;
        v656 = *(v652 + 208);
        v657 = v656 / (v1258 * v1268);
        v658 = (v1258 * v657) / (v656 / ((*(v652 + 56) * v1300) + ((v1258 * v1268) * v1292)));
        v659 = v1293;
        v660 = *(v649 + 296);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, *(*(v653 + 136) + 32));
        v661 = 0;
        v662 = buf[2].i64[1];
        *(buf[2].i64[1] + 80) = v655;
        v662->f32[0] = v659;
        v662[4] = vsubq_f32(mm, *&v1277[8]);
        do
        {
          v662[3].i32[v661] = *&v1277[v661 * 4 + 40];
          ++v661;
        }

        while (v661 != 4);
        v662[2].i32[0] = v654;
        v662[6].f32[2] = v658;
        ggl::BufferMemory::~BufferMemory(buf);
        if (v653 && (v660 & 1) == 0)
        {
          v663 = *&v1277[20];
          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, *(*(v653 + 136) + 32));
          v664 = buf[2].i64[1];
          *(buf[2].i64[1] + 84) = v663 * 0.9;
          *(v664 + 88) = 1065353216;
          ggl::BufferMemory::~BufferMemory(buf);
        }

        *(v649 + 48) = v653;
        md::RenderItemPool::reset((v649 + 224));
        v466 = v1238;
      }

      else
      {
        *(v649 + 136) = 0;
        *(v649 + 272) = 0;
      }

      std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v1287);
    }
  }

  v1181 = *(*(a1 + 40) + 24);
  v665 = *(v1181 + 8);
  v666 = md::FrameGraph::renderQueueForPass(v665, *(a1 + 98));
  if (v666)
  {
    v667 = *(*(v666 + 16) + 8 * *(a1 + 99));
  }

  else
  {
    v667 = 0;
  }

  v668 = md::FrameGraph::renderQueueForPass(v665, *(a1 + 104));
  if (v668)
  {
    v669 = *(*(v668 + 16) + 8 * *(a1 + 105));
  }

  else
  {
    v669 = 0;
  }

  v670 = md::FrameGraph::renderQueueForPass(v665, *(a1 + 96));
  if (v670)
  {
    v671 = *(*(v670 + 16) + 8 * *(a1 + 97));
  }

  else
  {
    v671 = 0;
  }

  v672 = md::FrameGraph::renderQueueForPass(v665, *(a1 + 102));
  if (v672)
  {
    v673 = *(*(v672 + 16) + 8 * *(a1 + 103));
  }

  else
  {
    v673 = 0;
  }

  v674 = md::FrameGraph::renderQueueForPass(v665, *(a1 + 100));
  if (v674)
  {
    v675 = *(*(v674 + 16) + 8 * *(a1 + 101));
  }

  else
  {
    v675 = 0;
  }

  v676 = md::FrameGraph::renderQueueForPass(v665, *(a1 + 106));
  if (v676)
  {
    __pc = *(*(v676 + 16) + 8 * *(a1 + 107));
  }

  else
  {
    __pc = 0;
  }

  v677 = *(*v466 + 320);
  v678 = *(v677 + 8);
  v679 = *(v677 + 16);
  if (v678 != v679)
  {
    do
    {
      v680 = *v678;
      *v1277 = &unk_1F29F1AD0;
      *&v1277[8] = v667;
      *&v1277[24] = v1277;
      md::Ribbons::RibbonBatch<md::Ribbons::RouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(v680, 0x300u, v1277);
      std::__function::__value_func<void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v1277);
      ++v678;
    }

    while (v678 != v679);
    v466 = v1238;
    v677 = *(*v1238 + 320);
  }

  v681 = *(v677 + 8);
  v682 = *(v677 + 16);
  if (v681 != v682)
  {
    do
    {
      v683 = *v681;
      *v1277 = &unk_1F29F1AD0;
      *&v1277[8] = v669;
      *&v1277[24] = v1277;
      md::Ribbons::RibbonBatch<md::Ribbons::RouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(v683, 0xCu, v1277);
      std::__function::__value_func<void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v1277);
      ++v681;
    }

    while (v681 != v682);
    v677 = *(*v466 + 320);
  }

  v684 = *(v677 + 8);
  v685 = *(v677 + 16);
  if (v684 != v685)
  {
    do
    {
      v686 = *v684;
      *v1277 = &unk_1F29F1AD0;
      *&v1277[8] = v671;
      *&v1277[24] = v1277;
      md::Ribbons::RibbonBatch<md::Ribbons::RouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(v686, 0xC00u, v1277);
      std::__function::__value_func<void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v1277);
      ++v684;
    }

    while (v684 != v685);
    v677 = *(*v466 + 320);
  }

  v687 = *(v677 + 8);
  v688 = *(v677 + 16);
  if (v687 != v688)
  {
    do
    {
      v689 = *v687;
      *v1277 = &unk_1F29F1AD0;
      *&v1277[8] = v673;
      *&v1277[24] = v1277;
      md::Ribbons::RibbonBatch<md::Ribbons::RouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(v689, 0x30u, v1277);
      std::__function::__value_func<void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v1277);
      ++v687;
    }

    while (v687 != v688);
    v677 = *(*v466 + 320);
  }

  v690 = *(v677 + 8);
  for (nn = *(v677 + 16); v690 != nn; ++v690)
  {
    v692 = *v690;
    *v1277 = &unk_1F29F1AD0;
    *&v1277[8] = v675;
    *&v1277[24] = v1277;
    md::Ribbons::RibbonBatch<md::Ribbons::RouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(v692, 0xC0u, v1277);
    std::__function::__value_func<void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v1277);
  }

  if (v1200)
  {
    v693 = 2494467;
  }

  else
  {
    v693 = 262147;
  }

  v694 = v693 | 0x180000;
  if (v1177)
  {
    v694 = v693;
  }

  if (v1174)
  {
    v695 = v694;
  }

  else
  {
    v695 = v693;
  }

  if (*(a1 + 113))
  {
    v696 = 0x4000;
  }

  else
  {
    v696 = 98304;
  }

  if (*(a1 + 113) & v1165)
  {
    v697 = md::FrameGraph::renderQueueForPass(*(v1181 + 8), *(a1 + 108));
    if (v697)
    {
      v698 = *(*(v697 + 16) + 8 * *(a1 + 109));
    }

    else
    {
      v698 = 0;
    }

    v699 = *(*v466 + 320);
    v700 = *(v699 + 8);
    for (i1 = *(v699 + 16); v700 != i1; ++v700)
    {
      v702 = *v700;
      *v1277 = &unk_1F29F1AD0;
      *&v1277[8] = v698;
      *&v1277[24] = v1277;
      md::Ribbons::RibbonBatch<md::Ribbons::RouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(v702, 0x4000u, v1277);
      std::__function::__value_func<void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v1277);
    }

    v696 = 0x4000;
  }

  v703 = *v466;
  v704 = *(*v466 + 320);
  v705 = *(v704 + 8);
  v706 = *(v704 + 16);
  if (v705 != v706)
  {
    do
    {
      v707 = *v705;
      *v1277 = &unk_1F29F1AD0;
      *&v1277[8] = __pc;
      *&v1277[24] = v1277;
      md::Ribbons::RibbonBatch<md::Ribbons::RouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(v707, v695 | v696, v1277);
      std::__function::__value_func<void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v1277);
      ++v705;
    }

    while (v705 != v706);
    v703 = *v466;
  }

  v708 = *(*&v703 + 336);
  v709 = *(v708 + 8);
  v710 = *(v708 + 16);
  if (v709 != v710)
  {
    objb = *(v708 + 16);
    do
    {
      v711 = *v709;
      buf[0].i64[0] = &unk_1F29F1B18;
      buf[0].i64[1] = __pc;
      buf[1].i64[1] = buf;
      if (*(v711 + 272) == 1)
      {
        v1310 = 0uLL;
        *v1311 = 0;
        std::vector<unsigned int>::reserve(&v1310, 5uLL);
        v1196 = v709;
        if (*(v711 + 136))
        {
          *v1277 = 0;
          std::vector<unsigned int>::push_back[abi:nn200100](&v1310, v1277);
          v713 = *(*(v711 + 8) + 56);
          *(v711 + 40) = v713;
          _ZF = *(v713 + 58) == 1;
          v714 = 16;
          if (_ZF)
          {
            v714 = 32;
          }
        }

        else
        {
          v714 = 16;
        }

        v1209 = v714;
        v715 = v1310.i64[0];
        if (v1310.i64[0] != v1310.i64[1])
        {
          v717 = *(v711 + 248);
          v716 = *(v711 + 256);
          if (v717 == v716)
          {
            v718 = 0;
          }

          else
          {
            v718 = 0;
            v1203 = *(v711 + 256);
            do
            {
              v719 = *v717;
              if (*(*v717 + 48) == 1)
              {
                if (*(v719 + 88) != v718)
                {
                  v1223 = v718;
                  if (v718)
                  {
                    v720 = ggl::Batcher::commit((v711 + 144), 0xC8u, v712);
                    if (v720[1] != *v720)
                    {
                      v721 = v1310.i64[1];
                      v722 = v1310.i64[0];
                      if (v1310.i64[0] != v1310.i64[1])
                      {
                        v723 = v720;
                        do
                        {
                          v724 = *v722;
                          *v1277 = &off_1F2A5D8B8;
                          v725 = v711 + 16 + (v724 << 7);
                          v726 = *(v725 + 8);
                          v727 = *(v725 + 24);
                          *&v1277[40] = *(v725 + 40);
                          *&v1277[24] = v727;
                          *&v1277[8] = v726;
                          v728 = *(v725 + 56);
                          v729 = *(v725 + 72);
                          v730 = *(v725 + 88);
                          v1279 = *(v725 + 104);
                          v1278 = v730;
                          *&v1277[72] = v729;
                          *&v1277[56] = v728;
                          v731 = *(v711 + 232);
                          v732 = v731[1];
                          if (v732 == *(v711 + 240))
                          {
                            v731 = *v731;
                            if (!v731)
                            {
                              v731 = malloc_type_malloc(120 * v732 + 16, 0x1020040EDED9539uLL);
                              *v731 = 0;
                              v731[1] = 0;
                              **(v711 + 232) = v731;
                            }

                            *(v711 + 232) = v731;
                            v732 = v731[1];
                          }

                          v733 = &v731[15 * v732];
                          v731[1] = v732 + 1;
                          v733[2] = &off_1F2A5D8B8;
                          v734 = *&v1277[8];
                          v735 = *&v1277[24];
                          *(v733 + 7) = *&v1277[40];
                          *(v733 + 5) = v735;
                          *(v733 + 3) = v734;
                          v736 = *&v1277[56];
                          v737 = *&v1277[72];
                          v738 = v1278;
                          *(v733 + 15) = v1279;
                          *(v733 + 13) = v738;
                          *(v733 + 11) = v737;
                          *(v733 + 9) = v736;
                          ggl::RenderItem::~RenderItem(v1277);
                          v733[10] = v1223;
                          v739 = *v723;
                          v733[13] = *v723;
                          v733[14] = (v723[1] - v739) >> 4;
                          std::function<void ()(md::Ribbons::DottedRouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(buf[1].i64[1], v724, (v733 + 2));
                          ++v722;
                          v466 = v1238;
                        }

                        while (v722 != v721);
                      }
                    }
                  }

                  v719 = *v717;
                  v718 = *(*v717 + 88);
                  v716 = v1203;
                }

                ggl::Batcher::addRange(v711 + 144, (v719 + v1209));
              }

              ++v717;
            }

            while (v717 != v716);
            v715 = v1310.i64[0];
          }

          v740 = ggl::Batcher::commit((v711 + 144), 0xC8u, v712);
          if (v740[1] != *v740)
          {
            v741 = v1310.i64[1];
            if (v715 != v1310.i64[1])
            {
              v742 = v740;
              do
              {
                v743 = *v715;
                *v1277 = &off_1F2A5D8B8;
                v744 = v711 + 16 + (v743 << 7);
                v745 = *(v744 + 8);
                v746 = *(v744 + 24);
                *&v1277[40] = *(v744 + 40);
                *&v1277[24] = v746;
                *&v1277[8] = v745;
                v747 = *(v744 + 56);
                v748 = *(v744 + 72);
                v749 = *(v744 + 88);
                v1279 = *(v744 + 104);
                v1278 = v749;
                *&v1277[72] = v748;
                *&v1277[56] = v747;
                v750 = *(v711 + 232);
                v751 = v750[1];
                if (v751 == *(v711 + 240))
                {
                  v750 = *v750;
                  if (!v750)
                  {
                    v750 = malloc_type_malloc(120 * v751 + 16, 0x1020040EDED9539uLL);
                    *v750 = 0;
                    v750[1] = 0;
                    **(v711 + 232) = v750;
                  }

                  *(v711 + 232) = v750;
                  v751 = v750[1];
                }

                v752 = &v750[15 * v751];
                v750[1] = v751 + 1;
                v752[2] = &off_1F2A5D8B8;
                v753 = *&v1277[8];
                v754 = *&v1277[24];
                *(v752 + 7) = *&v1277[40];
                *(v752 + 5) = v754;
                *(v752 + 3) = v753;
                v755 = *&v1277[56];
                v756 = *&v1277[72];
                v757 = v1278;
                *(v752 + 15) = v1279;
                *(v752 + 13) = v757;
                *(v752 + 11) = v756;
                *(v752 + 9) = v755;
                ggl::RenderItem::~RenderItem(v1277);
                v752[10] = v718;
                v758 = *v742;
                v752[13] = *v742;
                v752[14] = (v742[1] - v758) >> 4;
                std::function<void ()(md::Ribbons::DottedRouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(buf[1].i64[1], v743, (v752 + 2));
                ++v715;
              }

              while (v715 != v741);
              v715 = v1310.i64[0];
              v466 = v1238;
            }
          }
        }

        if (v715)
        {
          v1310.i64[1] = v715;
          operator delete(v715);
        }

        v710 = objb;
        v709 = v1196;
      }

      std::__function::__value_func<void ()(md::Ribbons::DottedRouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](buf);
      ++v709;
    }

    while (v709 != v710);
  }

  if (v1173)
  {
    v759 = md::FrameGraph::renderQueueForPass(*(v1181 + 8), *(a1 + 110));
    if (v759)
    {
      v760 = *(*(v759 + 16) + 8 * *(a1 + 111));
    }

    else
    {
      v760 = 0;
    }

    *(v760 + 32) = *(*(a1 + 56) + 8);
    v761 = *(*v466 + 320);
    v762 = *(v761 + 8);
    for (i2 = *(v761 + 16); v762 != i2; ++v762)
    {
      v764 = *v762;
      *v1277 = &unk_1F29F1AD0;
      *&v1277[8] = v760;
      *&v1277[24] = v1277;
      md::Ribbons::RibbonBatch<md::Ribbons::RouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(v764, 0x2000u, v1277);
      std::__function::__value_func<void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v1277);
    }

    ggl::CommandBuffer::clearMPSItems(v760);
    v765 = +[VKDebugSettings sharedSettings];
    [v765 daVinciRouteLineMaskBlurSigma];

    operator new();
  }

  if (v1174 & v1177)
  {
    v766 = gdc::Context::get<md::StyleLogicContext>(*(a2 + 8));
    gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(v1321, *v766, (*v466 + 536));
    v767 = v1321[0];
    v768 = v1321[1];
    if (v1321[1])
    {
      atomic_fetch_add_explicit(v1321[1] + 1, 1uLL, memory_order_relaxed);
    }

    md::TrafficMeshStyle::TrafficMeshStyle(&v1303, v767, v768, 0);
    if (v768)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v768);
    }

    v769 = *v466;
    if (!*(*v466 + 272) || !v769[33] || (v769[75] == v1303 ? (v770 = v769[76] == *(&v1303 + 1)) : (v770 = 0), !v770))
    {
      *v1277 = 0;
      *&v1277[8] = v1277;
      *&v1277[16] = 0x5812000000;
      *&v1277[24] = __Block_byref_object_copy__17;
      *&v1277[32] = __Block_byref_object_dispose__18;
      *&v1277[40] = "";
      memset(&v1277[48], 0, 32);
      *&v1277[80] = 1065353216;
      buf[0].i64[0] = 0;
      buf[0].i64[1] = buf;
      buf[1].i64[0] = 0x5812000000;
      buf[1].i64[1] = __Block_byref_object_copy__20;
      buf[2].i64[0] = __Block_byref_object_dispose__21;
      buf[2].i64[1] = "";
      memset(&buf[3], 0, 32);
      LODWORD(v1316) = 1065353216;
      v771 = v769[20];
      v1310.i64[0] = MEMORY[0x1E69E9820];
      v1310.i64[1] = 3321888768;
      *v1311 = ___ZN2md16RouteRenderLayer19layoutLegacyTrafficERKNS_13LayoutContextERKNS_18RouteLayoutContextERKNSt3__110shared_ptrINS_16RouteLineOverlayEEEPN3ggl13CommandBufferE_block_invoke;
      *&v1311[8] = &unk_1F29F1858;
      *&v1311[16] = v1277;
      *&v1311[24] = buf;
      *&v1311[32] = v1321[0];
      *&v1311[40] = v1321[1];
      if (v1321[1])
      {
        atomic_fetch_add_explicit(v1321[1] + 1, 1uLL, memory_order_relaxed);
      }

      v1312 = v1303;
      [v771 forEachSection:&v1310];
      v772 = *(a2 + 744);
      __src.i64[0] = MEMORY[0x1E69E9820];
      __src.i64[1] = 3221225472;
      v1332 = ___ZN2md16RouteRenderLayer19layoutLegacyTrafficERKNS_13LayoutContextERKNS_18RouteLayoutContextERKNSt3__110shared_ptrINS_16RouteLineOverlayEEEPN3ggl13CommandBufferE_block_invoke_23;
      p_src = &unk_1E7B33030;
      v1336 = v466;
      v1334 = v1277;
      v1335 = buf;
      v1326 = 0;
      *&v1324 = &unk_1F2A59B50;
      *(&v1324 + 1) = MEMORY[0x1B8C62DA0](&__src);
      v1326 = &v1324;
      v1308 = 0;
      v1307 = 0;
      ggl::Loader::performWithAccessor(*(v772 + 32));
      if (v1308)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v1308);
      }

      std::__function::__value_func<void ()(ggl::ResourceAccessor *)>::~__value_func[abi:nn200100](&v1324);
      v466 = v1238;
      *(*v1238 + 600) = v1303;
      if (*&v1311[40])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*&v1311[40]);
      }

      _Block_object_dispose(buf, 8);
      std::__hash_table<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::TrafficBatchKey>,std::equal_to<md::TrafficBatchKey>,true>,std::__unordered_map_equal<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::TrafficBatchKey>,std::hash<md::TrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(&buf[3]);
      _Block_object_dispose(v1277, 8);
      std::__hash_table<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::TrafficBatchKey>,std::equal_to<md::TrafficBatchKey>,true>,std::__unordered_map_equal<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::TrafficBatchKey>,std::hash<md::TrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(&v1277[48]);
    }

    md::RibbonLayoutContext::RibbonLayoutContext(v1277, a2);
    v1280 = 0;
    *(&v1279 + 1) = 0;
    memset_pattern16(&v1281, &unk_1B33B2570, 0x10uLL);
    v1284 = 0;
    *&v1283[7] = 0;
    v1277[56] = 1;
    *v1283 = 0;
    v1282 = v1259 | 0x40000000;
    v1277[57] = *(*v466 + 512);
    v1283[8] = v1260;
    v773 = v1321[0];
    v774 = v1321[1];
    if (v1321[1])
    {
      atomic_fetch_add_explicit(v1321[1] + 1, 1uLL, memory_order_relaxed);
      v775 = v1280;
      *(&v1279 + 1) = v773;
      v1280 = v774;
      if (v775)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v775);
      }
    }

    else
    {
      *(&v1279 + 1) = v1321[0];
      v1280 = 0;
    }

    v1281 = v1303;
    v1283[9] = 0;
    *v1283 = 0;
    v776 = *v466;
    v777 = *(*v466 + 504);
    if (v777)
    {
      v778 = *(v777 + 256);
      v779 = *(v777 + 264);
      v780 = a1;
      if (v779)
      {
        atomic_fetch_add_explicit(&v779->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(buf, v778, v779);
      if (v779)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v779);
      }

      md::RouteLineSection::halfWidthAtZoom(buf, *&v1277[8]);
      v782 = *(*v466 + 168) * v781;
      *v1283 = v782;
      if (buf[2].u8[0] == 1)
      {
        (*(*buf[0].i64[0] + 56))(buf[0].i64[0]);
      }

      if (buf[1].i64[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](buf[1].i64[1]);
      }

      if (buf[0].i64[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](buf[0].i64[1]);
      }

      v776 = *v466;
    }

    else
    {
      v780 = a1;
    }

    v783 = v776[34];
    v784 = v783[20];
    v785 = *(v780 + 80);
    if (!v784 || v784 != v785)
    {
      md::PilledTrafficLayer::setSharedResources(v783, v785);
      v776 = *v466;
      v785 = *(v780 + 80);
    }

    v786 = v776[33];
    v787 = v786[21];
    if (!v787 || v787 != v785)
    {
      md::SolidTrafficLayer::setSharedResources(v786, v785);
      v776 = *v466;
    }

    md::PilledTrafficLayer::layout(v776[34], v1277);
    v788 = *(*v466 + 272);
    buf[0].i64[0] = &unk_1F2A04EC8;
    buf[0].i64[1] = __pc;
    buf[1].i64[1] = buf;
    md::Ribbons::RibbonLayer<md::Ribbons::PilledTrafficRibbonDescriptor>::collectRenderItemsForPasses(*(v788 + 8), *(v788 + 16), buf);
    std::__function::__value_func<void ()(md::Ribbons::PilledTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](buf);
    md::SolidTrafficLayer::layout(*(*v466 + 264), v1277);
    v789 = *(*v466 + 264);
    buf[0].i64[0] = &unk_1F2A04F10;
    buf[0].i64[1] = __pc;
    buf[1].i64[1] = buf;
    md::Ribbons::RibbonLayer<md::Ribbons::SolidTrafficRibbonDescriptor>::collectRenderItemsForPasses(*(v789 + 8), *(v789 + 16), buf);
    std::__function::__value_func<void ()(md::Ribbons::SolidTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](buf);
    if (v1280)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v1280);
    }

    if (v1321[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v1321[1]);
    }
  }

  if (v1186)
  {
    v790 = *v466;
    if (*(*v466 + 832) < 1.0)
    {
      v791 = v1259;
      v792 = v790[87];
      if (v792)
      {
        if ([v792 state] == 3 || objc_msgSend(v790[87], "state") == 4)
        {
          goto LABEL_1001;
        }

        v790 = *v466;
      }

      v793 = v790[80];
      if (v793 && v790[81])
      {
        if (*(v790[40] + 16) != *(v790[40] + 8))
        {
          v794 = 0;
          v795 = (v790 + 1);
          v796 = v1162;
          do
          {
            v797 = 0;
            v798 = v790 + 88;
            do
            {
              v799 = 0;
              v800 = 0.0;
              v801 = v795;
              do
              {
                v802 = *v801;
                v801 += 4;
                v800 = v800 + *&v798[v799++] * v802;
              }

              while (v799 != 4);
              *&v1277[32 * v797++ + 8 * v794] = v800;
              v798 += 4;
            }

            while (v797 != 4);
            ++v794;
            ++v795;
          }

          while (v794 != 4);
          for (i3 = 0; i3 != 4; ++i3)
          {
            v804 = 0;
            v805 = v1277;
            do
            {
              v806 = 0;
              v807 = 0.0;
              v808 = v796;
              do
              {
                v809 = *v808;
                v808 += 4;
                v807 = v807 + *&v805[v806] * v809;
                v806 += 8;
              }

              while (v806 != 32);
              *&buf[2 * v804++].i64[i3] = v807;
              v805 += 32;
            }

            while (v804 != 4);
            ++v796;
          }

          v810 = 0;
          v811 = buf;
          do
          {
            v813 = *v811;
            v812 = v811[1];
            v811 += 2;
            *(&v1310 + v810) = vcvt_hight_f32_f64(vcvt_f32_f64(v813), v812);
            v810 += 16;
          }

          while (v810 != 64);
          ggl::DataAccess<ggl::Tile::View>::DataAccess(buf, **(v793 + 136), 1);
          v814 = buf[2].i64[1];
          *buf[2].i64[1] = v1310;
          v814[1] = *v1311;
          v814[2] = *&v1311[16];
          v814[3] = *&v1311[32];
          ggl::BufferMemory::~BufferMemory(buf);
          ggl::DataAccess<ggl::Tile::View>::DataAccess(buf, **(*(*v466 + 640) + 136), 1);
          *(buf[2].i64[1] + 64) = v1178;
          ggl::BufferMemory::~BufferMemory(buf);
          v790 = *v466;
          v793 = *(*v466 + 640);
        }

        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v793 + 136), *(v793 + 232), v790[29], v790[30]);
        md::RouteLineDrawAnimation::updateStyle((*v466 + 632), *(*v466 + 320));
        v816 = v791 + 1;
        v817 = *(*v466 + 648);
        *(v817 + 48) = v816;
        v819 = a5[10];
        v818 = a5[11];
        if (v819 >= v818)
        {
          v822 = a5[9];
          v823 = (v819 - v822) >> 3;
          if ((v823 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v824 = v818 - v822;
          v825 = v824 >> 2;
          if (v824 >> 2 <= (v823 + 1))
          {
            v825 = v823 + 1;
          }

          if (v824 >= 0x7FFFFFFFFFFFFFF8)
          {
            v826 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v826 = v825;
          }

          *&v1277[32] = a5 + 12;
          if (v826)
          {
            v827 = ggl::zone_mallocator::instance(v815);
            v828 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::RenderItem *>(v827, v826);
          }

          else
          {
            v828 = 0;
          }

          v830 = &v828[8 * v826];
          v829 = &v828[8 * v823];
          *v829 = v817;
          v820 = v829 + 8;
          v821 = a5;
          v831 = a5[9];
          v832 = a5[10] - v831;
          v833 = &v829[-v832];
          memcpy(&v829[-v832], v831, v832);
          v834 = a5[9];
          a5[9] = v833;
          a5[10] = v820;
          v835 = a5[11];
          a5[11] = v830;
          *&v1277[16] = v834;
          *&v1277[24] = v835;
          *&v1277[8] = v834;
          *v1277 = v834;
          std::__split_buffer<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator> &>::~__split_buffer(v1277);
        }

        else
        {
          *v819 = v817;
          v820 = v819 + 1;
          v821 = a5;
        }

        v821[10] = v820;
      }
    }
  }

LABEL_1001:
  v836 = v466[1];
  v1239[0] = *v466;
  v1239[1] = v836;
  if (v836)
  {
    atomic_fetch_add_explicit(&v836->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  md::RouteRenderLayer::layoutArrowsAndManeuverPoints(a1, a2, v1239, v1171, __pc, v1178);
  if (v836)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v836);
  }

  v837 = *(*v466 + 328);
  *(v837 + 56) = **(v837 + 160);
  md::LayoutContext::frameState(v1251[0]);
  if ((*(v838 + 632) & 1) == 0)
  {
    v857 = *(v837 + 8);
    v858 = *(v837 + 16);
    goto LABEL_1039;
  }

  v839 = *(v1251[0] + 1);
  v1224 = md::LayoutContext::get<md::CameraContext>(v839);
  if (*(v1224 + 3784))
  {
    v840 = *(v837 + 72);
    if (v840)
    {
      v841 = 0;
      v842 = 0;
      v843 = *(gdc::Camera::cameraFrame(v1224) + 16);
      do
      {
        for (i4 = 0; i4 != 4; ++i4)
        {
          v845 = v841 | (4 * i4);
          geo::Frustum<double>::transformed(v1277, v1224 + 984, v840 + 1696 + 56 * v845);
          v846 = v840 + 32 + 104 * v845;
          v847 = *(v846 + 56);
          v848 = *(v846 + 88);
          buf[1] = *(v846 + 72);
          buf[2] = v848;
          buf[0] = v847;
          v1310 = 0uLL;
          *v1311 = v843;
          gm::Box<double,3>::operator+=(buf[0].i64, &v1310);
          for (i5 = 0; i5 != 192; i5 += 32)
          {
            v850 = 0;
            v851 = *&v1277[i5 + 16];
            __src = *&v1277[i5];
            v1332 = v851;
            do
            {
              v852 = (buf + v850 * 8);
              if (*&__src.i64[v850] >= 0.0)
              {
                v852 = &buf[1].i64[v850 + 1];
              }

              v1310.i64[v850++] = *v852;
            }

            while (v850 != 3);
            v853 = 0;
            v854 = 0.0;
            do
            {
              v854 = v854 + *&v1277[i5 + v853 * 8] * *&v1310.i64[v853];
              ++v853;
            }

            while (v853 != 3);
            v855 = *&v1277[i5 + 24] + v854;
            if (v855 < 0.0)
            {
              break;
            }
          }

          v856 = 1 << (4 * i4 + v841);
          if (v855 < 0.0)
          {
            v856 = 0;
          }

          v842 |= v856;
        }

        ++v841;
      }

      while (v841 != 4);
      goto LABEL_1031;
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v1277, *(v837 + 120), 0);
    v860 = *&v1277[40];
    v861 = 0.0;
  }

  else
  {
    v859 = 0.0;
    if (*md::LayoutContext::get<md::ElevationContext>(v839) == 1 && *(v837 + 112) == 1)
    {
      v859 = *(gdc::Camera::cameraFrame(v1224) + 16) * 0.0000000249532021 * (1 << *(v837 + 81));
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v1277, *(v837 + 120), 0);
    v860 = *&v1277[40];
    v861 = v859;
  }

  v842 = ggl::CullingGrid::intersectedCellsForView(v860, v861);
  ggl::BufferMemory::~BufferMemory(v1277);
LABEL_1031:
  v857 = *(v837 + 8);
  v858 = *(v837 + 16);
  if (v857 != v858)
  {
    v862 = *(v837 + 8);
    do
    {
      v863 = *v862;
      v864 = *(*v862 + 248);
      v865 = *(*v862 + 256);
      if (v864 == v865)
      {
        v866 = 0;
      }

      else
      {
        v866 = 0;
        do
        {
          v867 = *v864++;
          v868 = (*(v867 + 96) & v842) != 0;
          v866 |= v868;
          *(v867 + 48) = v868;
        }

        while (v864 != v865);
      }

      *(v863 + 136) = v866 & 1;
      *(v863 + 272) = v866 & 1;
      ++v862;
    }

    while (v862 != v858);
  }

LABEL_1039:
  if (v857 != v858)
  {
    while (1)
    {
      v869 = *v857;
      if (*(*v857 + 272) == 1)
      {
        break;
      }

LABEL_1122:
      if (++v857 == v858)
      {
        goto LABEL_1123;
      }
    }

    v870 = *(v869 + 280);
    v871 = *(v870 + 248);
    v872 = *(v870 + 256);
    if (v872)
    {
      atomic_fetch_add_explicit(&v872->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v1321, v871, v872);
    if (v872)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v872);
    }

    if ((v1322 & 1) == 0)
    {
      if (GEOGetVectorKitRouteLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
      }

      v887 = GEOGetVectorKitRouteLog_log;
      if (os_log_type_enabled(v887, OS_LOG_TYPE_INFO))
      {
        *v1277 = 0;
        _os_log_impl(&dword_1B2754000, v887, OS_LOG_TYPE_INFO, "***RouteStyledOverlayBatch failed to layout", v1277, 2u);
      }

      *(v869 + 136) = 0;
      *(v869 + 272) = 0;
      goto LABEL_1116;
    }

    v873 = *(v869 + 280);
    v874 = *(v873 + 56);
    v875 = *&v1251[1];
    v876 = *(v873 + 64);
    v877 = *(v869 + 320);
    v878 = *(v869 + 324);
    md::RouteStyledOverlayBatch::StyleProperties::StyleProperties(v1277, (v869 + 288), *&v1251[1]);
    md::RouteStyledOverlayBatch::StyleProperties::StyleProperties(buf, (v869 + 304), v875);
    v1310 = 0uLL;
    *v1311 = 1092616192;
    memset(&v1311[4], 0, 32);
    std::string::basic_string[abi:nn200100]<0>(&v1311[40], "");
    std::string::basic_string[abi:nn200100]<0>(&v1313, "");
    v879 = fminf(fminf(fmaxf((v878 - (v876 + (v874 * 20.0))) / (v874 * 20.0), 0.0), 1.0), fminf(fmaxf(((v876 + (v874 * 20.0)) - v877) / (v874 * 20.0), 0.0), 1.0));
    v1310 = vmlaq_n_f32(*v1277, vsubq_f32(buf[0], *v1277), v879);
    *v1311 = vmlaq_n_f32(*&v1277[16], vsubq_f32(buf[1], *&v1277[16]), v879);
    *&v1311[16] = vmlaq_n_f32(*&v1277[32], vsubq_f32(buf[2], *&v1277[32]), v879);
    *&v1311[32] = *&v1277[48] + ((buf[3].f32[0] - *&v1277[48]) * v879);
    v1314 = *&v1279 + ((*&v1319 - *&v1279) * v879);
    if (v1277[79] >= 0)
    {
      v880 = v1277[79];
    }

    else
    {
      v880 = *&v1277[64];
    }

    v881 = buf[4].u8[15];
    if (buf[4].i8[15] < 0)
    {
      v881 = buf[4].i64[0];
    }

    if (v880)
    {
      v882 = &v1277[56];
      if (v881)
      {
        goto LABEL_1053;
      }
    }

    else
    {
      v882 = &buf[3].u32[2];
      if (!v881)
      {
LABEL_1053:
        if (v879 > 0.5)
        {
          v882 = &buf[3].u32[2];
        }

        else
        {
          v882 = &v1277[56];
        }
      }
    }

    v1225 = v879;
    std::string::operator=(&v1311[40], v882);
    if (v1278.i8[15] >= 0)
    {
      v883 = v1278.u8[15];
    }

    else
    {
      v883 = v1278.i64[0];
    }

    v884 = HIBYTE(v1318);
    if (v1318 < 0.0)
    {
      v884 = v1317;
    }

    if (v883)
    {
      v885 = &v1277[80];
      v886 = v1225;
      if (v884)
      {
        goto LABEL_1063;
      }
    }

    else
    {
      v885 = &v1316;
      v886 = v1225;
      if (!v884)
      {
LABEL_1063:
        if (v886 > 0.5)
        {
          v885 = &v1316;
        }

        else
        {
          v885 = &v1277[80];
        }
      }
    }

    std::string::operator=(&v1313, v885);
    if (v1310.f32[3] == 0.0)
    {
      *(v869 + 136) = 0;
      *(v869 + 272) = 0;
    }

    else
    {
      md::RouteLineSection::halfWidthAtZoom(v1321, v875);
      v889 = v888;
      v890 = v1258;
      v891 = v1310.f32[0];
      v1226 = 0.0;
      v892 = 0.0;
      if (v1310.f32[1] > 0.0)
      {
        v893 = v1310.f32[1];
        v892 = fmod(__x, v1310.f32[1]) / v893;
      }

      v1210 = v892;
      if (v1310.f32[2] > 0.0)
      {
        v894 = v1310.f32[2];
        v895 = fmod(__x, v1310.f32[2]) / v894;
        v1226 = v895;
      }

      v896 = *md::LayoutContext::get<md::SharedResourcesContext>(*(v1251[0] + 1));
      v897 = v896;
      if (v896)
      {
        objc_msgSend_textureManager(v896);
      }

      else
      {
        v1303 = 0uLL;
      }

      v898 = v1303;
      v899 = *(&v1252 + 1);
      v900 = *(v869 + 344);
      v1301[0] = *(v869 + 336);
      v1301[1] = &v900->__vftable;
      if (v900)
      {
        atomic_fetch_add_explicit(&v900->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      md::TextureManager::texture(&v1307, v898, &v1311[40], v1301, 1, v899);
      if (v900)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v900);
      }

      v901 = v1307;
      if (v1307)
      {
        md::SharedResource::addFrameRef(v1307, v1276);
        v902 = (v901 + 32);
        v903 = v1303;
      }

      else
      {
        v903 = v1303;
        v902 = v1303;
      }

      v904 = *v902;
      v905 = *(&v1252 + 1);
      v906 = *(v869 + 344);
      v1345 = *(v869 + 336);
      v1346 = v906;
      if (v906)
      {
        atomic_fetch_add_explicit(&v906->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      md::TextureManager::texture(&v1348, v903, &v1313, &v1345, 1, v905);
      if (v906)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v906);
      }

      v907 = v1348;
      if (v1348)
      {
        md::SharedResource::addFrameRef(v1348, v1276);
        v908 = (v907 + 32);
      }

      else
      {
        v908 = v1303;
      }

      v909 = *v908;
      **(*(v869 + 328) + 168) = v904;
      *(*(*(v869 + 328) + 168) + 8) = v909;
      v910 = *(*(*(v869 + 328) + 136) + 32);
      ggl::BufferMemory::BufferMemory(&v1324);
      ggl::ResourceAccessor::accessConstantData(&__src, 0, v910, 1);
      ggl::BufferMemory::operator=(&v1324, &__src);
      ggl::BufferMemory::~BufferMemory(&__src);
      v911 = v1328;
      v1328->i32[0] = v1310.i32[3];
      v911->f32[1] = (v891 + v889) * v890;
      v912 = *(v869 + 280);
      v911[1].f32[0] = *(v912 + 56) * *v1311;
      v911[2] = vmla_n_f32(*&v1311[4], *&v1311[12], v1210);
      v911[3] = vmla_n_f32(*&v1311[20], *&v1311[28], v1226);
      v911[4].f32[0] = v1314;
      v911[4].i32[1] = 1065353216;
      *(v869 + 48) = *(v869 + 328);
      *(v869 + 136) = 1;
      *(v869 + 64) = (*(v912 + 216) + v1259) | 0x20000;
      ggl::BufferMemory::~BufferMemory(&v1324);
      if (v1349)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v1349);
      }

      if (v1308)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v1308);
      }

      if (*(&v1303 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v1303 + 1));
      }
    }

    if (SHIBYTE(v1313.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v1313.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v1312) < 0)
    {
      operator delete(*&v1311[40]);
    }

    if (SHIBYTE(v1318) < 0)
    {
      operator delete(v1316);
    }

    if (buf[4].i8[15] < 0)
    {
      operator delete(buf[3].i64[1]);
    }

    if (v1278.i8[15] < 0)
    {
      operator delete(*&v1277[80]);
    }

    if ((v1277[79] & 0x80000000) != 0)
    {
      operator delete(*&v1277[56]);
    }

LABEL_1116:
    if (v1322 == 1)
    {
      (*v1321[0])[7](v1321[0]);
    }

    if (v1321[3])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v1321[3]);
    }

    if (v1321[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v1321[1]);
    }

    goto LABEL_1122;
  }

LABEL_1123:
  v913 = v1238;
  v914 = *(*v1238 + 328);
  v915 = *(v914 + 8);
  v916 = *(v914 + 16);
  if (v915 != v916)
  {
    objc = *(v914 + 16);
    do
    {
      v917 = *v915;
      buf[0].i64[0] = &unk_1F29F1B60;
      buf[0].i64[1] = __pc;
      buf[1].i64[1] = buf;
      if (*(v917 + 272) == 1)
      {
        v1310 = 0uLL;
        *v1311 = 0;
        std::vector<unsigned int>::reserve(&v1310, 5uLL);
        v1197 = v915;
        if (*(v917 + 136))
        {
          *v1277 = 0;
          std::vector<unsigned int>::push_back[abi:nn200100](&v1310, v1277);
          v919 = *(*(v917 + 8) + 56);
          *(v917 + 40) = v919;
          _ZF = *(v919 + 58) == 1;
          v920 = 16;
          if (_ZF)
          {
            v920 = 32;
          }
        }

        else
        {
          v920 = 16;
        }

        v1211 = v920;
        v921 = v1310.i64[0];
        if (v1310.i64[0] != v1310.i64[1])
        {
          v923 = *(v917 + 248);
          v922 = *(v917 + 256);
          if (v923 == v922)
          {
            v924 = 0;
          }

          else
          {
            v924 = 0;
            v1204 = *(v917 + 256);
            do
            {
              v925 = *v923;
              if (*(*v923 + 48) == 1)
              {
                if (*(v925 + 88) != v924)
                {
                  v1227 = v924;
                  if (v924)
                  {
                    v926 = ggl::Batcher::commit((v917 + 144), 0xC8u, v918);
                    if (v926[1] != *v926)
                    {
                      v927 = v1310.i64[1];
                      v928 = v1310.i64[0];
                      if (v1310.i64[0] != v1310.i64[1])
                      {
                        v929 = v926;
                        do
                        {
                          v930 = *v928;
                          *v1277 = &off_1F2A5D8B8;
                          v931 = v917 + 16 + (v930 << 7);
                          v932 = *(v931 + 8);
                          v933 = *(v931 + 24);
                          *&v1277[40] = *(v931 + 40);
                          *&v1277[24] = v933;
                          *&v1277[8] = v932;
                          v934 = *(v931 + 56);
                          v935 = *(v931 + 72);
                          v936 = *(v931 + 88);
                          v1279 = *(v931 + 104);
                          v1278 = v936;
                          *&v1277[72] = v935;
                          *&v1277[56] = v934;
                          v937 = *(v917 + 232);
                          v938 = v937[1];
                          if (v938 == *(v917 + 240))
                          {
                            v937 = *v937;
                            if (!v937)
                            {
                              v937 = malloc_type_malloc(120 * v938 + 16, 0x1020040EDED9539uLL);
                              *v937 = 0;
                              v937[1] = 0;
                              **(v917 + 232) = v937;
                            }

                            *(v917 + 232) = v937;
                            v938 = v937[1];
                          }

                          v939 = &v937[15 * v938];
                          v937[1] = v938 + 1;
                          v939[2] = &off_1F2A5D8B8;
                          v940 = *&v1277[8];
                          v941 = *&v1277[24];
                          *(v939 + 7) = *&v1277[40];
                          *(v939 + 5) = v941;
                          *(v939 + 3) = v940;
                          v942 = *&v1277[56];
                          v943 = *&v1277[72];
                          v944 = v1278;
                          *(v939 + 15) = v1279;
                          *(v939 + 13) = v944;
                          *(v939 + 11) = v943;
                          *(v939 + 9) = v942;
                          ggl::RenderItem::~RenderItem(v1277);
                          v939[10] = v1227;
                          v945 = *v929;
                          v939[13] = *v929;
                          v939[14] = (v929[1] - v945) >> 4;
                          std::function<void ()(md::Ribbons::RouteStyledOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(buf[1].i64[1], v930, (v939 + 2));
                          ++v928;
                        }

                        while (v928 != v927);
                      }
                    }
                  }

                  v925 = *v923;
                  v924 = *(*v923 + 88);
                  v922 = v1204;
                }

                ggl::Batcher::addRange(v917 + 144, (v925 + v1211));
              }

              ++v923;
            }

            while (v923 != v922);
            v921 = v1310.i64[0];
          }

          v946 = ggl::Batcher::commit((v917 + 144), 0xC8u, v918);
          v913 = v1238;
          if (v946[1] != *v946)
          {
            v947 = v1310.i64[1];
            if (v921 != v1310.i64[1])
            {
              v948 = v946;
              do
              {
                v949 = *v921;
                *v1277 = &off_1F2A5D8B8;
                v950 = v917 + 16 + (v949 << 7);
                v951 = *(v950 + 8);
                v952 = *(v950 + 24);
                *&v1277[40] = *(v950 + 40);
                *&v1277[24] = v952;
                *&v1277[8] = v951;
                v953 = *(v950 + 56);
                v954 = *(v950 + 72);
                v955 = *(v950 + 88);
                v1279 = *(v950 + 104);
                v1278 = v955;
                *&v1277[72] = v954;
                *&v1277[56] = v953;
                v956 = *(v917 + 232);
                v957 = v956[1];
                if (v957 == *(v917 + 240))
                {
                  v956 = *v956;
                  if (!v956)
                  {
                    v956 = malloc_type_malloc(120 * v957 + 16, 0x1020040EDED9539uLL);
                    *v956 = 0;
                    v956[1] = 0;
                    **(v917 + 232) = v956;
                  }

                  *(v917 + 232) = v956;
                  v957 = v956[1];
                }

                v958 = &v956[15 * v957];
                v956[1] = v957 + 1;
                v958[2] = &off_1F2A5D8B8;
                v959 = *&v1277[8];
                v960 = *&v1277[24];
                *(v958 + 7) = *&v1277[40];
                *(v958 + 5) = v960;
                *(v958 + 3) = v959;
                v961 = *&v1277[56];
                v962 = *&v1277[72];
                v963 = v1278;
                *(v958 + 15) = v1279;
                *(v958 + 13) = v963;
                *(v958 + 11) = v962;
                *(v958 + 9) = v961;
                ggl::RenderItem::~RenderItem(v1277);
                v958[10] = v924;
                v964 = *v948;
                v958[13] = *v948;
                v958[14] = (v948[1] - v964) >> 4;
                std::function<void ()(md::Ribbons::RouteStyledOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(buf[1].i64[1], v949, (v958 + 2));
                ++v921;
                v913 = v1238;
              }

              while (v921 != v947);
              v921 = v1310.i64[0];
            }
          }
        }

        if (v921)
        {
          v1310.i64[1] = v921;
          operator delete(v921);
        }

        v916 = objc;
        v915 = v1197;
      }

      std::__function::__value_func<void ()(md::Ribbons::RouteStyledOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](buf);
      ++v915;
    }

    while (v915 != v916);
  }

  v1182 = +[VKDebugSettings sharedSettings];
  if ([v1182 highlightRouteLineSnappingStatus])
  {
    v965 = [*md::LayoutContext::get<md::SharedResourcesContext>(*(a2 + 8)) shaderLibrary];
    v966 = *(*v913 + 368);
    if (!v966)
    {
      v969 = *(v965 + 80);
      v970 = *(v969 + 400);
      v1310.i64[0] = *(v969 + 392);
      v1310.i64[1] = v970;
      if (v970)
      {
        atomic_fetch_add_explicit((v970 + 8), 1uLL, memory_order_relaxed);
      }

      memset(&v1277[24], 0, 20);
      v1277[0] = 1;
      *&v1277[4] = xmmword_1B33B0790;
      *&v1277[20] = 7;
      v1277[44] = 15;
      [*(*(a1 + 40) + 104) format];
      operator new();
    }

    v967 = *(v966 + 4);
    v968 = *(v966 + 5);
    if (v967 != v968)
    {
      do
      {
        *v1277 = *v967;
        std::vector<ggl::Debug::BasePipelineSetup *,geo::allocator_adapter<ggl::Debug::BasePipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v966, v1277);
        ++v967;
      }

      while (v967 != v968);
      v967 = *(v966 + 4);
      v968 = *(v966 + 5);
    }

    if (v967 != v968)
    {
      *(v966 + 5) = v967;
    }

    ggl::FragmentedPool<ggl::RenderItem>::pushAll(*(*v913 + 376));
    ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>::pushAll(*(*v913 + 384));
    v971 = md::LayoutContext::get<md::CameraContext>(*(a2 + 8));
    __src.i64[0] = 0;
    __src.i64[1] = &__src;
    v1332 = 0x4812000000;
    p_src = __Block_byref_object_copy__35151;
    v1334 = __Block_byref_object_dispose__35152;
    v1335 = "";
    v1337[1] = 0;
    v1337[0] = 0;
    v1336 = v1337;
    v1250[0] = 0;
    v1250[1] = 0;
    v1249[1] = v1250;
    v972 = [*(*v913 + 160) overlay];
    v973 = [v972 composedRoute];
    *&v1324 = MEMORY[0x1E69E9820];
    *(&v1324 + 1) = 3221225472;
    v1325 = ___ZN2md16RouteRenderLayer34layoutDebugRouteLineSnappingStatusERKNSt3__110shared_ptrINS_16RouteLineOverlayEEERKNS_13LayoutContextEPN3ggl13CommandBufferE_block_invoke;
    v1326 = &unk_1E7B3B538;
    v1327 = &__src;
    v1328 = v913;
    v1329 = v971;
    v1330 = __pc;
    [v973 forEachSnappedPath:&v1324];

    memset(v1321, 0, sizeof(v1321));
    v1322 = 0u;
    v1323 = 0u;
    v974 = [*(*v1238 + 160) overlay];
    v975 = [v974 composedRoute];
    objd = objc_msgSend_sections(v975);

    v976 = [objd countByEnumeratingWithState:v1321 objects:v1277 count:16];
    v977 = v976;
    if (v976)
    {
      v978 = 0;
      v1201 = *v1321[2];
      v1205 = 0;
      v1228 = v971 + 808;
      do
      {
        v979 = 0;
        v1198 = v977;
        do
        {
          if (*v1321[2] != v1201)
          {
            objc_enumerationMutation(objd);
          }

          v1249[0] = v1321[1][v979];
          if ([v1249[0] pointCount])
          {
            v980 = *(__src.i64[1] + 56);
            v1212 = v979;
            if (!v980)
            {
              goto LABEL_1188;
            }

            v981 = __src.i64[1] + 56;
            do
            {
              v982 = *(v980 + 32);
              _CF = v982 >= v1249[0];
              v983 = v982 < v1249[0];
              if (_CF)
              {
                v981 = v980;
              }

              v980 = *(v980 + 8 * v983);
            }

            while (v980);
            if (v981 == __src.i64[1] + 56 || v1249[0] < *(v981 + 32))
            {
LABEL_1188:
              [v1249[0] pointCount];
              v984 = (v1205 - v978) >> 2;
              if (v984 <= 1)
              {
                v984 = 1;
              }

              if (v1205 - v978 >= 0x7FFFFFFFFFFFFFF8)
              {
                v985 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v985 = v984;
              }

              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v985);
            }

            buf[0].i64[0] = v1249;
            v986 = std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::less<GEOComposedRouteSection * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>>>::__emplace_unique_key_args<GEOComposedRouteSection * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRouteSection * const {__strong}&>,std::tuple<>>((__src.i64[1] + 48), v1249[0], buf)[5];
            buf[0].i64[0] = v1249;
            __na = v978;
            v987 = std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::less<GEOComposedRouteSection * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>>>::__emplace_unique_key_args<GEOComposedRouteSection * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRouteSection * const {__strong}&>,std::tuple<>>((__src.i64[1] + 48), v1249[0], buf)[6];
            v988 = 126 - 2 * __clz(&v987[-v986] >> 3);
            if (v987 == v986)
            {
              v989 = 0;
            }

            else
            {
              v989 = v988;
            }

            std::__introsort<std::_ClassicAlgPolicy,md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_3 &,std::pair<int,int> *,false>(v986, v987, v989, 1);
            buf[0].i64[0] = v1249;
            v990 = std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::less<GEOComposedRouteSection * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>>>::__emplace_unique_key_args<GEOComposedRouteSection * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRouteSection * const {__strong}&>,std::tuple<>>((__src.i64[1] + 48), v1249[0], buf);
            v992 = v990[5];
            v991 = v990[6];
            if (v992 == v991)
            {
              LODWORD(v997) = 0;
              v994 = __na;
              v995 = v1205;
            }

            else
            {
              v993 = 0;
              v994 = v978;
              v995 = v1205;
              v1187 = v990[6];
              do
              {
                v996 = *v992;
                if (*v992 >= v993)
                {
                  v997 = v992[1];
                  if (v996 > v993)
                  {
                    v998 = v996 - 1;
                    if (__na >= v995)
                    {
                      v999 = v995;
                      v1000 = __na - v994;
                      v1001 = (__na - v994) >> 3;
                      v1002 = v1001 + 1;
                      if ((v1001 + 1) >> 61)
                      {
                        goto LABEL_1377;
                      }

                      v1206 = v994;
                      v1003 = v999 - v994;
                      v1004 = (v999 - v994) >> 2;
                      if (v1004 > v1002)
                      {
                        v1002 = v1004;
                      }

                      if (v1003 >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v1005 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v1005 = v1002;
                      }

                      if (v1005)
                      {
                        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v1005);
                      }

                      v994 = 0;
                      v1006 = (8 * v1001);
                      v995 = 0;
                      *v1006 = v993;
                      v1006[1] = v998;
                      __na = v1006 + 2;
                      memcpy(0, v1206, v1000);
                      v991 = v1187;
                    }

                    else
                    {
                      *__na = v993;
                      __na[1] = v998;
                      __na += 2;
                    }
                  }
                }

                else
                {
                  v997 = v993;
                }

                v992 += 2;
                v993 = v997;
              }

              while (v992 != v991);
            }

            v1205 = v995;
            v1007 = __na;
            v977 = v1198;
            v979 = v1212;
            if (v997 >= [v1249[0] pointCount])
            {
LABEL_1219:
              v978 = v994;
            }

            else
            {
              v1008 = [v1249[0] pointCount];
              v1009 = v1008;
              if (__na < v1205)
              {
                *__na = v997;
                __na[1] = v1008;
                v1007 = (__na + 2);
                goto LABEL_1219;
              }

              __nb = __na - v994;
              v1010 = (v1007 - v994) >> 3;
              v1011 = v1010 + 1;
              if ((v1010 + 1) >> 61)
              {
LABEL_1377:
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              if ((v1205 - v994) >> 2 > v1011)
              {
                v1011 = (v1205 - v994) >> 2;
              }

              if (v1205 - v994 >= 0x7FFFFFFFFFFFFFF8)
              {
                v1012 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v1012 = v1011;
              }

              if (v1012)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v1012);
              }

              v1013 = (8 * v1010);
              v1205 = 0;
              *v1013 = v997;
              v1013[1] = v1009;
              v1007 = 8 * v1010 + 8;
              memcpy(0, v994, __nb);
              v978 = 0;
            }

            if (v978 != v1007)
            {
              __nc = v978;
              v1014 = v978;
              do
              {
                v1016 = *v1014;
                v1015 = v1014[1];
                v1017 = v1015 - v1016;
                if ((v1015 - v1016) >= 2)
                {
                  v1018 = ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>::pop(*(*v1238 + 384));
                  ggl::BufferData::resize(**(v1018 + 8), 0);
                  [v1249[0] vkBounds];
                  v1019 = 0;
                  v1317 = 0;
                  buf[4].i64[1] = 0;
                  *(&buf[3] + 8) = 0u;
                  *(&buf[2] + 8) = 0u;
                  *(&buf[1] + 8) = 0u;
                  *(buf + 8) = 0u;
                  *buf[0].i64 = v1021 - v1020;
                  *&buf[2].i64[1] = v1023 - v1022;
                  *&v1316 = v1021 - v1020;
                  v1318 = v1020;
                  v1319 = v1022;
                  v1320 = xmmword_1B33B0740;
                  v1024 = v1228;
                  do
                  {
                    v1025 = 0;
                    v1026 = buf;
                    do
                    {
                      v1027 = 0;
                      v1028 = 0.0;
                      v1029 = v1024;
                      do
                      {
                        v1030 = *v1029;
                        v1029 += 4;
                        v1028 = v1028 + *&v1026->i64[v1027++] * v1030;
                      }

                      while (v1027 != 4);
                      *&v1310.i64[4 * v1025++ + v1019] = v1028;
                      v1026 += 2;
                    }

                    while (v1025 != 4);
                    ++v1019;
                    ++v1024;
                  }

                  while (v1019 != 4);
                  v1031 = [v1249[0] points];
                  ggl::BufferData::resize(**(v1018 + 8), v1017);
                  ggl::DataAccess<ggl::CommonMesh::BufferPos4>::DataAccess(&v1307, **(v1018 + 8), 0, v1017);
                  v1032 = (v1031 + 12 * v1016);
                  v1033 = v1017;
                  v1034 = (v1309 + 8);
                  do
                  {
                    v1035 = *v1032;
                    v1032 = (v1032 + 12);
                    *(v1034 - 1) = v1035;
                    *v1034 = 0x3F80000000000000;
                    v1034 += 2;
                    --v1033;
                  }

                  while (v1033);
                  v1036 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(*v1238 + 368));
                  v1037 = v1036;
                  v1038 = 0;
                  v1039 = &v1310;
                  do
                  {
                    v1041 = *v1039;
                    v1040 = v1039[1];
                    v1039 += 2;
                    *(&v1303 + v1038) = vcvt_hight_f32_f64(vcvt_f32_f64(v1041), v1040);
                    v1038 += 16;
                  }

                  while (v1038 != 64);
                  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v1301, *(*(v1036 + 136) + 16));
                  v1042 = v1302;
                  *v1302 = v1303;
                  v1042[1] = v1304;
                  v1042[2] = v1305;
                  v1042[3] = v1306;
                  ggl::BufferMemory::~BufferMemory(v1301);
                  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v1303, **(v1037 + 136));
                  **(&v1305 + 1) = mm;
                  ggl::BufferMemory::~BufferMemory(&v1303);
                  v1043 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*v1238 + 376));
                  v1043[8] = v1018;
                  v1043[4] = v1037;
                  v1043[3] = *(*v1238 + 360);
                  *&v1303 = v1043;
                  std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((__pc + 72), &v1303);
                  ggl::BufferMemory::~BufferMemory(&v1307);
                }

                v1014 += 2;
              }

              while (v1014 != v1007);
              v978 = __nc;
              v977 = v1198;
              v979 = v1212;
            }
          }

          ++v979;
        }

        while (v979 != v977);
        v977 = [objd countByEnumeratingWithState:v1321 objects:v1277 count:16];
      }

      while (v977);
    }

    std::__tree<VKPolylineGroupOverlay * {__strong}>::destroy(v1250[0], v1044);
    _Block_object_dispose(&__src, 8);
    std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::less<GEOComposedRouteSection * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>>>::destroy(v1337[0]);
    v913 = v1238;
  }

  if ([v1182 routeDebugPoints])
  {
    v1045 = [*md::LayoutContext::get<md::SharedResourcesContext>(*(a2 + 8)) shaderLibrary];
    v1046 = *(*v913 + 400);
    if (!v1046)
    {
      v1052 = *(v1045 + 80);
      v1053 = *(v1052 + 424);
      v1310.i64[0] = *(v1052 + 416);
      v1310.i64[1] = v1053;
      if (v1053)
      {
        atomic_fetch_add_explicit((v1053 + 8), 1uLL, memory_order_relaxed);
      }

      memset(&v1277[24], 0, 20);
      v1277[0] = 1;
      *&v1277[4] = xmmword_1B33B0790;
      *&v1277[20] = 7;
      v1277[44] = 15;
      [*(*(a1 + 40) + 104) format];
      operator new();
    }

    v1047 = *(v1046 + 4);
    v1048 = *(v1046 + 5);
    if (v1047 != v1048)
    {
      do
      {
        *v1277 = *v1047;
        std::vector<ggl::Debug::ExtendedPipelineSetup *,geo::allocator_adapter<ggl::Debug::ExtendedPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v1046, v1277);
        ++v1047;
      }

      while (v1047 != v1048);
      v1047 = *(v1046 + 4);
      v1048 = *(v1046 + 5);
    }

    if (v1047 != v1048)
    {
      *(v1046 + 5) = v1047;
    }

    ggl::FragmentedPool<ggl::RenderItem>::pushAll(*(*v913 + 408));
    v1049 = *(*v913 + 416);
    v1050 = *(v1049 + 4);
    v1051 = *(v1049 + 5);
    if (v1050 != v1051)
    {
      do
      {
        *v1277 = *v1050;
        std::vector<ggl::Debug::ExtendedMesh *,geo::allocator_adapter<ggl::Debug::ExtendedMesh *,ggl::zone_mallocator>>::push_back[abi:nn200100](v1049, v1277);
        ++v1050;
      }

      while (v1050 != v1051);
      v1050 = *(v1049 + 4);
      v1051 = *(v1049 + 5);
    }

    if (v1050 != v1051)
    {
      *(v1049 + 5) = v1050;
    }

    v1207 = md::LayoutContext::get<md::CameraContext>(*(a2 + 8));
    v1054 = *(*v913 + 160);
    if (v1054)
    {
      objc_msgSend_sections(v1054);
    }

    else
    {
      v1339 = 0;
      v1338 = 0;
      v1340 = 0;
    }

    v1345 = 0;
    v1346 = 0;
    v1347 = 0;
    v1342 = 0;
    v1341 = 0;
    v1343 = 0;
    v1055 = +[VKDebugSettings sharedSettings];
    v1056 = [v1055 routeDebugPoints];

    v1057 = v1338;
    v1058 = v1238;
    if (v1339 == v1338)
    {
      goto LABEL_1364;
    }

    v1059 = 0;
    do
    {
      v1213 = v1059;
      v1060 = *(v1057 + 8 * v1059);
      if (v1060)
      {
        v1061 = v1060 + 8;
      }

      else
      {
        v1061 = 0;
      }

      v1062 = *v1058;
      WeakRetained = objc_loadWeakRetained((v1061 + 200));
      v1064 = *&v1062 + 440;
      v1065 = *(*&v1062 + 440);
      if (!v1065)
      {
        goto LABEL_1279;
      }

      v1066 = *&v1062 + 440;
      do
      {
        v1067 = *(v1065 + 32);
        _CF = v1067 >= WeakRetained;
        v1068 = v1067 < WeakRetained;
        if (_CF)
        {
          v1066 = v1065;
        }

        v1065 = *(v1065 + 8 * v1068);
      }

      while (v1065);
      if (v1066 == v1064 || WeakRetained < *(v1066 + 32))
      {
LABEL_1279:
        v1066 = v1064;
      }

      if (v1066 != *v1238 + 440)
      {
        v1069 = 0;
        if ((v1213 & 1) != 0 && v1056 == 1)
        {
          v1071 = 0.0;
        }

        else
        {
          v1071 = 1.0;
        }

        v1072 = *(v1066 + 40);
        v1073 = mm;
        *v1073.i32 = v1071;
        v1074 = vzip1q_s32(v1073, v1073);
        *&v1074.i32[2] = v1071;
        *v1229 = v1074;
        while ((*(*v1072 + 32))(v1072) > v1069)
        {
          v1075 = (*(*v1072 + 16))(v1072, v1069);
          v1076 = (*(*v1072 + 24))(v1072, v1069);
          v1077 = v1076;
          buf[0].i64[0] = *v1075;
          buf[0].i32[2] = *(v1075 + 8);
          v1078 = v1345;
          v1079 = v1346;
          if (v1056 == 1 && (v1080 = v1346 - v1345, v1346 != v1345) && ((+[VKDebugSettings sharedSettings](), v1081 = objc_claimAutoreleasedReturnValue(), v1082 = [v1081 continuousMultiSectionRouteAdditionalOverlap], v1081, LODWORD(v1083) = v1082 + 2, v1084 = (v1080 >> 5) - 1, v1084 >= v1082 + 2) ? (v1083 = v1083) : (v1083 = v1084), v1083))
          {
            v1085 = 0;
            v1086 = v1341;
            v1087 = v1079 - 28;
            while (1)
            {
              v1088 = (v1080 >> 5) + ~v1085;
              v1089 = &v1078[32 * v1088];
              if (vabds_f32(buf[0].f32[0], *v1089) < 0.000001)
              {
                v1090 = 0;
                do
                {
                  if (v1090 == 2)
                  {
                    goto LABEL_1314;
                  }

                  v1091 = v1090++;
                }

                while (vabds_f32(buf[0].f32[v1091 + 1], *&v1087[4 * v1091]) < 0.000001);
                if (v1091 >= 2)
                {
                  break;
                }
              }

              ++v1085;
              v1087 -= 32;
              if (v1085 == v1083)
              {
                goto LABEL_1302;
              }
            }

LABEL_1314:
            *&v1079[-32 * v1085 - 16] = xmmword_1B33AFEE0;
            if (v1086[v1088] != v1077)
            {
              *(v1089 + 5) = 1065353216;
            }
          }

          else
          {
LABEL_1302:
            if (v1079 >= v1347)
            {
              v1093 = (v1079 - v1078) >> 5;
              v1094 = v1093 + 1;
              if ((v1093 + 1) >> 59)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v1095 = v1347 - v1078;
              if ((v1347 - v1078) >> 4 > v1094)
              {
                v1094 = v1095 >> 4;
              }

              if (v1095 >= 0x7FFFFFFFFFFFFFE0)
              {
                v1096 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v1096 = v1094;
              }

              if (v1096)
              {
                v1097 = mdm::zone_mallocator::instance(v1076);
                v1098 = pthread_rwlock_rdlock((v1097 + 32));
                if (v1098)
                {
                  geo::read_write_lock::logFailure(v1098, "read lock", v1099);
                }

                v1100 = malloc_type_zone_malloc(*v1097, 32 * v1096, 0x100004017768742uLL);
                atomic_fetch_add((v1097 + 24), 1u);
                geo::read_write_lock::unlock((v1097 + 32));
                v1078 = v1345;
                v1079 = v1346;
                v1101 = (v1346 - v1345) >> 5;
              }

              else
              {
                v1100 = 0;
                v1101 = (v1079 - v1078) >> 5;
              }

              v1102 = &v1100[32 * v1093];
              *v1102 = 0u;
              *(v1102 + 1) = 0u;
              v1103 = &v1102[-32 * v1101];
              if (v1078 != v1079)
              {
                v1104 = v1103;
                do
                {
                  v1105 = *v1078;
                  *(v1104 + 8) = *(v1078 + 2);
                  *v1104 = v1105;
                  *(v1104 + 16) = *(v1078 + 1);
                  v1078 += 32;
                  v1104 += 32;
                }

                while (v1078 != v1079);
                v1078 = v1345;
              }

              v1092 = (v1102 + 32);
              v1345 = v1103;
              v1346 = (v1102 + 32);
              v1347 = &v1100[32 * v1096];
              if (v1078)
              {
                v1106 = mdm::zone_mallocator::instance(v1076);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::ExtendedVbo>(v1106, v1078);
              }
            }

            else
            {
              *v1079 = 0u;
              *(v1079 + 1) = 0u;
              v1092 = (v1079 + 32);
            }

            v1346 = v1092;
            v1107 = buf[0].i64[0];
            LODWORD(v1092[-1].__vftable) = buf[0].i32[2];
            v1092[-2].__shared_weak_owners_ = v1107;
            *&v1092[-1].__shared_owners_ = *v1229;
            v1108 = v1342;
            if (v1342 >= v1343)
            {
              v1110 = v1342 - v1341;
              v1111 = v1342 - v1341 + 1;
              if (v1111 < 0)
              {
                goto LABEL_1376;
              }

              v1112 = v1343 - v1341;
              if (2 * (v1343 - v1341) > v1111)
              {
                v1111 = 2 * v1112;
              }

              if (v1112 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v1113 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v1113 = v1111;
              }

              *&v1277[32] = &v1344;
              if (v1113)
              {
                v1114 = mdm::zone_mallocator::instance(v1076);
                v1115 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v1114, v1113);
              }

              else
              {
                v1115 = 0;
              }

              v1116 = &v1115[v1110];
              *v1116 = v1077;
              v1109 = &v1115[v1110 + 1];
              v1117 = &v1115[v1113];
              v1118 = &v1116[v1341 - v1342];
              memcpy(v1118, v1341, v1342 - v1341);
              v1119 = v1341;
              v1120 = v1343;
              v1341 = v1118;
              v1342 = v1109;
              v1343 = v1117;
              *&v1277[16] = v1119;
              *&v1277[24] = v1120;
              *&v1277[8] = v1119;
              *v1277 = v1119;
              std::__split_buffer<unsigned char,geo::allocator_adapter<unsigned char,mdm::zone_mallocator> &>::~__split_buffer(v1277);
            }

            else
            {
              *v1342 = v1077;
              v1109 = (v1108 + 1);
            }

            v1342 = v1109;
          }

          ++v1069;
        }
      }

      v1059 = v1213 + 1;
      v1057 = v1338;
      v1058 = v1238;
    }

    while (v1213 + 1 < ((v1339 - v1338) >> 3));
    v1121 = v1345;
    if (v1346 == v1345)
    {
      goto LABEL_1364;
    }

    v1122 = *(*v1238 + 416);
    v1123 = v1122[1];
    if (v1123 == *v1122)
    {
      v1125 = v1122[11];
      if (!v1125)
      {
        goto LABEL_1387;
      }

      v1124 = (*(*v1125 + 48))(v1125);
      buf[0].i64[0] = v1124;
    }

    else
    {
      v1124 = *(v1123 - 8);
      buf[0].i64[0] = v1124;
      v1122[1] = v1123 - 8;
    }

    std::vector<ggl::Debug::ExtendedMesh *,geo::allocator_adapter<ggl::Debug::ExtendedMesh *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v1122 + 4), buf);
    *v1277 = v1124;
    v1126 = v1122[15];
    if (v1126)
    {
      (*(*v1126 + 48))(v1126, v1277);
      v1127 = v1346;
      v1128 = (v1346 - v1121) >> 5;
      ggl::BufferData::resize(**(v1124 + 64), v1128);
      ggl::DataAccess<ggl::CommonMesh::BufferPos4>::DataAccess(&v1310, **(v1124 + 64), 0, (v1127 - v1121) >> 5);
      if (v1127 != v1121)
      {
        v1129 = 0;
        v1130 = *&v1311[24];
        if (v1128 <= 1)
        {
          v1131 = 1;
        }

        else
        {
          v1131 = (v1127 - v1121) >> 5;
        }

        do
        {
          for (i6 = 0; i6 != 12; i6 += 4)
          {
            *(v1130 + i6) = *(v1121 + i6);
          }

          for (i7 = 16; i7 != 32; i7 += 4)
          {
            *(v1130 + i7) = *(v1121 + i7);
          }

          ++v1129;
          v1130 += 32;
          v1121 += 32;
        }

        while (v1129 != v1131);
      }

      v1134 = 0;
      v1135 = (v1207 + 808);
      v1136 = *v1238;
      v1137 = *v1238 + 8;
      do
      {
        v1138 = 0;
        v1139 = v1137;
        do
        {
          v1140 = 0;
          v1141 = 0.0;
          v1142 = v1135;
          do
          {
            v1143 = *v1142;
            v1142 += 4;
            v1141 = v1141 + *(v1139 + v1140) * v1143;
            v1140 += 8;
          }

          while (v1140 != 32);
          *&v1277[32 * v1138++ + 8 * v1134] = v1141;
          v1139 += 32;
        }

        while (v1138 != 4);
        ++v1134;
        ++v1135;
      }

      while (v1134 != 4);
      v1144 = ggl::FragmentedPool<ggl::Debug::ExtendedPipelineSetup>::pop(*(*&v1136 + 400));
      v1145 = v1144;
      v1146 = 0;
      v1147 = v1277;
      do
      {
        v1149 = *v1147;
        v1148 = v1147[1];
        v1147 += 2;
        buf[v1146++] = vcvt_hight_f32_f64(vcvt_f32_f64(v1149), v1148);
      }

      while (v1146 != 4);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__src, *(*(v1144 + 17) + 16));
      v1150 = v1335;
      *v1335 = buf[0];
      v1150[1] = buf[1];
      v1150[2] = buf[2];
      v1150[3] = buf[3];
      ggl::BufferMemory::~BufferMemory(&__src);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, **(v1145 + 17));
      *buf[2].i64[1] = mm;
      ggl::BufferMemory::~BufferMemory(buf);
      v1151 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*v1238 + 408));
      v1151[8] = v1124;
      v1151[4] = v1145;
      v1151[3] = *(*v1238 + 392);
      v1151[6] = -1;
      buf[0].i64[0] = v1151;
      std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((__pc + 72), buf);
      v1152 = ggl::FragmentedPool<ggl::Debug::ExtendedPipelineSetup>::pop(*(*v1238 + 400));
      v1153 = v1152;
      v1154 = 0;
      v1155 = v1277;
      do
      {
        v1157 = *v1155;
        v1156 = v1155[1];
        v1155 += 2;
        buf[v1154++] = vcvt_hight_f32_f64(vcvt_f32_f64(v1157), v1156);
      }

      while (v1154 != 4);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__src, *(*(v1152 + 17) + 16));
      v1158 = v1335;
      *v1335 = buf[0];
      v1158[1] = buf[1];
      v1158[2] = buf[2];
      v1158[3] = buf[3];
      ggl::BufferMemory::~BufferMemory(&__src);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, **(v1153 + 17));
      *buf[2].i64[1] = xmmword_1B33B0C60;
      ggl::BufferMemory::~BufferMemory(buf);
      v1159 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*v1238 + 408));
      v1159[8] = v1124;
      v1159[4] = v1153;
      v1159[3] = *(*v1238 + 424);
      v1159[6] = -1;
      buf[0].i64[0] = v1159;
      std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((__pc + 72), buf);
      ggl::BufferMemory::~BufferMemory(&v1310);
LABEL_1364:
      std::vector<unsigned char,geo::allocator_adapter<unsigned char,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v1341);
      std::vector<ggl::Debug::ExtendedVbo,geo::allocator_adapter<ggl::Debug::ExtendedVbo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v1345);
      *v1277 = &v1338;
      std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](v1277);
      goto LABEL_1365;
    }

LABEL_1387:
    std::__throw_bad_function_call[abi:nn200100]();
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_1365:

  if (v1266)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1266);
  }

  if (v1243)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1243);
  }
}
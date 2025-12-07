unint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::maxAlpha(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 624))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 624))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fmaxf(v8, v5);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::minAlpha(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 624))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 624))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fminf(v5, v8);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

uint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::maxHideOnCollapse(uint64_t a1, __n128 a2)
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

void *gms::PBRWithColorRampMaterial<ggl::Texture2D>::gradientMaskFactor@<X0>(uint64_t a1@<X0>, float32x4_t *a2@<X8>, __n128 a3@<Q0>)
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

uint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::maxCastShadow(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 384))(v4, a2);
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
    LOWORD(v7) = (*(*v7 + 384))(v7, v2);
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

uint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::minCastShadow(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 384))(v4, a2);
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
    LOWORD(v7) = (*(*v7 + 384))(v7, v2);
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

unint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::maxZIndex(uint64_t a1, __n128 a2)
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
  if ((v6 | v8) <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v6 | v8;
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

void *gms::PBRWithColorRampMaterial<ggl::Texture2D>::emissiveFactor@<X0>(uint64_t a1@<X0>, float32x4_t *a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if (v6 <= 0.00000011921 && (v7 = *(a1 + 16)) != 0 || v6 >= 1.0 && (v7 = *(a1 + 32)) != 0)
  {
    v8 = *(*v7 + 168);

    return v8(a3);
  }

  else
  {
    v13 = v6;
    v10 = *(a1 + 16);
    if (v10)
    {
      (*(*v10 + 168))(&v16, a3.n128_f32[0]);
    }

    else
    {
      v16.i8[0] = 0;
      v17 = 0;
    }

    result = *(a1 + 32);
    if (result)
    {
      result = (*(*result + 168))(&v14, v3);
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

unint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::maxMetallicFactor(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 144))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 144))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fmaxf(v8, v5);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::minMetallicFactor(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 144))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 144))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fminf(v5, v8);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::metallicFactor(uint64_t a1, float a2)
{
  v4 = **(a1 + 48);
  if (v4 <= 0.00000011921 && (v5 = *(a1 + 16)) != 0 || v4 >= 1.0 && (v5 = *(a1 + 32)) != 0)
  {
    v6 = (*(*v5 + 144))(v5, a2);
    v7 = HIDWORD(v6);
  }

  else
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = (*(*v8 + 144))(v8, a2);
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
      v14 = (*(*v13 + 144))(v13, a2);
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

unint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::maxRoughnessFactor(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 120))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 120))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fmaxf(v8, v5);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::minRoughnessFactor(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 120))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 120))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fminf(v5, v8);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::roughnessFactor(uint64_t a1, float a2)
{
  v4 = **(a1 + 48);
  if (v4 <= 0.00000011921 && (v5 = *(a1 + 16)) != 0 || v4 >= 1.0 && (v5 = *(a1 + 32)) != 0)
  {
    v6 = (*(*v5 + 120))(v5, a2);
    v7 = HIDWORD(v6);
  }

  else
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = (*(*v8 + 120))(v8, a2);
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
      v14 = (*(*v13 + 120))(v13, a2);
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

uint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::roughnessMetallic(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LOWORD(v1) = (*(*v1 + 72))(v1);
    v2 = BYTE1(v1);
  }

  else
  {
    v2 = 0;
  }

  return v1 | (v2 << 8);
}

uint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::normal(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LOWORD(v1) = (*(*v1 + 48))(v1);
    v2 = BYTE1(v1);
  }

  else
  {
    v2 = 0;
  }

  return v1 | (v2 << 8);
}

uint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::albedo(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LOWORD(v1) = (*(*v1 + 24))(v1);
    v2 = BYTE1(v1);
  }

  else
  {
    v2 = 0;
  }

  return v1 | (v2 << 8);
}

void gms::PBRWithColorRampMaterial<ggl::Texture2D>::~PBRWithColorRampMaterial(void *a1)
{
  gms::Material<ggl::Texture2D>::~Material(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<gms::PBRWithColorRampMaterial<ggl::Texture2D>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4A2F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void gms::TriPlanarMaterial<ggl::Texture2D>::gradientMaskFactorRGB(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if ((v6 > 0.00000011921 || (v7 = *(a1 + 16)) == 0) && (v6 < 1.0 || (v7 = *(a1 + 32)) == 0))
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      (*(*v9 + 696))(&v18, a3.n128_f32[0]);
    }

    else
    {
      LOBYTE(v18) = 0;
      v20 = 0;
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(*v10 + 696))(&v15, v3);
    }

    else
    {
      LOBYTE(v15) = 0;
      v17 = 0;
    }

    if (v20 == 1)
    {
      if (v17 == 1)
      {
        *a2 = gm::lerp<gm::Matrix<float,3,1>,float>(*&v18, *(&v18 + 1), v19, *&v15, *(&v15 + 1), v16, v6);
        *(a2 + 4) = v11;
        *(a2 + 8) = v12;
        v13 = (a2 + 12);
LABEL_21:
        *v13 = 1;
        return;
      }

      v13 = (a2 + 12);
      *a2 = v18;
      v14 = v19;
    }

    else
    {
      *a2 = 0;
      *(a2 + 12) = 0;
      v13 = (a2 + 12);
      if (v17 != 1)
      {
        return;
      }

      *a2 = v15;
      v14 = v16;
    }

    *(a2 + 8) = v14;
    goto LABEL_21;
  }

  v8 = *(*v7 + 696);

  v8(a3);
}

void gms::TriPlanarMaterial<ggl::Texture2D>::albedoFactorRGB(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if ((v6 > 0.00000011921 || (v7 = *(a1 + 16)) == 0) && (v6 < 1.0 || (v7 = *(a1 + 32)) == 0))
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      (*(*v9 + 648))(&v18, a3.n128_f32[0]);
    }

    else
    {
      LOBYTE(v18) = 0;
      v20 = 0;
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(*v10 + 648))(&v15, v3);
    }

    else
    {
      LOBYTE(v15) = 0;
      v17 = 0;
    }

    if (v20 == 1)
    {
      if (v17 == 1)
      {
        *a2 = gm::lerp<gm::Matrix<float,3,1>,float>(*&v18, *(&v18 + 1), v19, *&v15, *(&v15 + 1), v16, v6);
        *(a2 + 4) = v11;
        *(a2 + 8) = v12;
        v13 = (a2 + 12);
LABEL_21:
        *v13 = 1;
        return;
      }

      v13 = (a2 + 12);
      *a2 = v18;
      v14 = v19;
    }

    else
    {
      *a2 = 0;
      *(a2 + 12) = 0;
      v13 = (a2 + 12);
      if (v17 != 1)
      {
        return;
      }

      *a2 = v15;
      v14 = v16;
    }

    *(a2 + 8) = v14;
    goto LABEL_21;
  }

  v8 = *(*v7 + 648);

  v8(a3);
}

uint64_t gms::TriPlanarMaterial<ggl::Texture2D>::maxHideOnCollapse(uint64_t a1, __n128 a2)
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

uint64_t gms::TriPlanarMaterial<ggl::Texture2D>::minHideOnCollapse(uint64_t a1, __n128 a2)
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

void *gms::TriPlanarMaterial<ggl::Texture2D>::gradientMaskFactor@<X0>(uint64_t a1@<X0>, float32x4_t *a2@<X8>, __n128 a3@<Q0>)
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

uint64_t gms::TriPlanarMaterial<ggl::Texture2D>::maxCastShadow(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 384))(v4, a2);
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
    LOWORD(v7) = (*(*v7 + 384))(v7, v2);
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

uint64_t gms::TriPlanarMaterial<ggl::Texture2D>::minCastShadow(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 384))(v4, a2);
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
    LOWORD(v7) = (*(*v7 + 384))(v7, v2);
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

unint64_t gms::TriPlanarMaterial<ggl::Texture2D>::offset(uint64_t a1, float a2)
{
  v5 = **(a1 + 48);
  if (v5 <= 0.00000011921 && (v6 = *(a1 + 16)) != 0 || (v7 = &xmmword_1B33B2000, v5 >= 1.0) && (v6 = *(a1 + 32)) != 0)
  {
    v8 = (*(*v6 + 312))(v6, a2);
    v7 = HIDWORD(v8);
  }

  else
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (*(*v9 + 312))(v9, a2);
      v12 = v11;
      v13 = v10 & 0xFFFFFF00;
      v2 = HIDWORD(v10);
      v14 = v10;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v12 = 0;
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = (*(*v15 + 312))(v15, a2);
      v18 = v16 & 0xFFFFFF00;
      v7 = HIDWORD(v16);
      v19 = v16;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v17 = 0;
    }

    v20 = v19 | v18;
    v21 = v14 | v13;
    v22 = *&v2 + ((*&v7 - *&v2) * v5);
    if (v17)
    {
      *&v21 = COERCE_FLOAT(v14 | v13) + ((*&v20 - COERCE_FLOAT(v14 | v13)) * v5);
    }

    else
    {
      v22 = *&v2;
    }

    if (v12)
    {
      v7 = LODWORD(v22);
    }

    else
    {
      v7 = v7;
    }

    if (v12)
    {
      LODWORD(v8) = v21;
    }

    else
    {
      LODWORD(v8) = v20;
    }
  }

  return v8 | (v7 << 32);
}

unint64_t gms::TriPlanarMaterial<ggl::Texture2D>::tiling(uint64_t a1, float a2)
{
  v5 = **(a1 + 48);
  if (v5 <= 0.00000011921 && (v6 = *(a1 + 16)) != 0 || (v7 = &xmmword_1B33B2000, v5 >= 1.0) && (v6 = *(a1 + 32)) != 0)
  {
    v8 = (*(*v6 + 288))(v6, a2);
    v7 = HIDWORD(v8);
  }

  else
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (*(*v9 + 288))(v9, a2);
      v12 = v11;
      v13 = v10 & 0xFFFFFF00;
      v2 = HIDWORD(v10);
      v14 = v10;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v12 = 0;
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = (*(*v15 + 288))(v15, a2);
      v18 = v16 & 0xFFFFFF00;
      v7 = HIDWORD(v16);
      v19 = v16;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v17 = 0;
    }

    v20 = v19 | v18;
    v21 = v14 | v13;
    v22 = *&v2 + ((*&v7 - *&v2) * v5);
    if (v17)
    {
      *&v21 = COERCE_FLOAT(v14 | v13) + ((*&v20 - COERCE_FLOAT(v14 | v13)) * v5);
    }

    else
    {
      v22 = *&v2;
    }

    if (v12)
    {
      v7 = LODWORD(v22);
    }

    else
    {
      v7 = v7;
    }

    if (v12)
    {
      LODWORD(v8) = v21;
    }

    else
    {
      LODWORD(v8) = v20;
    }
  }

  return v8 | (v7 << 32);
}

uint64_t gms::TriPlanarMaterial<ggl::Texture2D>::maxVisibility(uint64_t a1, __n128 a2)
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

uint64_t gms::TriPlanarMaterial<ggl::Texture2D>::minVisibility(uint64_t a1, __n128 a2)
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

unint64_t gms::TriPlanarMaterial<ggl::Texture2D>::maxZIndex(uint64_t a1, __n128 a2)
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
  if ((v6 | v8) <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v6 | v8;
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

unint64_t gms::TriPlanarMaterial<ggl::Texture2D>::minZIndex(uint64_t a1, __n128 a2)
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

void *gms::TriPlanarMaterial<ggl::Texture2D>::albedoFactor@<X0>(uint64_t a1@<X0>, float32x4_t *a2@<X8>, __n128 a3@<Q0>)
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

uint64_t gms::TriPlanarMaterial<ggl::Texture2D>::albedo(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LOWORD(v1) = (*(*v1 + 24))(v1);
    v2 = BYTE1(v1);
  }

  else
  {
    v2 = 0;
  }

  return v1 | (v2 << 8);
}

void gms::TriPlanarMaterial<ggl::Texture2D>::~TriPlanarMaterial(void *a1)
{
  gms::Material<ggl::Texture2D>::~Material(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<gms::TriPlanarMaterial<ggl::Texture2D>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A49DC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void gms::PlanarMaterial<ggl::Texture2D>::gradientMaskFactorRGB(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if ((v6 > 0.00000011921 || (v7 = *(a1 + 16)) == 0) && (v6 < 1.0 || (v7 = *(a1 + 32)) == 0))
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      (*(*v9 + 696))(&v18, a3.n128_f32[0]);
    }

    else
    {
      LOBYTE(v18) = 0;
      v20 = 0;
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(*v10 + 696))(&v15, v3);
    }

    else
    {
      LOBYTE(v15) = 0;
      v17 = 0;
    }

    if (v20 == 1)
    {
      if (v17 == 1)
      {
        *a2 = gm::lerp<gm::Matrix<float,3,1>,float>(*&v18, *(&v18 + 1), v19, *&v15, *(&v15 + 1), v16, v6);
        *(a2 + 4) = v11;
        *(a2 + 8) = v12;
        v13 = (a2 + 12);
LABEL_21:
        *v13 = 1;
        return;
      }

      v13 = (a2 + 12);
      *a2 = v18;
      v14 = v19;
    }

    else
    {
      *a2 = 0;
      *(a2 + 12) = 0;
      v13 = (a2 + 12);
      if (v17 != 1)
      {
        return;
      }

      *a2 = v15;
      v14 = v16;
    }

    *(a2 + 8) = v14;
    goto LABEL_21;
  }

  v8 = *(*v7 + 696);

  v8(a3);
}

void gms::PlanarMaterial<ggl::Texture2D>::albedoFactorRGB(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if ((v6 > 0.00000011921 || (v7 = *(a1 + 16)) == 0) && (v6 < 1.0 || (v7 = *(a1 + 32)) == 0))
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      (*(*v9 + 648))(&v18, a3.n128_f32[0]);
    }

    else
    {
      LOBYTE(v18) = 0;
      v20 = 0;
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(*v10 + 648))(&v15, v3);
    }

    else
    {
      LOBYTE(v15) = 0;
      v17 = 0;
    }

    if (v20 == 1)
    {
      if (v17 == 1)
      {
        *a2 = gm::lerp<gm::Matrix<float,3,1>,float>(*&v18, *(&v18 + 1), v19, *&v15, *(&v15 + 1), v16, v6);
        *(a2 + 4) = v11;
        *(a2 + 8) = v12;
        v13 = (a2 + 12);
LABEL_21:
        *v13 = 1;
        return;
      }

      v13 = (a2 + 12);
      *a2 = v18;
      v14 = v19;
    }

    else
    {
      *a2 = 0;
      *(a2 + 12) = 0;
      v13 = (a2 + 12);
      if (v17 != 1)
      {
        return;
      }

      *a2 = v15;
      v14 = v16;
    }

    *(a2 + 8) = v14;
    goto LABEL_21;
  }

  v8 = *(*v7 + 648);

  v8(a3);
}

unint64_t gms::PlanarMaterial<ggl::Texture2D>::maxAlpha(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 624))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 624))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fmaxf(v8, v5);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::PlanarMaterial<ggl::Texture2D>::minAlpha(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 624))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 624))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fminf(v5, v8);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::PlanarMaterial<ggl::Texture2D>::alpha(uint64_t a1, float a2)
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

uint64_t gms::PlanarMaterial<ggl::Texture2D>::maxHideOnCollapse(uint64_t a1, __n128 a2)
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

uint64_t gms::PlanarMaterial<ggl::Texture2D>::minHideOnCollapse(uint64_t a1, __n128 a2)
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

void *gms::PlanarMaterial<ggl::Texture2D>::gradientMaskFactor@<X0>(uint64_t a1@<X0>, float32x4_t *a2@<X8>, __n128 a3@<Q0>)
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

uint64_t gms::PlanarMaterial<ggl::Texture2D>::maxCastShadow(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 384))(v4, a2);
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
    LOWORD(v7) = (*(*v7 + 384))(v7, v2);
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

uint64_t gms::PlanarMaterial<ggl::Texture2D>::minCastShadow(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 384))(v4, a2);
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
    LOWORD(v7) = (*(*v7 + 384))(v7, v2);
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

unint64_t gms::PlanarMaterial<ggl::Texture2D>::offset(uint64_t a1, float a2)
{
  v5 = **(a1 + 48);
  if (v5 <= 0.00000011921 && (v6 = *(a1 + 16)) != 0 || (v7 = &xmmword_1B33B2000, v5 >= 1.0) && (v6 = *(a1 + 32)) != 0)
  {
    v8 = (*(*v6 + 312))(v6, a2);
    v7 = HIDWORD(v8);
  }

  else
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (*(*v9 + 312))(v9, a2);
      v12 = v11;
      v13 = v10 & 0xFFFFFF00;
      v2 = HIDWORD(v10);
      v14 = v10;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v12 = 0;
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = (*(*v15 + 312))(v15, a2);
      v18 = v16 & 0xFFFFFF00;
      v7 = HIDWORD(v16);
      v19 = v16;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v17 = 0;
    }

    v20 = v19 | v18;
    v21 = v14 | v13;
    v22 = *&v2 + ((*&v7 - *&v2) * v5);
    if (v17)
    {
      *&v21 = COERCE_FLOAT(v14 | v13) + ((*&v20 - COERCE_FLOAT(v14 | v13)) * v5);
    }

    else
    {
      v22 = *&v2;
    }

    if (v12)
    {
      v7 = LODWORD(v22);
    }

    else
    {
      v7 = v7;
    }

    if (v12)
    {
      LODWORD(v8) = v21;
    }

    else
    {
      LODWORD(v8) = v20;
    }
  }

  return v8 | (v7 << 32);
}

unint64_t gms::PlanarMaterial<ggl::Texture2D>::tiling(uint64_t a1, float a2)
{
  v5 = **(a1 + 48);
  if (v5 <= 0.00000011921 && (v6 = *(a1 + 16)) != 0 || (v7 = &xmmword_1B33B2000, v5 >= 1.0) && (v6 = *(a1 + 32)) != 0)
  {
    v8 = (*(*v6 + 288))(v6, a2);
    v7 = HIDWORD(v8);
  }

  else
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (*(*v9 + 288))(v9, a2);
      v12 = v11;
      v13 = v10 & 0xFFFFFF00;
      v2 = HIDWORD(v10);
      v14 = v10;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v12 = 0;
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = (*(*v15 + 288))(v15, a2);
      v18 = v16 & 0xFFFFFF00;
      v7 = HIDWORD(v16);
      v19 = v16;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v17 = 0;
    }

    v20 = v19 | v18;
    v21 = v14 | v13;
    v22 = *&v2 + ((*&v7 - *&v2) * v5);
    if (v17)
    {
      *&v21 = COERCE_FLOAT(v14 | v13) + ((*&v20 - COERCE_FLOAT(v14 | v13)) * v5);
    }

    else
    {
      v22 = *&v2;
    }

    if (v12)
    {
      v7 = LODWORD(v22);
    }

    else
    {
      v7 = v7;
    }

    if (v12)
    {
      LODWORD(v8) = v21;
    }

    else
    {
      LODWORD(v8) = v20;
    }
  }

  return v8 | (v7 << 32);
}

uint64_t gms::PlanarMaterial<ggl::Texture2D>::maxVisibility(uint64_t a1, __n128 a2)
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

uint64_t gms::PlanarMaterial<ggl::Texture2D>::minVisibility(uint64_t a1, __n128 a2)
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

unint64_t gms::PlanarMaterial<ggl::Texture2D>::maxZIndex(uint64_t a1, __n128 a2)
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
  if ((v6 | v8) <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v6 | v8;
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

unint64_t gms::PlanarMaterial<ggl::Texture2D>::minZIndex(uint64_t a1, __n128 a2)
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

void *gms::PlanarMaterial<ggl::Texture2D>::albedoFactor@<X0>(uint64_t a1@<X0>, float32x4_t *a2@<X8>, __n128 a3@<Q0>)
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

uint64_t gms::PlanarMaterial<ggl::Texture2D>::albedo(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LOWORD(v1) = (*(*v1 + 24))(v1);
    v2 = BYTE1(v1);
  }

  else
  {
    v2 = 0;
  }

  return v1 | (v2 << 8);
}

void gms::PlanarMaterial<ggl::Texture2D>::~PlanarMaterial(void *a1)
{
  gms::Material<ggl::Texture2D>::~Material(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<gms::PlanarMaterial<ggl::Texture2D>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A498A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void gms::PBRMaterial<ggl::Texture2D>::gradientMaskFactorRGB(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if ((v6 > 0.00000011921 || (v7 = *(a1 + 16)) == 0) && (v6 < 1.0 || (v7 = *(a1 + 32)) == 0))
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      (*(*v9 + 696))(&v18, a3.n128_f32[0]);
    }

    else
    {
      LOBYTE(v18) = 0;
      v20 = 0;
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(*v10 + 696))(&v15, v3);
    }

    else
    {
      LOBYTE(v15) = 0;
      v17 = 0;
    }

    if (v20 == 1)
    {
      if (v17 == 1)
      {
        *a2 = gm::lerp<gm::Matrix<float,3,1>,float>(*&v18, *(&v18 + 1), v19, *&v15, *(&v15 + 1), v16, v6);
        *(a2 + 4) = v11;
        *(a2 + 8) = v12;
        v13 = (a2 + 12);
LABEL_21:
        *v13 = 1;
        return;
      }

      v13 = (a2 + 12);
      *a2 = v18;
      v14 = v19;
    }

    else
    {
      *a2 = 0;
      *(a2 + 12) = 0;
      v13 = (a2 + 12);
      if (v17 != 1)
      {
        return;
      }

      *a2 = v15;
      v14 = v16;
    }

    *(a2 + 8) = v14;
    goto LABEL_21;
  }

  v8 = *(*v7 + 696);

  v8(a3);
}

void gms::PBRMaterial<ggl::Texture2D>::emissiveFactorRGB(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if ((v6 > 0.00000011921 || (v7 = *(a1 + 16)) == 0) && (v6 < 1.0 || (v7 = *(a1 + 32)) == 0))
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      (*(*v9 + 672))(&v18, a3.n128_f32[0]);
    }

    else
    {
      LOBYTE(v18) = 0;
      v20 = 0;
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(*v10 + 672))(&v15, v3);
    }

    else
    {
      LOBYTE(v15) = 0;
      v17 = 0;
    }

    if (v20 == 1)
    {
      if (v17 == 1)
      {
        *a2 = gm::lerp<gm::Matrix<float,3,1>,float>(*&v18, *(&v18 + 1), v19, *&v15, *(&v15 + 1), v16, v6);
        *(a2 + 4) = v11;
        *(a2 + 8) = v12;
        v13 = (a2 + 12);
LABEL_21:
        *v13 = 1;
        return;
      }

      v13 = (a2 + 12);
      *a2 = v18;
      v14 = v19;
    }

    else
    {
      *a2 = 0;
      *(a2 + 12) = 0;
      v13 = (a2 + 12);
      if (v17 != 1)
      {
        return;
      }

      *a2 = v15;
      v14 = v16;
    }

    *(a2 + 8) = v14;
    goto LABEL_21;
  }

  v8 = *(*v7 + 672);

  v8(a3);
}

unint64_t gms::PBRMaterial<ggl::Texture2D>::maxAlpha(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 624))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 624))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fmaxf(v8, v5);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::PBRMaterial<ggl::Texture2D>::minAlpha(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 624))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 624))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fminf(v5, v8);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

uint64_t gms::PBRMaterial<ggl::Texture2D>::maxHideOnCollapse(uint64_t a1, __n128 a2)
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

void *gms::PBRMaterial<ggl::Texture2D>::gradientMaskFactor@<X0>(uint64_t a1@<X0>, float32x4_t *a2@<X8>, __n128 a3@<Q0>)
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

uint64_t gms::PBRMaterial<ggl::Texture2D>::maxAcceptsOverlays(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 480))(v4, a2);
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
    LOWORD(v7) = (*(*v7 + 480))(v7, v2);
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

uint64_t gms::PBRMaterial<ggl::Texture2D>::minAcceptsOverlays(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 480))(v4, a2);
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
    LOWORD(v7) = (*(*v7 + 480))(v7, v2);
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

unint64_t gms::PBRMaterial<ggl::Texture2D>::maxBrightnessFactor(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 456))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 456))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fmaxf(v8, v5);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::PBRMaterial<ggl::Texture2D>::minBrightnessFactor(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 456))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 456))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fminf(v5, v8);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::PBRMaterial<ggl::Texture2D>::brightnessFactor(uint64_t a1, float a2)
{
  v4 = **(a1 + 48);
  if (v4 <= 0.00000011921 && (v5 = *(a1 + 16)) != 0 || v4 >= 1.0 && (v5 = *(a1 + 32)) != 0)
  {
    v6 = (*(*v5 + 456))(v5, a2);
    v7 = HIDWORD(v6);
  }

  else
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = (*(*v8 + 456))(v8, a2);
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
      v14 = (*(*v13 + 456))(v13, a2);
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

unint64_t gms::PBRMaterial<ggl::Texture2D>::maxSaturationFactor(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 432))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 432))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fmaxf(v8, v5);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::PBRMaterial<ggl::Texture2D>::minSaturationFactor(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 432))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 432))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fminf(v5, v8);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::PBRMaterial<ggl::Texture2D>::saturationFactor(uint64_t a1, float a2)
{
  v4 = **(a1 + 48);
  if (v4 <= 0.00000011921 && (v5 = *(a1 + 16)) != 0 || v4 >= 1.0 && (v5 = *(a1 + 32)) != 0)
  {
    v6 = (*(*v5 + 432))(v5, a2);
    v7 = HIDWORD(v6);
  }

  else
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = (*(*v8 + 432))(v8, a2);
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
      v14 = (*(*v13 + 432))(v13, a2);
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

uint64_t gms::PBRMaterial<ggl::Texture2D>::maxCastShadow(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 384))(v4, a2);
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
    LOWORD(v7) = (*(*v7 + 384))(v7, v2);
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

uint64_t gms::PBRMaterial<ggl::Texture2D>::minCastShadow(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 384))(v4, a2);
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
    LOWORD(v7) = (*(*v7 + 384))(v7, v2);
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

uint64_t gms::PBRMaterial<ggl::Texture2D>::minVisibility(uint64_t a1, __n128 a2)
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

unint64_t gms::PBRMaterial<ggl::Texture2D>::maxZIndex(uint64_t a1, __n128 a2)
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
  if ((v6 | v8) <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v6 | v8;
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

void *gms::PBRMaterial<ggl::Texture2D>::emissiveFactor@<X0>(uint64_t a1@<X0>, float32x4_t *a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if (v6 <= 0.00000011921 && (v7 = *(a1 + 16)) != 0 || v6 >= 1.0 && (v7 = *(a1 + 32)) != 0)
  {
    v8 = *(*v7 + 168);

    return v8(a3);
  }

  else
  {
    v13 = v6;
    v10 = *(a1 + 16);
    if (v10)
    {
      (*(*v10 + 168))(&v16, a3.n128_f32[0]);
    }

    else
    {
      v16.i8[0] = 0;
      v17 = 0;
    }

    result = *(a1 + 32);
    if (result)
    {
      result = (*(*result + 168))(&v14, v3);
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

unint64_t gms::PBRMaterial<ggl::Texture2D>::maxMetallicFactor(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 144))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 144))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fmaxf(v8, v5);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::PBRMaterial<ggl::Texture2D>::minMetallicFactor(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 144))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 144))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fminf(v5, v8);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::PBRMaterial<ggl::Texture2D>::metallicFactor(uint64_t a1, float a2)
{
  v4 = **(a1 + 48);
  if (v4 <= 0.00000011921 && (v5 = *(a1 + 16)) != 0 || v4 >= 1.0 && (v5 = *(a1 + 32)) != 0)
  {
    v6 = (*(*v5 + 144))(v5, a2);
    v7 = HIDWORD(v6);
  }

  else
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = (*(*v8 + 144))(v8, a2);
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
      v14 = (*(*v13 + 144))(v13, a2);
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

unint64_t gms::PBRMaterial<ggl::Texture2D>::maxRoughnessFactor(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 120))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 120))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fmaxf(v8, v5);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::PBRMaterial<ggl::Texture2D>::minRoughnessFactor(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 120))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 120))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fminf(v5, v8);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::PBRMaterial<ggl::Texture2D>::roughnessFactor(uint64_t a1, float a2)
{
  v4 = **(a1 + 48);
  if (v4 <= 0.00000011921 && (v5 = *(a1 + 16)) != 0 || v4 >= 1.0 && (v5 = *(a1 + 32)) != 0)
  {
    v6 = (*(*v5 + 120))(v5, a2);
    v7 = HIDWORD(v6);
  }

  else
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = (*(*v8 + 120))(v8, a2);
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
      v14 = (*(*v13 + 120))(v13, a2);
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

uint64_t gms::PBRMaterial<ggl::Texture2D>::roughnessMetallic(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LOWORD(v1) = (*(*v1 + 72))(v1);
    v2 = BYTE1(v1);
  }

  else
  {
    v2 = 0;
  }

  return v1 | (v2 << 8);
}

uint64_t gms::PBRMaterial<ggl::Texture2D>::normal(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LOWORD(v1) = (*(*v1 + 48))(v1);
    v2 = BYTE1(v1);
  }

  else
  {
    v2 = 0;
  }

  return v1 | (v2 << 8);
}

void gms::PBRMaterial<ggl::Texture2D>::~PBRMaterial(void *a1)
{
  gms::Material<ggl::Texture2D>::~Material(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<gms::PBRMaterial<ggl::Texture2D>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A49378;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::maxSsaoIntensity(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 840))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 840))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fmaxf(v8, v5);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::minSsaoIntensity(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 840))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 840))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fminf(v5, v8);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::ssaoIntensity(uint64_t a1, float a2)
{
  v4 = **(a1 + 48);
  if (v4 <= 0.00000011921 && (v5 = *(a1 + 16)) != 0 || v4 >= 1.0 && (v5 = *(a1 + 32)) != 0)
  {
    v6 = (*(*v5 + 840))(v5, a2);
    v7 = HIDWORD(v6);
  }

  else
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = (*(*v8 + 840))(v8, a2);
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
      v14 = (*(*v13 + 840))(v13, a2);
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

void gms::BasicMaterial<ggl::Texture2D>::emissiveFactorRGB(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if ((v6 > 0.00000011921 || (v7 = *(a1 + 16)) == 0) && (v6 < 1.0 || (v7 = *(a1 + 32)) == 0))
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      (*(*v9 + 672))(&v18, a3.n128_f32[0]);
    }

    else
    {
      LOBYTE(v18) = 0;
      v20 = 0;
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(*v10 + 672))(&v15, v3);
    }

    else
    {
      LOBYTE(v15) = 0;
      v17 = 0;
    }

    if (v20 == 1)
    {
      if (v17 == 1)
      {
        *a2 = gm::lerp<gm::Matrix<float,3,1>,float>(*&v18, *(&v18 + 1), v19, *&v15, *(&v15 + 1), v16, v6);
        *(a2 + 4) = v11;
        *(a2 + 8) = v12;
        v13 = (a2 + 12);
LABEL_21:
        *v13 = 1;
        return;
      }

      v13 = (a2 + 12);
      *a2 = v18;
      v14 = v19;
    }

    else
    {
      *a2 = 0;
      *(a2 + 12) = 0;
      v13 = (a2 + 12);
      if (v17 != 1)
      {
        return;
      }

      *a2 = v15;
      v14 = v16;
    }

    *(a2 + 8) = v14;
    goto LABEL_21;
  }

  v8 = *(*v7 + 672);

  v8(a3);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::maxAlpha(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 624))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 624))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fmaxf(v8, v5);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::minAlpha(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 624))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 624))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fminf(v5, v8);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

uint64_t gms::BasicMaterial<ggl::Texture2D>::maxHideOnCollapse(uint64_t a1, __n128 a2)
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

unint64_t gms::BasicMaterial<ggl::Texture2D>::brightnessRemapRange(uint64_t a1, float a2)
{
  v5 = **(a1 + 48);
  if (v5 <= 0.00000011921 && (v7 = *(a1 + 16)) != 0 || (v6 = &xmmword_1B33B2000, v5 >= 1.0) && (v7 = *(a1 + 32)) != 0)
  {
    v8 = (*(*v7 + 528))(v7, a2);
    v6 = HIDWORD(v8);
  }

  else
  {
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = (*(*v10 + 528))(v10, a2);
      v13 = v12;
      v14 = v11 & 0xFFFFFF00;
      v2 = HIDWORD(v11);
      v15 = v11;
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v13 = 0;
    }

    v16 = *(a1 + 32);
    if (v16)
    {
      v17 = (*(*v16 + 528))(v16, a2);
      v19 = v17 & 0xFFFFFF00;
      v6 = HIDWORD(v17);
      v20 = v17;
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v18 = 0;
    }

    v21 = v20 | v19;
    v22 = v15 | v14;
    v23 = *&v2 + ((*&v6 - *&v2) * v5);
    if (v18)
    {
      *&v22 = COERCE_FLOAT(v15 | v14) + ((*&v21 - COERCE_FLOAT(v15 | v14)) * v5);
    }

    else
    {
      v23 = *&v2;
    }

    if (v13)
    {
      v6 = LODWORD(v23);
    }

    else
    {
      v6 = v6;
    }

    if (v13)
    {
      LODWORD(v8) = v22;
    }

    else
    {
      LODWORD(v8) = v21;
    }
  }

  return v8 | (v6 << 32);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::saturationRemapRange(uint64_t a1, float a2)
{
  v5 = **(a1 + 48);
  if (v5 <= 0.00000011921 && (v7 = *(a1 + 16)) != 0 || (v6 = &xmmword_1B33B2000, v5 >= 1.0) && (v7 = *(a1 + 32)) != 0)
  {
    v8 = (*(*v7 + 504))(v7, a2);
    v6 = HIDWORD(v8);
  }

  else
  {
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = (*(*v10 + 504))(v10, a2);
      v13 = v12;
      v14 = v11 & 0xFFFFFF00;
      v2 = HIDWORD(v11);
      v15 = v11;
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v13 = 0;
    }

    v16 = *(a1 + 32);
    if (v16)
    {
      v17 = (*(*v16 + 504))(v16, a2);
      v19 = v17 & 0xFFFFFF00;
      v6 = HIDWORD(v17);
      v20 = v17;
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v18 = 0;
    }

    v21 = v20 | v19;
    v22 = v15 | v14;
    v23 = *&v2 + ((*&v6 - *&v2) * v5);
    if (v18)
    {
      *&v22 = COERCE_FLOAT(v15 | v14) + ((*&v21 - COERCE_FLOAT(v15 | v14)) * v5);
    }

    else
    {
      v23 = *&v2;
    }

    if (v13)
    {
      v6 = LODWORD(v23);
    }

    else
    {
      v6 = v6;
    }

    if (v13)
    {
      LODWORD(v8) = v22;
    }

    else
    {
      LODWORD(v8) = v21;
    }
  }

  return v8 | (v6 << 32);
}

uint64_t gms::BasicMaterial<ggl::Texture2D>::maxAcceptsOverlays(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 480))(v4, a2);
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
    LOWORD(v7) = (*(*v7 + 480))(v7, v2);
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

uint64_t gms::BasicMaterial<ggl::Texture2D>::minAcceptsOverlays(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 480))(v4, a2);
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
    LOWORD(v7) = (*(*v7 + 480))(v7, v2);
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

unint64_t gms::BasicMaterial<ggl::Texture2D>::maxBrightnessFactor(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 456))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 456))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fmaxf(v8, v5);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::minBrightnessFactor(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 456))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 456))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fminf(v5, v8);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::brightnessFactor(uint64_t a1, float a2)
{
  v4 = **(a1 + 48);
  if (v4 <= 0.00000011921 && (v5 = *(a1 + 16)) != 0 || v4 >= 1.0 && (v5 = *(a1 + 32)) != 0)
  {
    v6 = (*(*v5 + 456))(v5, a2);
    v7 = HIDWORD(v6);
  }

  else
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = (*(*v8 + 456))(v8, a2);
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
      v14 = (*(*v13 + 456))(v13, a2);
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

unint64_t gms::BasicMaterial<ggl::Texture2D>::maxSaturationFactor(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 432))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 432))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fmaxf(v8, v5);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::minSaturationFactor(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 432))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 432))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fminf(v5, v8);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::saturationFactor(uint64_t a1, float a2)
{
  v4 = **(a1 + 48);
  if (v4 <= 0.00000011921 && (v5 = *(a1 + 16)) != 0 || v4 >= 1.0 && (v5 = *(a1 + 32)) != 0)
  {
    v6 = (*(*v5 + 432))(v5, a2);
    v7 = HIDWORD(v6);
  }

  else
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = (*(*v8 + 432))(v8, a2);
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
      v14 = (*(*v13 + 432))(v13, a2);
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

uint64_t gms::BasicMaterial<ggl::Texture2D>::maxCastShadow(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 384))(v4, a2);
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
    LOWORD(v7) = (*(*v7 + 384))(v7, v2);
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

uint64_t gms::BasicMaterial<ggl::Texture2D>::minCastShadow(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 384))(v4, a2);
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
    LOWORD(v7) = (*(*v7 + 384))(v7, v2);
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

unint64_t gms::BasicMaterial<ggl::Texture2D>::maxShininess(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 360))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 360))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fmaxf(v8, v5);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::minShininess(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 360))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 360))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fminf(v5, v8);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::maxSpecularity(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 336))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 336))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fmaxf(v8, v5);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::minSpecularity(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 336))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 336))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fminf(v5, v8);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::maxLineWidth(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 240))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 240))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fmaxf(v8, v5);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::minLineWidth(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 240))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 240))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fminf(v5, v8);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::maxZIndex(uint64_t a1, __n128 a2)
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
  if ((v6 | v8) <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v6 | v8;
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

void *gms::BasicMaterial<ggl::Texture2D>::emissiveFactor@<X0>(uint64_t a1@<X0>, float32x4_t *a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if (v6 <= 0.00000011921 && (v7 = *(a1 + 16)) != 0 || v6 >= 1.0 && (v7 = *(a1 + 32)) != 0)
  {
    v8 = *(*v7 + 168);

    return v8(a3);
  }

  else
  {
    v13 = v6;
    v10 = *(a1 + 16);
    if (v10)
    {
      (*(*v10 + 168))(&v16, a3.n128_f32[0]);
    }

    else
    {
      v16.i8[0] = 0;
      v17 = 0;
    }

    result = *(a1 + 32);
    if (result)
    {
      result = (*(*result + 168))(&v14, v3);
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

void gms::BasicMaterial<ggl::Texture2D>::~BasicMaterial(void *a1)
{
  gms::Material<ggl::Texture2D>::~Material(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<gms::BasicMaterial<ggl::Texture2D>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A48960;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>::operator=[abi:nn200100]<std::shared_ptr<gms::_Material<ggl::Texture2D>>,void>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*(a1 + 16) == 1)
  {
    v4 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v5 = *(a1 + 8);
    *a1 = v3;
    *(a1 + 8) = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }
  }

  else
  {
    v6 = a2[1];
    *a1 = v3;
    *(a1 + 8) = v6;
    *a2 = 0;
    a2[1] = 0;
    *(a1 + 16) = 1;
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    if (*(__p + 48) == 1)
    {
      v3 = __p[5];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v3);
      }
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16NeedsClimateTintEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsClimateTint>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsClimateTint>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsClimateTint>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsClimateTint>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsClimateTint>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NeedsClimateTint,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F170;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::NeedsClimateTint,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::NeedsClimateTint,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A4F190;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::NeedsClimateTint,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::NeedsClimateTint,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NeedsClimateTint,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F170;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::NeedsClimateTint,64ul>::~storage(a1);
}

uint64_t ecs2::removeComponent<md::ls::HasGradientRampTexture>(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = &unk_1F2A0D2F0;
  v5 = a2;
  v6 = &v4;
  v9 = &v7;
  v7 = &unk_1F2A0D2F0;
  v8 = a2;
  v10 = 2;
  ecs2::Runtime::queueCommand();
  if (v10 != -1)
  {
    (off_1F29E5AD0[v10])(&v3, &v7);
  }

  v10 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v4);
}

void ecs2::BasicRegistry<void>::remove<md::ls::HasGradientRampTexture>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasGradientRampTexture>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasGradientRampTexture>(void)::metadata;
  HasGradientRamp = ecs2::BasicRegistry<void>::storage<md::ls::HasGradientRampTexture>(a1);
  v6 = a2 >> 22;
  v7 = HasGradientRamp[1];
  if (v6 < (HasGradientRamp[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      if (*(v8 + 4 * ((a2 >> 16) & 0x3F)) == a2)
      {
        v9 = HasGradientRamp;
        v10 = HasGradientRamp[25];
        for (i = HasGradientRamp[26]; v10 != i; v10 += 32)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v10 + 24), a2);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v9, a2, WORD1(a2));
      }
    }
  }

  v12 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v12 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasGradientRampTexture>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasGradientRampTexture>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasGradientRampTexture>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasGradientRampTexture>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasGradientRampTexture>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasGradientRampTexture>(void)::localId;
    unk_1EB82B4E0 = 0x7EDF0608EB36DCA6;
    qword_1EB82B4E8 = "md::ls::HasGradientRampTexture]";
    qword_1EB82B4F0 = 30;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::HasGradientRampTexture>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasGradientRampTexture>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasGradientRampTexture>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasGradientRampTexture>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22HasGradientRampTextureEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A0D358;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::HasGradientRampTexture,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A0D338;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::HasGradientRampTexture,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A0D338;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t std::__function::__func<ecs2::RemoveComponent::RemoveComponent<md::ls::HasGradientRampTexture>(ecs2::Entity,std::type_identity<md::ls::HasGradientRampTexture>)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::RemoveComponent::RemoveComponent<md::ls::HasGradientRampTexture>(ecs2::Entity,std::type_identity<md::ls::HasGradientRampTexture>)::{lambda(ecs2::BasicRegistry<void> &)#1}>,void ()(ecs2::BasicRegistry<void> &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A0D2F0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TexturesToDisconnect,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A828;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TexturesToDisconnect,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TexturesToDisconnect,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1A848;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      v6 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v6;
        operator delete(v6);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v7 = a1[7];
  v8 = a1[8];
  while (v7 != v8)
  {
    if (*v7)
    {
      operator delete(*v7);
    }

    ++v7;
  }

  v9 = a1[10];
  if (v9)
  {
    a1[11] = v9;
    operator delete(v9);
  }

  v10 = a1[7];
  if (v10)
  {
    a1[8] = v10;
    operator delete(v10);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::TexturesToDisconnect,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TexturesToDisconnect,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TexturesToDisconnect,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A828;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TexturesToDisconnect,64ul>::~storage(a1);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TexturesToDisconnect>(ecs2::Entity,md::ls::TexturesToDisconnect &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void *std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TexturesToDisconnect>(ecs2::Entity,md::ls::TexturesToDisconnect &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F2A0D280;
  result = std::vector<mre::TextureHandle>::vector[abi:nn200100](a2 + 1, (a1 + 8));
  a2[4] = *(a1 + 32);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TexturesToDisconnect>(ecs2::Entity,md::ls::TexturesToDisconnect &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::~__func(void *a1)
{
  *a1 = &unk_1F2A0D280;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TexturesToDisconnect>(ecs2::Entity,md::ls::TexturesToDisconnect &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::~__func(void *a1)
{
  *a1 = &unk_1F2A0D280;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16RampMaterialDataEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RampMaterialData>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = (*(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 32 * (v14 & 0x3F));
        v17 = (*(v15 + ((v13 >> 3) & 0x1FF8)) + 32 * (v13 & 0x3F));
        v19 = *v17;
        v18 = v17[1];
        v20 = v16[1];
        *v17 = *v16;
        v17[1] = v20;
        *v16 = v19;
        v16[1] = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RampMaterialData,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A43428;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RampMaterialData,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RampMaterialData,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A43448;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::RampMaterialData,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RampMaterialData,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RampMaterialData,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A43428;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RampMaterialData,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RampMaterialData>(ecs2::Entity,md::ls::RampMaterialData &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E5A98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 44) = 0;
  return result;
}

__n128 std::__function::__func<md::ita::UpdateStyleTextureIfNecessary::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>)::$_0,std::allocator<md::ita::UpdateStyleTextureIfNecessary::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>)::$_0>,void ()(md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E5A50;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::RenderablePendingProcessing const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::isValid(unsigned __int16 **a1)
{
  v1 = (*a1)[1];
  v2 = v1 >> 6;
  v3 = *(a1[2] + 1);
  if (v1 >> 6 < (*(a1[2] + 2) - v3) >> 3 && (v4 = *(v3 + 8 * v2)) != 0 && (v5 = **a1, v6 = 4 * (v1 & 0x3F), *(v4 + v6) == v5) && (v7 = *(a1[3] + 1), v2 < (*(a1[3] + 2) - v7) >> 3) && (v9 = *(v7 + 8 * v2)) != 0 && *(v9 + v6) == v5 && (v10 = *(a1[4] + 1), v2 < (*(a1[4] + 2) - v10) >> 3) && (v11 = *(v10 + 8 * v2)) != 0 && *(v11 + v6) == v5 && (v12 = *(a1[5] + 1), v2 < (*(a1[5] + 2) - v12) >> 3) && (v13 = *(v12 + 8 * v2)) != 0)
  {
    return *(v13 + v6) == v5;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls27RenderablePendingProcessingEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablePendingProcessing>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablePendingProcessing>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderablePendingProcessing>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablePendingProcessing>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablePendingProcessing>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderablePendingProcessing,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41AE8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderablePendingProcessing,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41AE8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void std::__function::__func<md::ita::UpdateStyleTextureIfNecessaryPendingOnly::operator()(ecs2::Query<md::ls::RenderablePendingProcessing const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>)::$_0,std::allocator<md::ita::UpdateStyleTextureIfNecessaryPendingOnly::operator()(ecs2::Query<md::ls::RenderablePendingProcessing const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>)::$_0>,void ()(md::ls::RenderablePendingProcessing const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*)>::operator()(ecs2::ExecutionTaskContext *a1, uint64_t a2, uint64_t *a3, unint64_t *a4, unint64_t *a5, uint64_t **a6)
{
  v9 = *a6;
  v11 = *(a1 + 1);
  v10 = *(a1 + 2);
  v12 = v11[1];
  v15[0] = *v11;
  v15[1] = v12;
  v15[2] = v11[2];
  v13 = *v10;
  v14 = ecs2::ExecutionTaskContext::currentEntity(a1);
  process<ecs2::Runtime>(v15, v13, v14, a3, a4, *a5, v9);
}

__n128 std::__function::__func<md::ita::UpdateStyleTextureIfNecessaryPendingOnly::operator()(ecs2::Query<md::ls::RenderablePendingProcessing const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>)::$_0,std::allocator<md::ita::UpdateStyleTextureIfNecessaryPendingOnly::operator()(ecs2::Query<md::ls::RenderablePendingProcessing const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>)::$_0>,void ()(md::ls::RenderablePendingProcessing const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E5B08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void non-virtual thunk toggl::ManeuverPoint::Mesh::~Mesh(ggl::ManeuverPoint::Mesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::ManeuverPoint::Mesh::~Mesh(ggl::ManeuverPoint::Mesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::ManeuverPoint::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::ManeuverPoint::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ManeuverPoint::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t ggl::ManeuverPoint::BasePipelineSetup::BasePipelineSetup(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    ggl::PipelineSetup::PipelineSetup(a1, a2, a3);
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  else
  {
    ggl::PipelineSetup::PipelineSetup(a1, a2, 0);
  }

  *a1 = &unk_1F29E5BB0;
  v11 = *(a1 + 136);
  v12 = *a4;
  v13 = a4[1];
  *v11 = *a4;
  v11[1] = 0;
  v14 = *(a1 + 232);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = v14[1];
  *v14 = v12;
  v14[1] = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  v16 = *(a1 + 136);
  v17 = *a5;
  v18 = a5[1];
  *(v16 + 16) = *a5;
  *(v16 + 24) = 0;
  v19 = *(a1 + 232);
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = *(v19 + 24);
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  **(a1 + 168) = a6;
  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::Labeler *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void ggl::SDFGlyph::DefaultPipelineSetup::~DefaultPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::SDFGlyph::HaloPipelineSetup::~HaloPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::SDFGlyph::SuperSamplePipelineSetup::~SuperSamplePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::Logic<md::ARDebugDrawMeshBoundsLogic,md::ARDebugDrawMeshBoundsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void md::ARDebugDrawMeshBoundsLogic::runBeforeLayout(uint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  v68 = +[VKDebugSettings sharedSettings];
  if ([v68 arDebugDrawMeshFeatureBounds])
  {
    v1 = *(a1 + 120);
    v75 = gdc::Registry::storage<arComponents::IsVisible>(v1);
    v2 = gdc::Registry::storage<arComponents::MeshComponent>(v1);
    v73 = gdc::Registry::storage<arComponents::Boundary>(v1);
    v3 = gdc::Registry::storage<arComponents::WorldTransform>(v1);
    v4 = *(a1 + 120);
    v5 = gdc::Registry::storage<arComponents::IsVisible>(v4);
    v74 = gdc::Registry::storage<arComponents::MeshDataComponent>(v4);
    v72 = gdc::Registry::storage<arComponents::Boundary>(v4);
    v70 = gdc::Registry::storage<arComponents::WorldTransform>(v4);
    v6.i64[0] = v75;
    v6.i64[1] = v2;
    v7.i64[0] = v73;
    v7.i64[1] = v3;
    v69 = v5;
    v66 = v5;
    v8 = vdupq_n_s64(0x20uLL);
    v76 = vaddq_s64(v6, v8);
    v77 = vaddq_s64(v7, v8);
    v9 = v76.i64[0];
    v10 = 1;
    v11 = &v76;
    do
    {
      if (*(v76.i64[v10] + 32) - *(v76.i64[v10] + 24) < *(v9 + 32) - *(v9 + 24))
      {
        v9 = v76.i64[v10];
        v11 = (&v76 + v10 * 8);
      }

      ++v10;
    }

    while (v10 != 4);
    v12 = (v75 + 32);
    v67 = v11->i64[0];
    if (v75 + 32 == v11->i64[0])
    {
      v31 = *(v75 + 56);
      v30 = *(v75 + 64);
      while (v31 != v30)
      {
        v32 = *(v31 + 4);
        if (v2[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v2 + 4, v32) && v73[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v73 + 4, v32) && v3[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v3 + 4, v32))
        {
          v33 = *v31;
          v34 = HIDWORD(*v31);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v2 + 4, HIDWORD(*v31));
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v73 + 4, v34);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v3 + 4, v34);
          _ZZN2md26ARDebugDrawMeshBoundsLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJEEES7_EE20ResolvedDependenciesERNS_28ARDebugDrawMeshBoundsContextEENK3__0clENS5_6EntityERN12arComponents13MeshComponentERNSG_8BoundaryERNSG_14WorldTransformE(a1, v33);
        }

        v31 += 8;
      }
    }

    if (v2 + 4 == v67)
    {
      v35 = v2[7];
      v36 = v2[8];
      while (v35 != v36)
      {
        v37 = *(v35 + 4);
        if (*(v75 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v12, v37) && v73[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v73 + 4, v37) && v3[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v3 + 4, v37))
        {
          v38 = *v35;
          v39 = HIDWORD(*v35);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v73 + 4, HIDWORD(*v35));
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v3 + 4, v39);
          _ZZN2md26ARDebugDrawMeshBoundsLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJEEES7_EE20ResolvedDependenciesERNS_28ARDebugDrawMeshBoundsContextEENK3__0clENS5_6EntityERN12arComponents13MeshComponentERNSG_8BoundaryERNSG_14WorldTransformE(a1, v38);
        }

        v35 += 8;
      }
    }

    v65 = v73 + 4;
    if (v73 + 4 == v67)
    {
      v40 = v73[7];
      v41 = v73[8];
      while (v40 != v41)
      {
        v42 = *(v40 + 4);
        if (*(v75 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v12, v42) && v2[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v2 + 4, v42) && v3[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v3 + 4, v42))
        {
          v43 = *v40;
          v44 = HIDWORD(*v40);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v2 + 4, HIDWORD(*v40));
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v3 + 4, v44);
          _ZZN2md26ARDebugDrawMeshBoundsLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJEEES7_EE20ResolvedDependenciesERNS_28ARDebugDrawMeshBoundsContextEENK3__0clENS5_6EntityERN12arComponents13MeshComponentERNSG_8BoundaryERNSG_14WorldTransformE(a1, v43);
        }

        v40 += 8;
      }
    }

    if (v3 + 4 == v67)
    {
      v45 = v3[7];
      v46 = v3[8];
      while (v45 != v46)
      {
        v47 = *(v45 + 4);
        if (*(v75 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v12, v47) && v2[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v2 + 4, v47) && v73[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v65, v47))
        {
          v48 = *v45;
          v49 = HIDWORD(*v45);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v2 + 4, HIDWORD(*v45));
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v65, v49);
          _ZZN2md26ARDebugDrawMeshBoundsLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJEEES7_EE20ResolvedDependenciesERNS_28ARDebugDrawMeshBoundsContextEENK3__0clENS5_6EntityERN12arComponents13MeshComponentERNSG_8BoundaryERNSG_14WorldTransformE(a1, v48);
        }

        v45 += 8;
      }
    }

    v13.i64[0] = v66;
    v14.i64[0] = v72;
    v13.i64[1] = v74;
    v14.i64[1] = v70;
    v15 = vdupq_n_s64(0x20uLL);
    v76 = vaddq_s64(v13, v15);
    v77 = vaddq_s64(v14, v15);
    v16 = v76.i64[0];
    v17 = 1;
    v18 = &v76;
    do
    {
      if (*(v76.i64[v17] + 32) - *(v76.i64[v17] + 24) < *(v16 + 32) - *(v16 + 24))
      {
        v16 = v76.i64[v17];
        v18 = (&v76 + v17 * 8);
      }

      ++v17;
    }

    while (v17 != 4);
    v19 = v18->i64[0];
    v20 = v69;
    v21 = v69 + 4;
    if (v69 + 4 == v18->i64[0])
    {
      v51 = v69[7];
      v50 = v69[8];
      while (v51 != v50)
      {
        v52 = *(v51 + 4);
        if (v74[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v74 + 4, v52) && v72[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v72 + 4, v52) && *(v70 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v70 + 32), v52))
        {
          v53 = *v51;
          v54 = HIDWORD(*v51);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v74 + 4, HIDWORD(*v51));
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v72 + 4, v54);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v70 + 32), v54);
          _ZZN2md26ARDebugDrawMeshBoundsLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJEEES7_EE20ResolvedDependenciesERNS_28ARDebugDrawMeshBoundsContextEENK3__0clENS5_6EntityERN12arComponents13MeshComponentERNSG_8BoundaryERNSG_14WorldTransformE(a1, v53);
        }

        v51 += 8;
      }
    }

    v22 = v74 + 4;
    if (v74 + 4 == v19)
    {
      v55 = v74[7];
      v56 = v74[8];
      while (v55 != v56)
      {
        v57 = *(v55 + 4);
        if (v69[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v21, v57) && v72[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v72 + 4, v57) && *(v70 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v70 + 32), v57))
        {
          v58 = *v55;
          v59 = HIDWORD(*v55);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v72 + 4, HIDWORD(*v55));
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v70 + 32), v59);
          _ZZN2md26ARDebugDrawMeshBoundsLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJEEES7_EE20ResolvedDependenciesERNS_28ARDebugDrawMeshBoundsContextEENK3__0clENS5_6EntityERN12arComponents13MeshComponentERNSG_8BoundaryERNSG_14WorldTransformE(a1, v58);
        }

        v55 += 8;
      }
    }

    v23 = v72 + 4;
    v24 = v70;
    if (v72 + 4 == v19)
    {
      v25 = v72[7];
      for (i = v72[8]; v25 != i; v20 = v69)
      {
        v27 = *(v25 + 4);
        if (v20[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v21, v27) && v74[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v22, v27) && v24[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v24 + 4, v27))
        {
          v28 = *v25;
          v29 = HIDWORD(*v25);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v22, HIDWORD(*v25));
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v70 + 32), v29);
          _ZZN2md26ARDebugDrawMeshBoundsLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJEEES7_EE20ResolvedDependenciesERNS_28ARDebugDrawMeshBoundsContextEENK3__0clENS5_6EntityERN12arComponents13MeshComponentERNSG_8BoundaryERNSG_14WorldTransformE(a1, v28);
          v24 = v70;
        }

        v25 += 8;
      }
    }

    if (v24 + 4 == v19)
    {
      v60 = v24[7];
      v61 = v24[8];
      while (v60 != v61)
      {
        v62 = *(v60 + 4);
        if (v20[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v21, v62) && v74[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v22, v62) && v72[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v23, v62))
        {
          v63 = *v60;
          v64 = HIDWORD(*v60);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v22, HIDWORD(*v60));
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v23, v64);
          _ZZN2md26ARDebugDrawMeshBoundsLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJEEES7_EE20ResolvedDependenciesERNS_28ARDebugDrawMeshBoundsContextEENK3__0clENS5_6EntityERN12arComponents13MeshComponentERNSG_8BoundaryERNSG_14WorldTransformE(a1, v63);
        }

        v60 += 8;
      }
    }
  }
}

void _ZZN2md26ARDebugDrawMeshBoundsLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJEEES7_EE20ResolvedDependenciesERNS_28ARDebugDrawMeshBoundsContextEENK3__0clENS5_6EntityERN12arComponents13MeshComponentERNSG_8BoundaryERNSG_14WorldTransformE(uint64_t a1, unint64_t a2)
{
  v4 = HIDWORD(a2);
  v5 = gdc::Registry::storage<arComponents::ShadowPipeline>(*(a1 + 120));
  Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v5 + 32), v4);
  v7 = *(v5 + 64);
  v8 = gdc::Registry::storage<arComponents::StandardPipeline>(*(a1 + 120));
  v9 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v8 + 32), v4);
  if (v7 == Index)
  {
    if (*(v8 + 64) == v9)
    {
      v10.i64[0] = 0xFF00FF00FF00FFLL;
      goto LABEL_6;
    }

    v10 = xmmword_1B33B06F0;
  }

  else
  {
    v10 = xmmword_1B33B06E0;
  }

  v10.i32[2] = 0;
  *v10.f32 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v10, vdupq_n_s32(0x437F0000u))));
LABEL_6:
  v11 = *(a1 + 120);
  v13 = 256;
  v14 = vuzp1_s8(*v10.f32, *v10.f32).u32[0];
  v12 = gdc::Registry::storage<arComponents::NeedsDebugDraw>(v11);
  gdc::ComponentStorageWrapper<arComponents::NeedsDebugDraw>::emplace(v12, a2, &v13);
}

uint64_t gdc::Registry::storage<arComponents::ShadowPipeline>(uint64_t a1)
{
  v3 = 0xA3C8162527B8C964;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xA3C8162527B8C964);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::StandardPipeline>(uint64_t a1)
{
  v3 = 0x5BD3262791F15BBDLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x5BD3262791F15BBDuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::NeedsDebugDraw>(uint64_t a1)
{
  v3 = 0x9B24ADCC720E2B64;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x9B24ADCC720E2B64);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gdc::ComponentStorageWrapper<arComponents::NeedsDebugDraw>::emplace(void *a1, uint64_t a2, __int16 *a3)
{
  v24 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v24);
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[12];
    if (v7 >= v8)
    {
      v16 = a1[10];
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v16) >> 1) + 1;
      if (v17 > 0x2AAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v16) >> 1);
      if (2 * v18 > v17)
      {
        v17 = 2 * v18;
      }

      if (v18 >= 0x1555555555555555)
      {
        v19 = 0x2AAAAAAAAAAAAAAALL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (v19 <= 0x2AAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = 2 * ((v7 - v16) >> 1);
      *v20 = *a3;
      *(v20 + 2) = *(a3 + 1);
      v9 = v20 + 6;
      v21 = v20 - (v7 - v16);
      if (v16 != v7)
      {
        v22 = 2 * ((v7 - v16) >> 1) - (v7 - v16);
        do
        {
          *v22 = *v16;
          *(v22 + 2) = *(v16 + 2);
          v16 += 6;
          v22 += 6;
        }

        while (v16 != v7);
        v16 = a1[10];
      }

      a1[10] = v21;
      a1[11] = v9;
      a1[12] = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7 = *a3;
      *(v7 + 2) = *(a3 + 1);
      v9 = (v7 + 6);
    }

    a1[11] = v9;
    v14 = a1[31];
    goto LABEL_26;
  }

  v10 = 0;
  v11 = (a1[10] + 6 * ((v5 - a1[7]) >> 3));
  v13 = *a3;
  v12 = a3 + 1;
  *v11 = v13;
  do
  {
    *(v11 + v10 + 2) = *(v12 + v10);
    ++v10;
  }

  while (v10 != 4);
  v14 = a1[31];
  if (v11 == a1[11])
  {
LABEL_26:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v14, &v24, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v14, &v24, 1);
  }
}

BOOL gdc::ComponentStorageWrapper<arComponents::NeedsDebugDraw>::remove(void *a1, uint64_t a2)
{
  v14 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 6 * ((v3 - a1[7]) >> 3));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11];
    *v6 = *(v8 - 6);
    v9 = v6 + 1;
    v10 = v8 - 4;
    do
    {
      *(v9 + v7) = *(v10 + v7);
      ++v7;
    }

    while (v7 != 4);
    a1[11] -= 6;
    v11 = a1[28];
    if (v11)
    {
      v12 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v11[6], v12, &v14, 1);
        v11 = *v11;
      }

      while (v11);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::NeedsDebugDraw>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::NeedsDebugDraw>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<arComponents::StandardPipeline>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<arComponents::StandardPipeline>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::StandardPipeline>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<arComponents::ShadowPipeline>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<arComponents::ShadowPipeline>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::ShadowPipeline>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

uint64_t gdc::Registry::storage<arComponents::IsVisible>(uint64_t a1)
{
  v3 = 0x55CAA77C36360ED8;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x55CAA77C36360ED8uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::MeshDataComponent>(uint64_t a1)
{
  v3 = 0xF1DF98F0053592CELL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xF1DF98F0053592CELL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::Boundary>(uint64_t a1)
{
  v3 = 0x7130F622D05EDC68;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x7130F622D05EDC68uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::WorldTransform>(uint64_t a1)
{
  v3 = 0x3A6FAD8338D694D6;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x3A6FAD8338D694D6uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::WorldTransform>::remove(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 80 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11];
    do
    {
      *(v6 + 24 + v7) = *(v8 - 56 + v7);
      v7 += 8;
    }

    while (v7 != 24);
    v9 = 0;
    v10 = v8 - 80;
    *(v6 + 48) = *(v8 - 32);
    do
    {
      *(v6 + v9) = *(v10 + v9);
      v9 += 8;
    }

    while (v9 != 24);
    v11 = 0;
    v12 = v8 - 24;
    do
    {
      *(v6 + 56 + v11) = *(v12 + v11);
      v11 += 8;
    }

    while (v11 != 24);
    a1[11] = v10;
    v13 = a1[28];
    if (v13)
    {
      v14 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v13[6], v14, &v16, 1);
        v13 = *v13;
      }

      while (v13);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::WorldTransform>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::WorldTransform>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<arComponents::Boundary>::remove(void *a1, uint64_t a2)
{
  v15 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 24 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11];
    v9 = v8 - 24;
    do
    {
      *(v6 + v7) = *(v9 + v7);
      v7 += 4;
    }

    while (v7 != 12);
    v10 = 0;
    v11 = v8 - 12;
    do
    {
      *(v6 + 12 + v10) = *(v11 + v10);
      v10 += 4;
    }

    while (v10 != 12);
    a1[11] = v9;
    v12 = a1[28];
    if (v12)
    {
      v13 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v12[6], v13, &v15, 1);
        v12 = *v12;
      }

      while (v12);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::Boundary>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::Boundary>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<arComponents::MeshDataComponent>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::MeshDataComponent>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::MeshDataComponent>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<arComponents::IsVisible>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<arComponents::IsVisible>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::IsVisible>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

uint64_t gdc::Registry::storage<arComponents::MeshComponent>(uint64_t a1)
{
  v3 = 0x18B420914FEF5BA6;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x18B420914FEF5BA6uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::MeshComponent>::remove(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 2 * (v3 - a1[7]));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v9 = *(v7 - 16);
    v8 = *(v7 - 8);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v6[1];
    *v6 = v9;
    v6[1] = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = a1[11];
    v12 = *(v11 - 8);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    a1[11] = v11 - 16;
    v13 = a1[28];
    if (v13)
    {
      v14 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v13[6], v14, &v16, 1);
        v13 = *v13;
      }

      while (v13);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::MeshComponent>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::MeshComponent>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

uint64_t md::Logic<md::ARDebugDrawMeshBoundsLogic,md::ARDebugDrawMeshBoundsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x9BE0A35B5769E59FLL && *(a3 + 32))
  {
    *&v6[2] = v4;
    v7 = v5;
    return (*(*result + 160))(result, a2, v6);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t md::Logic<md::ARDebugDrawMeshBoundsLogic,md::ARDebugDrawMeshBoundsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x9BE0A35B5769E59FLL)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 152))(result, a2, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARDebugDrawMeshBoundsLogic,md::ARDebugDrawMeshBoundsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x9BE0A35B5769E59FLL)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 144))(result, a2, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARDebugDrawMeshBoundsLogic,md::ARDebugDrawMeshBoundsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x9BE0A35B5769E59FLL)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 136))(result, a2, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARDebugDrawMeshBoundsLogic,md::ARDebugDrawMeshBoundsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x9BE0A35B5769E59FLL)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 128))(result, a2, v5);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::ARDebugDrawMeshBoundsContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARDebugDrawMeshBoundsContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E5EC8;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARDebugDrawMeshBoundsContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E5EC8;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::ARDebugDrawMeshBoundsLogic::~ARDebugDrawMeshBoundsLogic(md::ARDebugDrawMeshBoundsLogic *this)
{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<float>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void md::Logic<md::AssetLogic,md::AssetContext,md::LogicDependencies<gdc::TypeList<md::IdentifiedResourceContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void gdc::ComponentStorageWrapper<md::components::SubtileZone>::emplace(void *a1, uint64_t a2, char *a3)
{
  v20 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v20);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v13 = a1[10];
      v14 = (v8 - v13);
      v15 = v8 - v13 + 1;
      if (v15 < 0)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v16 = v7 - v13;
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        operator new();
      }

      v18 = v8 - v13;
      *v14 = *a3;
      v9 = v14 + 1;
      memcpy(0, v13, v18);
      a1[10] = 0;
      a1[11] = v14 + 1;
      a1[12] = 0;
      if (v13)
      {
        operator delete(v13);
      }
    }

    else
    {
      *v8 = *a3;
      v9 = v8 + 1;
    }

    a1[11] = v9;
    v11 = a1[31];
    goto LABEL_19;
  }

  v10 = (a1[10] + ((v5 - a1[7]) >> 3));
  *v10 = *a3;
  v11 = a1[31];
  if (v10 == a1[11])
  {
LABEL_19:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v11, &v20, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v11, &v20, 1);
  }
}

void addPreviousComponents(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = gdc::Registry::storage<md::components::CustomRenderState>(a1);
  v9 = gdc::ComponentStorageWrapper<md::components::CustomRenderState>::get(v8, a2);
  v10 = gdc::Registry::storage<md::components::IntendedSceneLayer>(a1);
  v11 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v10, a2);
  v12 = gdc::Registry::storage<md::components::NonTiled>(a1);
  v13 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v12, a2);
  v14 = gdc::Registry::storage<md::components::CustomZIndex>(a1);
  v15 = gdc::ComponentStorageWrapper<md::components::CustomZIndex>::get(v14, a2);
  v16 = gdc::Registry::storage<md::components::OcclusionType>(a1);
  v17 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v16 + 4, HIDWORD(a2));
  if (v16[8] == v17)
  {
    v18 = v16[11];
  }

  else
  {
    v18 = v16[10] + ((v17 - v16[7]) >> 3);
  }

  if (v18 == v16[11])
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  v20 = gdc::Registry::storage<md::components::StencilBucket>(a1);
  v21 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v20, a2);
  if (v9)
  {
    v22 = *(v9 + 8);
    v29[0] = *v9;
    v29[1] = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = *(v9 + 16);
    v23 = gdc::Registry::storage<md::components::CustomRenderState>(a3);
    gdc::ComponentStorageWrapper<md::components::CustomRenderState>::emplace(v23, a4, v29);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }
  }

  if (v11)
  {
    LOBYTE(v29[0]) = *v11;
    v24 = gdc::Registry::storage<md::components::IntendedSceneLayer>(a3);
    gdc::ComponentStorageWrapper<md::components::IntendedSceneLayer>::emplace(v24, a4, v29);
  }

  if (v13)
  {
    v25 = gdc::Registry::storage<md::components::NonTiled>(a3);
    gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v25, a4);
  }

  if (v15)
  {
    LODWORD(v29[0]) = *v15;
    v26 = gdc::Registry::storage<md::components::CustomZIndex>(a3);
    gdc::ComponentStorageWrapper<md::components::CustomZIndex>::emplace(v26, a4, v29);
  }

  if (v19)
  {
    LOBYTE(v29[0]) = *v19;
    v27 = gdc::Registry::storage<md::components::OcclusionType>(a3);
    gdc::ComponentStorageWrapper<md::components::IntendedSceneLayer>::emplace(v27, a4, v29);
  }

  if (v21)
  {
    LOBYTE(v29[0]) = *v21;
    v28 = gdc::Registry::storage<md::components::StencilBucket>(a3);
    gdc::ComponentStorageWrapper<md::components::IntendedSceneLayer>::emplace(v28, a4, v29);
  }
}

void sub_1B2C6DAA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::Registry::storage<md::components::CustomZIndex>(uint64_t a1)
{
  v3 = 0x11C900ADCB57DAC9;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x11C900ADCB57DAC9uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gdc::ComponentStorageWrapper<md::components::CustomZIndex>::emplace(void *a1, uint64_t a2, _DWORD *a3)
{
  v23 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v23);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v14 = a1[10];
      v15 = (v8 - v14) >> 2;
      v16 = v15 + 1;
      if ((v15 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = v7 - v14;
      if (v17 >> 1 > v16)
      {
        v16 = v17 >> 1;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v18 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (!(v18 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      *(4 * v15) = *a3;
      v9 = 4 * v15 + 4;
      if (v14 != v8)
      {
        v19 = v14;
        v20 = (4 * v15 + v14 - v8);
        do
        {
          v21 = *v19;
          v19 += 4;
          *v20++ = v21;
        }

        while (v19 != v8);
      }

      a1[10] = 4 * v15 + v14 - v8;
      a1[11] = v9;
      a1[12] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v8 = *a3;
      v9 = (v8 + 4);
    }

    a1[11] = v9;
    v12 = a1[31];
    goto LABEL_23;
  }

  v10 = a1[11];
  v11 = (a1[10] + ((v5 - a1[7]) >> 1));
  *v11 = *a3;
  v12 = a1[31];
  if (v11 == v10)
  {
LABEL_23:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v12, &v23, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v12, &v23, 1);
  }
}

uint64_t gdc::Registry::storage<md::components::StencilBucket>(uint64_t a1)
{
  v3 = 0xCB3B3DB6B3944ED2;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xCB3B3DB6B3944ED2);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::components::StencilBucket>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 3;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v8 = a1[11];
    *(v6 + v7) = *(v8 - 1);
    a1[11] = v8 - 1;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::StencilBucket>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::StencilBucket>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::components::OcclusionType>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 3;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v8 = a1[11];
    *(v6 + v7) = *(v8 - 1);
    a1[11] = v8 - 1;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::OcclusionType>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::OcclusionType>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::components::CustomZIndex>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 1;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v8 = a1[11];
    *(v6 + v7) = *(v8 - 4);
    a1[11] = v8 - 4;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::CustomZIndex>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::CustomZIndex>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::components::NonTiled>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<md::components::NonTiled>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::NonTiled>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

uint64_t gdc::ComponentStorageWrapper<md::components::CustomZIndex>::get(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    v4 = a1[11];
  }

  else
  {
    v4 = a1[10] + ((v3 - a1[7]) >> 1);
  }

  if (v4 == a1[11])
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void gdc::ComponentStorageWrapper<md::components::ReferencedAssetInstance>::emplace(void *a1, uint64_t a2, __int128 *a3)
{
  v35 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v35);
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[12];
    if (v7 >= v8)
    {
      v20 = a1[10];
      v21 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v20) >> 5) + 1;
      if (v21 > 0x2AAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v22 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v20) >> 5);
      if (2 * v22 > v21)
      {
        v21 = 2 * v22;
      }

      if (v22 >= 0x155555555555555)
      {
        v23 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        if (v23 <= 0x2AAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v24 = a3[3];
      v25 = (32 * ((v7 - v20) >> 5));
      v25[2] = a3[2];
      v25[3] = v24;
      v26 = a3[5];
      v25[4] = a3[4];
      v25[5] = v26;
      v27 = a3[1];
      *v25 = *a3;
      v25[1] = v27;
      v13 = v25 + 6;
      if (v20 != v7)
      {
        v28 = v20;
        v29 = (32 * ((v7 - v20) >> 5) - (v7 - v20));
        do
        {
          v30 = *(v28 + 1);
          *v29 = *v28;
          v29[1] = v30;
          v31 = *(v28 + 2);
          v32 = *(v28 + 3);
          v33 = *(v28 + 5);
          v29[4] = *(v28 + 4);
          v29[5] = v33;
          v29[2] = v31;
          v29[3] = v32;
          v28 += 96;
          v29 += 6;
        }

        while (v28 != v7);
      }

      a1[10] = 32 * ((v7 - v20) >> 5) - (v7 - v20);
      a1[11] = v13;
      a1[12] = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      v9 = a3[1];
      *v7 = *a3;
      *(v7 + 1) = v9;
      v10 = a3[2];
      v11 = a3[3];
      v12 = a3[5];
      *(v7 + 4) = a3[4];
      *(v7 + 5) = v12;
      *(v7 + 2) = v10;
      *(v7 + 3) = v11;
      v13 = v7 + 96;
    }

    a1[11] = v13;
    v18 = a1[31];
    goto LABEL_25;
  }

  v14 = 0;
  v15 = a1[10] + 96 * ((v5 - a1[7]) >> 3);
  v16 = *a3;
  *(v15 + 16) = *(a3 + 2);
  *v15 = v16;
  do
  {
    *(v15 + 24 + v14) = *(a3 + v14 + 24);
    v14 += 4;
  }

  while (v14 != 48);
  v17 = *(a3 + 72);
  *(v15 + 85) = *(a3 + 85);
  *(v15 + 72) = v17;
  v18 = a1[31];
  if (v15 == a1[11])
  {
LABEL_25:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v18, &v35, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v18, &v35, 1);
  }
}

BOOL gdc::ComponentStorageWrapper<md::components::Asset>::remove(void *a1, uint64_t a2)
{
  v14 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 72 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11];
    v9 = *(v8 - 56);
    *v6 = *(v8 - 72);
    *(v6 + 16) = v9;
    v10 = v8 - 52;
    do
    {
      *(v6 + 20 + v7) = *(v10 + v7);
      v7 += 4;
    }

    while (v7 != 48);
    a1[11] -= 72;
    v11 = a1[28];
    if (v11)
    {
      v12 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v11[6], v12, &v14, 1);
        v11 = *v11;
      }

      while (v11);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::Asset>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::Asset>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<md::AssetLogic>>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<md::AssetLogic>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<md::AssetLogic>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

__n128 std::__function::__func<md::AssetLogic::buildAssetMeshInstances(md::IdentifiedResourceContext const&)::$_0,std::allocator<md::AssetLogic::buildAssetMeshInstances(md::IdentifiedResourceContext const&)::$_0>,void ()(gdc::Registry *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E6060;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

BOOL gdc::ComponentStorageWrapper<md::components::SubtileZone>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 3;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *(v6 + v7) = *--a1[11];
    v8 = a1[28];
    if (v8)
    {
      v9 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v8[6], v9, &v11, 1);
        v8 = *v8;
      }

      while (v8);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::SubtileZone>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::SubtileZone>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

void *geo::range_map<unsigned short,unsigned char,std::less<unsigned short>,std::allocator<std::pair<gm::Range<unsigned short> const,unsigned char>>>::find(void *a1, unsigned __int16 a2)
{
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = 0;
    v6 = v3;
    do
    {
      v7 = v6[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      ++v5;
      v6 = v8;
    }

    while (v8 != v2);
    do
    {
      v10 = v5 >> 1;
      v11 = v3;
      if (v5 >= 2)
      {
        v12 = v5 >> 1;
        v13 = v3;
        do
        {
          v14 = v13[1];
          if (v14)
          {
            do
            {
              v11 = v14;
              v14 = *v14;
            }

            while (v14);
          }

          else
          {
            do
            {
              v11 = v13[2];
              v9 = *v11 == v13;
              v13 = v11;
            }

            while (!v9);
          }

          v13 = v11;
          v16 = v12-- <= 1;
        }

        while (!v16);
      }

      if (*(v11 + 14) <= a2)
      {
        v15 = v11[1];
        if (v15)
        {
          do
          {
            v3 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v3 = v11[2];
            v9 = *v3 == v11;
            v11 = v3;
          }

          while (!v9);
        }

        v10 = v5 + ~v10;
      }

      v5 = v10;
    }

    while (v10);
  }

  if (v2 == v3)
  {
    return v2;
  }

  v16 = *(v3 + 13) <= a2 && *(v3 + 14) > a2;
  if (!v16)
  {
    return v2;
  }

  return v3;
}

void gdc::Registry::add<md::components::Visibility,md::components::ClientState,md::components::SupportsDebugHighlight,md::components::Asset>(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, __int128 *a5)
{
  v10 = gdc::Registry::storage<md::components::Visibility>(a1);
  gdc::ComponentStorageWrapper<md::components::Visibility>::emplace(v10, a2, a3);
  v11 = gdc::Registry::storage<md::components::ClientState>(a1);
  gdc::ComponentStorageWrapper<md::components::ClientState>::emplace(v11, a2, a4);
  v12 = gdc::Registry::storage<md::components::SupportsDebugHighlight>(a1);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v12, a2);
  v13 = gdc::Registry::storage<md::components::Asset>(a1);
  v40 = a2;
  v14 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v13 + 4, &v40);
  if (v15)
  {
    v16 = v13[11];
    v17 = v13[12];
    if (v16 >= v17)
    {
      v27 = v13[10];
      v28 = 0x8E38E38E38E38E39 * ((v16 - v27) >> 3) + 1;
      if (v28 > 0x38E38E38E38E38ELL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v29 = 0x8E38E38E38E38E39 * ((v17 - v27) >> 3);
      if (2 * v29 > v28)
      {
        v28 = 2 * v29;
      }

      if (v29 >= 0x1C71C71C71C71C7)
      {
        v30 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        if (v30 <= 0x38E38E38E38E38ELL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v31 = 8 * ((v16 - v27) >> 3);
      v32 = a5[3];
      *(v31 + 32) = a5[2];
      *(v31 + 48) = v32;
      *(v31 + 64) = *(a5 + 8);
      v33 = a5[1];
      *v31 = *a5;
      *(v31 + 16) = v33;
      v21 = v31 + 72;
      if (v27 != v16)
      {
        v34 = v27;
        v35 = 8 * ((v16 - v27) >> 3) - (v16 - v27);
        do
        {
          *v35 = *v34;
          v36 = *(v34 + 1);
          v37 = *(v34 + 2);
          v38 = *(v34 + 3);
          *(v35 + 64) = *(v34 + 8);
          *(v35 + 32) = v37;
          *(v35 + 48) = v38;
          *(v35 + 16) = v36;
          v34 += 72;
          v35 += 72;
        }

        while (v34 != v16);
      }

      v13[10] = 8 * ((v16 - v27) >> 3) - (v16 - v27);
      v13[11] = v21;
      v13[12] = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v16 = *a5;
      v18 = a5[1];
      v19 = a5[2];
      v20 = a5[3];
      *(v16 + 8) = *(a5 + 8);
      *(v16 + 2) = v19;
      *(v16 + 3) = v20;
      *(v16 + 1) = v18;
      v21 = (v16 + 72);
    }

    v13[11] = v21;
    v25 = v13[31];
    goto LABEL_25;
  }

  v22 = 0;
  v23 = v13[10] + 72 * ((v14 - v13[7]) >> 3);
  v24 = *a5;
  *(v23 + 16) = *(a5 + 8);
  *v23 = v24;
  do
  {
    *(v23 + 20 + v22) = *(a5 + v22 + 20);
    v22 += 4;
  }

  while (v22 != 48);
  v25 = v13[31];
  if (v23 == v13[11])
  {
LABEL_25:
    for (i = v13[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v25, &v40, 1);
    }

    return;
  }

  for (j = v13[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v25, &v40, 1);
  }
}

void geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(void *result, void *a2)
{
  v4 = result[1];
  v5 = ((v4 - *result) >> 3) + 1;
  if (result[3] < v5)
  {
    geo::small_vector_base<gdc::Entity>::grow(result, v5);
    v4 = result[1];
  }

  *v4 = *a2;
  result[1] += 8;
}

void geo::small_vector_base<unsigned char>::emplace_back<int>(void *a1, _DWORD *a2)
{
  v4 = a1[1];
  v5 = &v4[-*a1 + 1];
  if (a1[3] < v5)
  {
    geo::small_vector_base<unsigned char>::grow(a1, v5);
    v4 = a1[1];
  }

  *v4 = *a2;
  ++a1[1];
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,4>>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t gdc::Registry::storage<md::components::PositionScaleFactor>(uint64_t a1)
{
  v3 = 0x3E97B8EB1BFDB5F4;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x3E97B8EB1BFDB5F4uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gdc::ComponentStorageWrapper<md::components::PositionScaleFactor>::emplace(void *a1, uint64_t a2, int *a3)
{
  v25 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v25);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v14 = a1[10];
      v15 = v8 - v14;
      v16 = (v8 - v14) >> 2;
      v17 = v16 + 1;
      if ((v16 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v7 - v14;
      if (v18 >> 1 > v17)
      {
        v17 = v18 >> 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v19 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (!(v19 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = v16;
      v21 = (4 * v16);
      v22 = *a3;
      v23 = &v21[-v20];
      *v21 = v22;
      v9 = v21 + 1;
      memcpy(v23, v14, v15);
      a1[10] = v23;
      a1[11] = v9;
      a1[12] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v8 = *a3;
      v9 = v8 + 4;
    }

    a1[11] = v9;
    v12 = a1[31];
    goto LABEL_20;
  }

  v10 = a1[11];
  v11 = (a1[10] + ((v5 - a1[7]) >> 1));
  *v11 = *a3;
  v12 = a1[31];
  if (v11 == v10)
  {
LABEL_20:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v12, &v25, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v12, &v25, 1);
  }
}

uint64_t gdc::Registry::storage<md::components::AlbedoTint>(uint64_t a1)
{
  v3 = 0xBD729E76E3A79E70;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xBD729E76E3A79E70);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}
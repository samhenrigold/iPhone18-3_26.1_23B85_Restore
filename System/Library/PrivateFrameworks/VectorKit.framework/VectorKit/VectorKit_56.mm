__n128 md::PolylinePixelHiker::resetPosition(md::PolylinePixelHiker *this, double a2)
{
  *(this + 192) = 0;
  md::LabelLineResolvedPosition::ensureValidLinePosition((this + 376), a2);
  v4 = *(this + 47);
  v3 = *(this + 48);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 68) = v4;
  v5 = *(this + 69);
  *(this + 69) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *(this + 35) = *(this + 392);
  result = *(this + 404);
  *(this + 572) = result;
  *(this + 8) = 1;
  return result;
}

float md::PolylinePixelHiker::enablePathRetraceCheck(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  *(a1 + 772) = 1;
  do
  {
    result = *(a2 + v2);
    *(a1 + 744 + v2) = result;
    v2 += 4;
  }

  while (v2 != 12);
  return result;
}

uint64_t md::LabelLinePosition::moveToPreviousPoint(md::LabelLinePosition *this)
{
  result = md::LabelLinePosition::getPointCoordinateAtOffset(this, -1, this + 32);
  if (result)
  {
    v3 = *(this + 16);
    v4 = *(*(this + 2) + 8);
    v5 = *(*(this + 2) + 16) - v4;
    v6 = v4 + 16 * v3;
    if (v3 >= v5 >> 4)
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  *(this + 3) = v6;
  return result;
}

uint64_t md::PolylinePixelHiker::moveAlongEdgeInDirection(md::PolylinePixelHiker *this, int a2, md::LabelPoint *a3)
{
  v5 = (this + 544);
  if (a2)
  {
    md::LabelLinePosition::moveToNextPoint(v5);
    result = md::LabelLinePosition::pointAtOffset((this + 544), 1);
    if (!result)
    {
      return result;
    }

    for (i = 0; i != 24; i += 8)
    {
      *(a3 + i) = *(result + i);
    }
  }

  else
  {
    md::LabelLinePosition::moveToPreviousPoint(v5);
    result = md::LabelLinePosition::pointExists((this + 544));
    if (!result)
    {
      return result;
    }

    result = (*(***(this + 71) + 24))(**(this + 71), *(this + 289));
    for (j = 0; j != 24; j += 8)
    {
      *(a3 + j) = *(result + j);
    }
  }

  *(a3 + 3) = *(result + 24);
  *(a3 + 4) = *(result + 32);
  v9 = *(result + 40);
  *(a3 + 43) = *(result + 43);
  *(a3 + 10) = v9;
  return 1;
}

double md::RouteSimplifier::worldPointForPolylineCoordinate(md::RouteSimplifier *this, const GEOComposedRoute *a2, const PolylineCoordinate *a3)
{
  v5 = a2;
  v6 = 0.0;
  if ([(GEOComposedRoute *)v5 pointCount])
  {
    v7 = *(this + 2);
    if (v7)
    {
      v8 = (this + 16);
      do
      {
        v9 = v7[4];
        v10 = v9 >= v5;
        v11 = v9 < v5;
        if (v10)
        {
          v8 = v7;
        }

        v7 = v7[v11];
      }

      while (v7);
      if (v8 != (this + 16) && v8[4] <= v5)
      {
        v12 = v8[5];
        [*(v12 + 88) pointAtRouteCoordinate:*a3];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v19 = *(v12 + 80);
        v20 = *v19;
        v21 = *(v19 + 8);
        if (v20 == v21)
        {
          goto LABEL_18;
        }

        while (*v20 != 0xAB4154EC82453679)
        {
          v20 += 5;
          if (v20 == v21)
          {
            goto LABEL_18;
          }
        }

        if (v20 == v21)
        {
LABEL_18:
          v24 = 0;
        }

        else
        {
          v24 = v20[3];
          v23 = v20[4];
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:nn200100](v23);
          }
        }

        *v31 = v14;
        *&v31[1] = v16;
        *&v31[2] = v18;
        v25 = (*(*v24 + 16))(v24, v31, this + 48);
        v26 = *&v25;
        if ((v25 & 0x100000000) == 0)
        {
          v27 = v18;
          v26 = v27;
        }

        v28 = *(this + 11) + v26 * *(this + 10);
        if (*(v12 + 128) == 1)
        {
          v29 = __sincos_stret(v14 * 0.0174532925);
          v6 = (v28 + 6378137.0 / sqrt(v29.__sinval * v29.__sinval * -0.00669437999 + 1.0)) * v29.__cosval * __sincos_stret(v16 * 0.0174532925).__cosval;
        }

        else
        {
          v30 = tan(v14 * 0.00872664626 + 0.785398163);
          v6 = v16 * 0.00277777778 + 0.5;
          log(v30);
        }
      }
    }
  }

  return v6;
}

uint64_t md::StandardRouteElevationSource::elevationForCoordinate(uint64_t a1, double *a2)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  v3 = a2[2];
  v4 = +[VKSharedResourcesManager sharedResources];
  Undulation = md::GeoidModel::getUndulation([v4 undulationModel], *a2, a2[1]);
  v6 = *&Undulation;
  if (!HIDWORD(Undulation))
  {
    v6 = 0.0;
  }

  *&v7 = v6 + v3;

  return v7 | 0x100000000;
}

float gm::Matrix<float,3,1>::normalized<int,void>(uint64_t a1)
{
  v1 = 0;
  v2 = 0.0;
  do
  {
    v2 = v2 + (*(a1 + v1) * *(a1 + v1));
    v1 += 4;
  }

  while (v1 != 12);
  v3 = 0;
  v4 = 1.0 / sqrtf(v2);
  do
  {
    *(&v6 + v3) = *(a1 + v3) * v4;
    v3 += 4;
  }

  while (v3 != 12);
  return v6;
}

uint64_t md::GeoidModel::getUndulation(md::GeoidModel *this, double a2, double a3)
{
  v3 = *this;
  if (*this == *(this + 1))
  {
    goto LABEL_9;
  }

  v4 = *(this + 8);
  if (v4 >= a2)
  {
    a2 = v4 + 1.0e-12;
  }

  if (a2 <= v4 || (v5 = *(this + 9), a2 > v5) || (v6 = a3 + floor(a3 * 0.00277777778) * -360.0, v7 = *(this + 10), v6 < v7) || v6 >= *(this + 11))
  {
LABEL_9:
    v18 = 0;
    v17 = 0;
  }

  else
  {
    v8 = v6;
    v9 = (v8 - v7) / *(this + 13);
    v10 = a2;
    v11 = (v5 - v10) / *(this + 12);
    v12 = vcvtms_s32_f32(v9);
    v13 = v9 - floorf(v9);
    v14 = *(this + 7);
    v15 = v12 + v14 * vcvtms_s32_f32(v11);
    v16 = *(v3 + 2 * v15) + ((*(v3 + 2 * v15 + 2) - *(v3 + 2 * v15)) * v13);
    v17 = COERCE_UNSIGNED_INT(*(this + 14) + ((v16 + ((truncf(*(v3 + 2 * (v15 + v14)) + (v13 * (*(v3 + 2 * (v15 + v14) + 2) - *(v3 + 2 * (v15 + v14))))) - v16) * (v11 - floorf(v11)))) * *(this + 15)));
    v18 = 0x100000000;
  }

  return v17 | v18;
}

void md::PolylinePixelHiker::~PolylinePixelHiker(md::PolylinePixelHiker *this)
{
  *this = &unk_1F2A165A8;
  v2 = *(this + 69);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *(this + 41) = &unk_1F2A168B0;
  v3 = *(this + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A165A8;
  v2 = *(this + 69);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *(this + 41) = &unk_1F2A168B0;
  v3 = *(this + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void *std::vector<md::PolylineCollider::VertexType>::__emplace_back_slow_path<md::PolylineCollider::VertexType const&>(uint64_t a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = v4 - v3;
  v7 = v6 + 1;
  if ((v6 + 1) >> 61)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 2 > v7)
  {
    v7 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v9 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v10 = (8 * v6);
  v11 = &v10[-(v4 - v3)];
  *v10 = *a2;
  v12 = v10 + 1;
  if (v3 != v4)
  {
    v13 = v11;
    do
    {
      v14 = *v3++;
      *v13++ = v14;
    }

    while (v3 != v4);
    v3 = *a1;
  }

  *a1 = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v12;
}

uint64_t md::CurvedTextLabelPart::updateTextLayoutOptions(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char *a7, char *a8)
{
  v8 = 0;
  v9 = 0.0;
  do
  {
    v9 = v9 + (*(a4 + v8) * *(a2 + v8));
    v8 += 4;
  }

  while (v8 != 12);
  v10 = v9;
  if (a5 == 2)
  {
    v11 = 0;
    v12 = 0.0;
    do
    {
      v12 = v12 + (*(a4 + v11) * *(a3 + v11));
      v11 += 4;
    }

    while (v11 != 12);
    v10 = -v12;
  }

  if (a6 == 1)
  {
    if (v10 >= -0.01)
    {
      goto LABEL_13;
    }

    v13 = 2;
  }

  else
  {
    if (v10 <= 0.01)
    {
      goto LABEL_13;
    }

    v13 = 1;
  }

  *a8 = v13;
LABEL_13:
  if (!result)
  {
    return result;
  }

  v14 = fabsf(v9);
  if (a5 == 1)
  {
    if (v14 >= 0.69711)
    {
      return result;
    }

    v15 = 2;
  }

  else
  {
    if (v14 <= 0.71711)
    {
      return result;
    }

    v15 = 1;
  }

  *a7 = v15;
  return result;
}

float md::CurvedTextLabelPart::hikerWidth(uint64_t a1, uint64_t a2)
{
  v4 = 0x8000007F7FFFFFLL;
  v2 = md::CurvedTextLabelPart::populateQuadOffsets(a1, a2, 0, 0, &v4);
  result = *(&v4 + 1) - *&v4;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

uint64_t md::LineTextWithAuxLabelPart::updateLayoutOffsets(uint64_t a1, uint64_t a2)
{
  v4 = **(a1 + 576);
  v5 = (*(*v4 + 344))(v4);
  (*(**(*(a1 + 576) + 8) + 344))();
  v7 = 664;
  if (!a2)
  {
    v7 = 632;
  }

  v8 = a1 + v7;
  v9 = *v8 + v5;
  v10 = v9 + v6;
  v11 = *(v8 + 25);
  v12 = *(v8 + 8);
  v13 = (*(*v12 + 80))(v12);
  v15 = v12[45];
  if (v12[45])
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  if (v15 == 2)
  {
    v16 = 0;
  }

  if (v13)
  {
    LOBYTE(v15) = v16;
  }

  v17 = 0.0;
  if (v15)
  {
    v14.n128_f32[0] = -v10;
    if (v11)
    {
      v14.n128_f32[0] = 0.0;
    }

    v18 = -0.5;
    if (v11)
    {
      v18 = 0.5;
    }

    v19 = v18 * v10;
    if (v15 == 1)
    {
      v17 = v19;
    }

    if (v15 == 2)
    {
      v10 = v14.n128_f32[0];
    }

    else
    {
      v10 = v17;
    }
  }

  else if (!v11)
  {
    v10 = 0.0;
  }

  (*(*v4 + 392))(v4, a2, v10, v14);
  v20.n128_f32[0] = -v9;
  if (!v11)
  {
    v20.n128_f32[0] = v9;
  }

  v20.n128_f32[0] = v10 + v20.n128_f32[0];
  v21 = *(**(*(a1 + 576) + 8) + 392);

  return v21(v20);
}

uint64_t md::CurvedTextLabelPart::populateQuadOffsets(uint64_t a1, int a2, uint64_t a3, uint64_t a4, float *a5)
{
  v5 = 592;
  if (!a2)
  {
    v5 = 576;
  }

  v6 = *(a1 + v5);
  v7 = *(v6 + 64);
  v8 = *(v6 + 72) - v7;
  if (!v8)
  {
    return 0;
  }

  v9 = **(v6 + 32);
  if (!v9 || *(v9 + 62) != 1)
  {
    return 0;
  }

  v13 = v8 >> 6;
  v14 = 628;
  if (a2 == 1)
  {
    v14 = 748;
  }

  v15 = 20;
  if (a2 == 1)
  {
    v15 = 68;
  }

  v16 = *(*(a1 + 32) + v15) * *(a1 + v14);
  v17 = 1168;
  if (!a2)
  {
    v17 = 976;
  }

  v18 = (a1 + v17);
  v19 = v16 / *(v9 + 48);
  if (*(a1 + v17 + 181) == 2)
  {
    v20 = v16 * 0.5;
    v21 = v19 * 0.5;
    if (v13 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v8 >> 6;
    }

    v23 = (a3 + 4);
    v24 = 0.0;
    v25 = -3.4028e38;
    v26 = 3.4028e38;
    v27 = 0.0;
    do
    {
      v28 = **v7;
      if (v28 && *(v28 + 62) == 1)
      {
        if (*(v28 + 60))
        {
          v29 = (v21 * v7[14]) * (*(v28 + 40) - *(v28 + 32));
          v30 = fmaxf(v20, v29);
        }

        else
        {
          v29 = v21 * (*(v28 + 44) - *(v28 + 36));
          v30 = v20;
        }

        v24 = (v24 + v27) + v30;
        if (a3 != a4)
        {
          *(v23 - 1) = v24;
          *v23 = 0.0;
        }

        v26 = fminf(v26, v24 - v29);
        v25 = fmaxf(v25, v24 + v29);
      }

      else
      {
        v30 = v27;
      }

      v23 += 2;
      v7 += 16;
      v27 = v30;
      --v22;
    }

    while (v22);
  }

  else
  {
    if (v13 <= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = v8 >> 6;
    }

    v33 = (a3 + 4);
    v34 = v7 + 14;
    v25 = -3.4028e38;
    v26 = 3.4028e38;
    do
    {
      v35 = *(v34 - 7);
      v36 = *(v34 - 3);
      v37 = *v34;
      if (a3 != a4)
      {
        v38 = *(v34 - 2);
        *(v33 - 1) = v36;
        *v33 = v38;
      }

      v39 = *v35;
      if (v39 && *(v39 + 62) == 1)
      {
        v40 = v37 * v19;
        v26 = fminf(v26, v36 + (*(v39 + 32) * v40));
        v25 = fmaxf(v25, v36 + (*(v39 + 40) * v40));
      }

      v33 += 2;
      v34 += 16;
      --v32;
    }

    while (v32);
  }

  if (v8 != 64 && (*(a1 + 1448) & 1) != 0)
  {
    v41 = v18[47];
    if (v41 > 0.0)
    {
      v42 = *(a1 + 1440);
      v43 = (v26 - v25) + v42 * 409.600006 * exp2f(*v18) * v18[9];
      if (v43 > 0.0)
      {
        v44 = *(v6 + 16);
        if (*(*v44 + 131) == 1)
        {
          v45 = (v13 - 1);
          v46 = fminf(v43 / v45, v41);
          if (a3 != a4 && v13 >= 2)
          {
            v47 = (a3 + 8);
            for (i = 1; i != v13; ++i)
            {
              *v47 = *v47 + (v46 * i);
              v47 += 2;
            }
          }

LABEL_48:
          v25 = v25 + (v46 * v45);
          goto LABEL_56;
        }

        if (*(*v44 + 132) == 1)
        {
          v49 = *(v44 + 127);
          if (v49 >= 2)
          {
            v45 = (v49 - 1);
            v46 = fminf(v43 / v45, v41);
            if (a3 != a4 && v13 >= 2)
            {
              v50 = 0;
              v51 = *(v44 + 56);
              v52 = v13 - 1;
              v53 = (a3 + 8);
              v54 = (v51 + 69);
              do
              {
                v55 = *v54;
                v54 += 40;
                v50 += v55;
                *v53 = *v53 + (v46 * v50);
                v53 += 2;
                --v52;
              }

              while (v52);
            }

            goto LABEL_48;
          }
        }
      }
    }
  }

LABEL_56:
  if (a3 != a4)
  {
    v56 = a3 + 8 * v13;
    *v56 = v25;
    *(v56 + 4) = 0;
  }

  *a5 = v26;
  a5[1] = v25;
  return 1;
}

uint64_t md::CurvedTextLabelPart::setLayoutStartOffset(uint64_t result, int a2, float a3)
{
  v3 = 1168;
  if (!a2)
  {
    v3 = 976;
  }

  v4 = result + v3;
  if (*(v4 + 28) != a3)
  {
    *(v4 + 28) = a3;
    *(v4 + 179) = 1;
  }

  return result;
}

uint64_t md::MultipleShieldLabelPart::setLayoutStartOffset(uint64_t result, int a2, float a3)
{
  v3 = 664;
  if (!a2)
  {
    v3 = 632;
  }

  *(result + v3 + 20) = a3;
  return result;
}

uint64_t md::CurvedTextLabelPart::setLayoutInReverse(uint64_t result, int a2, char a3)
{
  v3 = 1168;
  if (!a2)
  {
    v3 = 976;
  }

  *(result + v3 + 183) = a3;
  return result;
}

uint64_t md::MultipleShieldLabelPart::setUseExternalLayoutOptions(uint64_t result, int a2, char a3)
{
  v3 = 664;
  if (!a2)
  {
    v3 = 632;
  }

  *(result + v3 + 30) = a3;
  return result;
}

uint64_t md::MultipleShieldLabelPart::setLayoutInReverse(uint64_t result, int a2, char a3)
{
  v3 = 664;
  if (!a2)
  {
    v3 = 632;
  }

  *(result + v3 + 29) = a3;
  return result;
}

uint64_t md::MultipleShieldLabelPart::placeShieldsOnPath(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, float32x2_t *a6, uint64_t a7)
{
  v11 = 664;
  if (!a2)
  {
    v11 = 632;
  }

  v12 = a1 + v11;
  Hiker = md::LabelPart::createHiker(v80, a1, a2, *(a1 + v11), a3);
  v14 = v80[0];
  (*(**&v80[0] + 88))(*&v80[0], Hiker);
  if ((*(*&v14 + 9) & 1) == 0)
  {
    goto LABEL_7;
  }

  if (*(v12 + 30) == 1)
  {
    *(*&v14 + 11) = *(v12 + 29);
    *(*&v14 + 8) = 1;
    (*(**&v14 + 56))(COERCE_DOUBLE(*&v14), *(v12 + 20));
    (*(**&v14 + 88))(COERCE_DOUBLE(*&v14));
    if ((*(*&v14 + 10) & 1) != 0 || ((*(**&v14 + 88))(COERCE_DOUBLE(*&v14)), (*(*&v14 + 9) & 1) == 0))
    {
LABEL_7:
      v15 = 9;
LABEL_8:
      (*(**&v14 + 8))(COERCE_DOUBLE(*&v14));
      return v15;
    }
  }

  else
  {
    (*(**&v14 + 88))(COERCE_DOUBLE(*&v14));
    *(*&v14 + 11) = *(*&v14 + 28) <= 0.0;
    *(*&v14 + 8) = 1;
    (*(*a1 + 344))(a1, a2);
    if (*(v12 + 28) == 2)
    {
      v17.n128_f32[0] = -v17.n128_f32[0];
    }

    else
    {
      if (*(v12 + 28))
      {
        goto LABEL_15;
      }

      v17.n128_f32[0] = v17.n128_f32[0] * -0.5;
    }

    (*(**&v14 + 32))(COERCE_DOUBLE(*&v14), v17);
  }

LABEL_15:
  memset(&v79[8], 0, 32);
  memset(&v78[8], 0, 72);
  *v78 = 0x3FF0000000000000;
  *&v78[40] = 0x3FF0000000000000;
  *v79 = 0x3FF0000000000000;
  *&v79[40] = 0x3FF0000000000000;
  if (*(a1 + 565) == 1)
  {
    v18 = 0;
    v19 = *(a3 + 328);
    v73 = 0;
    v76 = 0;
    v75 = 0uLL;
    v72 = 0uLL;
    v71 = v19;
    v74 = v19;
    v77 = v19;
    v20 = *(a1 + 16);
    v21 = &v62;
    v22 = &v71;
    do
    {
      v23 = 0;
      v24 = v21;
      do
      {
        *v24 = v22[v23];
        v24 += 8;
        v23 += 3;
      }

      while (v23 != 9);
      ++v18;
      v21 += 2;
      ++v22;
    }

    while (v18 != 3);
    v25 = 0;
    v26 = 408;
    if (!a2)
    {
      v26 = 616;
    }

    v27 = (v20 + v26);
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = *v27;
    v69 = *(v27 + 2);
    v70 = 0x3FF0000000000000;
    v28 = (a3 + 864);
    do
    {
      v29 = 0;
      v30 = &v62;
      do
      {
        v31 = 0;
        v32 = 0.0;
        v33 = v28;
        do
        {
          v34 = *v33;
          v33 += 4;
          v32 = v32 + *&v30[v31] * v34;
          v31 += 2;
        }

        while (v31 != 8);
        *(&v61[2 * v29++] + v25) = v32;
        v30 += 8;
      }

      while (v29 != 4);
      ++v25;
      ++v28;
    }

    while (v25 != 4);
    *&v78[64] = v61[4];
    *v79 = v61[5];
    *&v79[16] = v61[6];
    *&v79[32] = v61[7];
    *v78 = v61[0];
    *&v78[16] = v61[1];
    *&v78[32] = v61[2];
    *&v78[48] = v61[3];
  }

  v35 = *(a1 + 584) - *(a1 + 576);
  if (v35)
  {
    v55 = v12;
    v56 = a6;
    v36 = 0;
    v37 = v35 >> 3;
    if (v37 <= 1)
    {
      v37 = 1;
    }

    v59 = v37;
    do
    {
      v38 = *(*(a1 + 576) + 8 * v36);
      if ((*(*v38 + 744))(v38, a2))
      {
        v39 = (*(*v38 + 344))(v38, a2) * 0.5;
        (*(**&v14 + 40))(COERCE_DOUBLE(*&v14), v39);
        (*(**&v14 + 88))(COERCE_DOUBLE(*&v14));
        if (*(*&v14 + 9) != 1)
        {
          goto LABEL_7;
        }

        (*(**&v14 + 88))(COERCE_DOUBLE(*&v14));
        if (*(*&v14 + 10))
        {
          goto LABEL_7;
        }

        if (*(a1 + 565) == 1)
        {
          (*(**&v14 + 88))(COERCE_DOUBLE(*&v14));
          v40 = 0;
          *&v61[0] = *(*&v14 + 16);
          DWORD2(v61[0]) = *(*&v14 + 24);
          do
          {
            *(&v62 + v40) = *(v61 + v40);
            ++v40;
          }

          while (v40 != 3);
          v41.f64[0] = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v78, &v62);
          v41.f64[1] = v42;
          v43 = vcvt_f32_f64(v41);
        }

        else
        {
          (*(**&v14 + 88))(COERCE_DOUBLE(*&v14));
          v43 = *(*&v14 + 16);
          (*(**&v14 + 88))(COERCE_DOUBLE(*&v14));
          v44 = -*(*&v14 + 28);
          v62 = *(*&v14 + 32);
          v63 = v44;
          (*(*v38 + 168))(v38, a2, &v62);
        }

        *&v61[0] = vsub_f32(v43, *a6);
        v45 = *v38;
        if (a2)
        {
          (*(v45 + 120))(v38, a4, a5, a6, v61);
          v46 = 39;
        }

        else
        {
          v15 = (*(v45 + 80))(v38, a4, a6, v61);
          if (v15 != 37)
          {
            goto LABEL_50;
          }

          v46 = 9;
        }

        a6 = v56;
        v71 = vsub_f32(v43, *v56);
        v47 = gm::Box<float,2>::operator+(&v38[v46], &v71);
        v48 = 0;
        v62 = v47;
        v63 = v49;
        v64[0] = v50;
        v64[1] = v51;
        v52 = &v62;
        v53 = 1;
        do
        {
          v54 = v53;
          *(a7 + 4 * v48) = fminf(*v52, *(a7 + 4 * v48));
          *(a7 + 8 + 4 * v48) = fmaxf(*(a7 + 8 + 4 * v48), *&v64[v48]);
          v52 = &v63;
          v48 = 1;
          v53 = 0;
        }

        while ((v54 & 1) != 0);
        (*(**&v14 + 40))(COERCE_DOUBLE(*&v14), *(v55 + 16) + v39);
      }

      ++v36;
    }

    while (v36 != v59);
  }

  v15 = 37;
LABEL_50:
  if (v14 != 0.0)
  {
    goto LABEL_8;
  }

  return v15;
}

void std::vector<unsigned short>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(result, a2 - v2);
  }
}

uint64_t md::MultipleShieldLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, float32x2_t *a3)
{
  v6 = *(a2 + 424);
  if ((*(a1 + 662) & 1) == 0 && (*(**(a1 + 632) + 168))(*(a1 + 632), *(*(a1 + 32) + 16)) && (*(**(a1 + 632) + 176))(*(a1 + 632), *(*(a1 + 32) + 16), 1.0))
  {
    *(a1 + 696) = 1;
  }

  v9 = xmmword_1B33B0730;
  v7 = md::MultipleShieldLabelPart::placeShieldsOnPath(a1, 0, v6, a2, 0, a3, &v9);
  md::CollisionObject::resetWithRects((a1 + 72), 1u);
  md::CollisionObject::addRect(a1 + 72, &v9);
  *(a1 + 280) = a3->i32[0];
  *(a1 + 284) = a3->i32[1];
  *(a1 + 104) = a3->i32[0];
  *(a1 + 108) = a3->i32[1];
  md::CollisionObject::setupShapeData(a1 + 72);
  return v7;
}

void *md::PolylineCollider::buildTopDownAABBTree(void *result, int a2, char *a3, char *a4)
{
  v6 = result;
  while (1)
  {
    v7 = xmmword_1B33B0730;
    v8 = a4 - a3;
    if (a4 != a3)
    {
      v9 = a3;
      v7 = xmmword_1B33B0730;
      do
      {
        v10 = *v9++;
        v11 = (v6[3] + 8 * v10);
        v12.i64[0] = *v11;
        v13.i64[0] = v11[1];
        v14.i64[0] = *v11;
        v15.i64[0] = v7.i64[0];
        v15.i64[1] = *v11;
        v12.i64[1] = vextq_s8(v7, v7, 8uLL).u64[0];
        v14.i64[1] = *v11;
        v16 = vbslq_s8(vcgtq_f32(v15, v12), v14, v7);
        v12.i64[0] = v13.i64[0];
        v12.i64[1] = v13.i64[0];
        v14.i64[0] = v16.i64[0];
        v14.i64[1] = v13.i64[0];
        v13.i64[1] = vextq_s8(v16, v16, 8uLL).u64[0];
        v7 = vbslq_s8(vcgtq_f32(v14, v13), v12, v16);
      }

      while (v9 != a4);
    }

    v17 = *v6 + 32 * a2;
    *(v17 + 4) = v7;
    v18 = v8 >> 1;
    if ((v8 & 0x1FFFFFFFCLL) == 0)
    {
      break;
    }

    v143 = a2;
    *(v17 + 2) = 1;
    *v17 = v18;
    *(v17 + 24) = 0;
    v19 = &a3[((v8 >> 1) + (v8 >> 63)) & 0xFFFFFFFFFFFFFFFELL];
    if (v19 != a4)
    {
      v21 = vmaxnm_f32(vsub_f32(*(v17 + 12), *(v17 + 4)), 0);
      v141 = &a3[((v8 >> 1) + (v8 >> 63)) & 0xFFFFFFFFFFFFFFFELL];
      v142 = *&vcgt_f32(vdup_lane_s32(v21, 1), v21) & 1;
      v22 = a3;
      v23 = a4;
      v140 = a3;
      do
      {
        v24 = (v23 - v22) >> 1;
        if (v24 < 2)
        {
          break;
        }

        if (v24 == 3)
        {
          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::PolylineCollider::partitionSegments(std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>,gm::Box<float,2> &)::$_0 &,std::__wrap_iter<unsigned short *>,0>(v22, v22 + 1, v23 - 1, v6[3], v142);
          v19 = v141;
          break;
        }

        if (v24 == 2)
        {
          v118 = *v22;
          v119 = v6[3];
          v120 = (v119 + 8 * *(v23 - 1));
          v145 = *v120;
          v121 = *(&v145 | (4 * v142));
          v144 = v120[1];
          v122 = (&v144 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v142 & 1)));
          v123 = (*v122 + v121) * 0.5;
          v124 = (v119 + 8 * v118);
          v145 = *v124;
          v125 = *(&v145 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v142 & 1)));
          v144 = v124[1];
          if (v123 < ((*v122 + v125) * 0.5))
          {
            v126 = *v22;
            *v22 = *(v23 - 1);
            *(v23 - 1) = v126;
          }

          break;
        }

        v25 = (&v145 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v142 & 1)));
        v26 = (&v144 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v142 & 1)));
        v27 = (&v144 | (4 * v142));
        if (v24 <= 7)
        {
          for (; v22 != (v23 - 1); v22 += 2)
          {
            if (v22 != v23)
            {
              v127 = v22 + 2;
              if (v22 + 2 != v23)
              {
                v128 = v6[3];
                v129 = *v22;
                v130 = v22;
                v131 = (v22 + 2);
                do
                {
                  v133 = *v131++;
                  v132 = v133;
                  v134 = (v128 + 8 * v133);
                  v145 = *v134;
                  v135 = *v25;
                  v144 = v134[1];
                  v136 = (*v26 + v135) * 0.5;
                  v137 = (v128 + 8 * v129);
                  v145 = *v137;
                  v138 = *v25;
                  v144 = v137[1];
                  if (v136 < ((*v27 + v138) * 0.5))
                  {
                    v129 = v132;
                    v130 = v127;
                  }

                  v127 = v131;
                }

                while (v131 != v23);
                if (v130 != v22)
                {
                  v139 = *v22;
                  *v22 = *v130;
                  *v130 = v139;
                }
              }
            }
          }

          break;
        }

        v28 = &v22[v24 & 0x7FFFFFFFFFFFFFFELL];
        v29 = v23 - 1;
        v30 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::PolylineCollider::partitionSegments(std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>,gm::Box<float,2> &)::$_0 &,std::__wrap_iter<unsigned short *>,0>(v22, v28, v23 - 1, v6[3], v142);
        v31 = *v28;
        v32 = v6[3];
        v33 = (v32 + 8 * *v22);
        v145 = *v33;
        v34 = *v25;
        v144 = v33[1];
        v35 = (*v26 + v34) * 0.5;
        v36 = (v32 + 8 * v31);
        v37 = *v36;
        v145 = *v36;
        v38 = (&v145 | (4 * v142));
        v39 = *v38;
        v40 = *(v36 + 2);
        v41 = *(v36 + 3);
        v144 = __PAIR64__(v41, v40);
        if (v35 >= ((*(&v144 + v142) + v39) * 0.5))
        {
          v42 = (v23 - 2);
          v19 = v141;
          while (v42 != v22)
          {
            v43 = v42;
            v44 = *v42;
            v42 -= 2;
            v45 = (v32 + 8 * v44);
            v145 = *v45;
            v46 = *v25;
            v144 = v45[1];
            v145 = v37;
            v47 = (*v26 + v46) * 0.5;
            v48 = *v38;
            v144 = __PAIR64__(v41, v40);
            if (v47 < ((*(&v144 + v142) + v48) * 0.5))
            {
              v49 = *v22;
              *v22 = *v43;
              *v43 = v49;
              if (v30)
              {
                v30 = 2;
              }

              else
              {
                v30 = 1;
              }

              v29 = v43;
              goto LABEL_22;
            }
          }

          v83 = (v22 + 2);
          v84 = *v29;
          v85 = (v32 + 8 * *v22);
          v145 = *v85;
          v86 = *v25;
          v144 = v85[1];
          v87 = (*v26 + v86) * 0.5;
          v88 = (v32 + 8 * v84);
          v145 = *v88;
          v89 = *v25;
          v144 = v88[1];
          if (v87 >= ((*v27 + v89) * 0.5))
          {
            a3 = v140;
            if (v83 == v29)
            {
              break;
            }

            while (1)
            {
              v98 = *v83;
              v99 = (v32 + 8 * *v22);
              v145 = *v99;
              v100 = *v25;
              v144 = v99[1];
              v101 = (*v26 + v100) * 0.5;
              v102 = (v32 + 8 * v98);
              v145 = *v102;
              v103 = *v25;
              v144 = v102[1];
              if (v101 < ((*v27 + v103) * 0.5))
              {
                break;
              }

              if (++v83 == v29)
              {
                goto LABEL_7;
              }
            }

            v104 = *v83;
            *v83++ = *v29;
            *v29 = v104;
          }

          else
          {
            a3 = v140;
          }

          if (v83 == v29)
          {
            break;
          }

          while (1)
          {
            do
            {
              v75 = v83;
              v106 = (v32 + 8 * *v22);
              v107 = *v83++;
              v145 = *v106;
              v108 = *v25;
              v144 = v106[1];
              v109 = *v26 + v108;
              v110 = (v32 + 8 * v107);
              v145 = *v110;
              v111 = *v25;
              v144 = v110[1];
            }

            while ((v109 * 0.5) >= ((*v27 + v111) * 0.5));
            do
            {
              v112 = (v32 + 8 * *v22);
              v113 = *--v29;
              v145 = *v112;
              v114 = *v25;
              v144 = v112[1];
              v115 = *v26 + v114;
              v116 = (v32 + 8 * v113);
              v145 = *v116;
              v117 = *v25;
              v144 = v116[1];
            }

            while ((v115 * 0.5) < ((*v27 + v117) * 0.5));
            if (v75 >= v29)
            {
              break;
            }

            v105 = *v75;
            *v75 = *v29;
            *v29 = v105;
          }

          if (v75 > v141)
          {
            break;
          }
        }

        else
        {
          v19 = v141;
LABEL_22:
          v50 = (v22 + 2);
          if (v22 + 2 >= v29)
          {
            v52 = (v22 + 2);
          }

          else
          {
            v51 = (v22 + 2);
            while (1)
            {
              do
              {
                v52 = v51;
                v53 = *v51++;
                v54 = (v32 + 8 * v53);
                v55 = *v28;
                v145 = *v54;
                v56 = *v25;
                v144 = v54[1];
                v57 = *v26 + v56;
                v58 = (v32 + 8 * v55);
                v145 = *v58;
                v59 = *v25;
                v144 = v58[1];
              }

              while ((v57 * 0.5) < ((*v27 + v59) * 0.5));
              do
              {
                v60 = *--v29;
                v61 = (v32 + 8 * v60);
                v62 = *v28;
                v145 = *v61;
                v63 = *v25;
                v144 = v61[1];
                v64 = *v26 + v63;
                v65 = (v32 + 8 * v62);
                v145 = *v65;
                v66 = *v25;
                v144 = v65[1];
              }

              while ((v64 * 0.5) >= ((*v27 + v66) * 0.5));
              if (v52 >= v29)
              {
                break;
              }

              v67 = *v52;
              *v52 = *v29;
              *v29 = v67;
              ++v30;
              if (v28 == v52)
              {
                v28 = v29;
              }
            }
          }

          if (v52 != v28)
          {
            v68 = *v52;
            v69 = (v32 + 8 * *v28);
            v145 = *v69;
            v70 = *v25;
            v144 = v69[1];
            v71 = (*v26 + v70) * 0.5;
            v72 = (v32 + 8 * v68);
            v145 = *v72;
            v73 = *v25;
            v144 = v72[1];
            if (v71 < ((*v27 + v73) * 0.5))
            {
              v74 = *v52;
              *v52 = *v28;
              *v28 = v74;
              ++v30;
            }
          }

          a3 = v140;
          if (v52 == v19)
          {
            break;
          }

          if (!v30)
          {
            if (v52 <= v19)
            {
              v90 = v52 + 1;
              while (v90 != v23)
              {
                v91 = *(v90 - 1);
                v92 = v6[3];
                v93 = (v92 + 8 * *v90);
                v145 = *v93;
                v94 = *v25;
                v144 = v93[1];
                v95 = (*v26 + v94) * 0.5;
                v96 = (v92 + 8 * v91);
                v145 = *v96;
                v97 = *v25;
                v144 = v96[1];
                ++v90;
                if (v95 < ((*v27 + v97) * 0.5))
                {
                  goto LABEL_36;
                }
              }
            }

            else
            {
              while (v50 != v52)
              {
                v76 = *(v50 - 1);
                v77 = v6[3];
                v78 = (v77 + 8 * *v50);
                v145 = *v78;
                v79 = *v25;
                v144 = v78[1];
                v80 = (*v26 + v79) * 0.5;
                v81 = (v77 + 8 * v76);
                v145 = *v81;
                v82 = *v25;
                v144 = v81[1];
                ++v50;
                if (v80 < ((*v27 + v82) * 0.5))
                {
                  goto LABEL_36;
                }
              }
            }

            break;
          }

LABEL_36:
          if (v52 <= v19)
          {
            v75 = (v52 + 1);
          }

          else
          {
            v23 = v52;
            v75 = v22;
          }
        }

        v22 = v75;
      }

      while (v23 != v19);
    }

LABEL_7:
    v20 = a3;
    a3 = v19;
    result = md::PolylineCollider::buildTopDownAABBTree(v6, (2 * v143) | 1, v20, v19);
    a2 = 2 * v143 + 2;
  }

  *(v17 + 2) = 2;
  *v17 = v18;
  *(v17 + 24) = a3;
  return result;
}

uint64_t md::MultipleShieldLabelPart::setAlignment(uint64_t result, int a2, char a3)
{
  v3 = 664;
  if (!a2)
  {
    v3 = 632;
  }

  *(result + v3 + 28) = a3;
  return result;
}

uint64_t md::PolylinePixelHiker::setBasePositionOffset(md::PolylinePixelHiker *this, __n128 a2)
{
  *(this + 189) = a2.n128_u32[0];
  if (*(this + 11))
  {
    a2.n128_f32[0] = -a2.n128_f32[0];
  }

  result = (*(*this + 40))(this, a2);
  *(this + 192) = 0;
  return result;
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::PolylineCollider::partitionSegments(std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>,gm::Box<float,2> &)::$_0 &,std::__wrap_iter<unsigned short *>,0>(_WORD *a1, _WORD *a2, _WORD *a3, uint64_t a4, int a5)
{
  v5 = *a2;
  v6 = *a1;
  v7 = (a4 + 8 * v5);
  v8 = *v7;
  v33 = *v7;
  v9 = *(&v33 + a5);
  v11 = *(v7 + 2);
  v10 = *(v7 + 3);
  v32 = __PAIR64__(v10, v11);
  v12 = *(&v32 + a5) + v9;
  v13 = (a4 + 8 * v6);
  v14 = *v13;
  v32 = v13[1];
  v33 = v14;
  v15 = *a3;
  v16 = (a4 + 8 * v15);
  if ((v12 * 0.5) < ((*(&v32 + a5) + *(&v33 + a5)) * 0.5))
  {
    v17 = *v16;
    v32 = v16[1];
    v33 = v17;
    *&v17 = (*(&v32 + a5) + *(&v33 + a5)) * 0.5;
    v33 = v8;
    v18 = *(&v33 + a5);
    v32 = __PAIR64__(v10, v11);
    if (*&v17 >= ((*(&v32 + a5) + v18) * 0.5))
    {
      *a1 = v5;
      *a2 = v6;
      v27 = *a3;
      v28 = (a4 + 8 * v27);
      v29 = *v28;
      v32 = v28[1];
      v33 = v29;
      *&v29 = (*(&v32 + a5) + *(&v33 + a5)) * 0.5;
      v30 = *v13;
      v32 = v13[1];
      v33 = v30;
      if (*&v29 >= ((*(&v32 + a5) + *(&v33 + a5)) * 0.5))
      {
        return 1;
      }

      *a2 = v27;
    }

    else
    {
      *a1 = v15;
    }

    *a3 = v6;
    return 1;
  }

  v19 = *v16;
  v32 = v16[1];
  v33 = v19;
  *&v19 = (*(&v32 + a5) + *(&v33 + a5)) * 0.5;
  v33 = v8;
  v20 = *(&v33 + a5);
  v32 = __PAIR64__(v10, v11);
  if (*&v19 < ((*(&v32 + a5) + v20) * 0.5))
  {
    *a2 = v15;
    *a3 = v5;
    v21 = *a2;
    v22 = *a1;
    v23 = (a4 + 8 * v21);
    v24 = *v23;
    v32 = v23[1];
    v33 = v24;
    *&v24 = (*(&v32 + a5) + *(&v33 + a5)) * 0.5;
    v25 = (a4 + 8 * v22);
    v26 = *v25;
    v32 = v25[1];
    v33 = v26;
    if (*&v24 < ((*(&v32 + a5) + *(&v33 + a5)) * 0.5))
    {
      *a1 = v21;
      *a2 = v22;
    }

    return 1;
  }

  return 0;
}

double md::CollisionObject::resetWithRects(void **this, unsigned int a2)
{
  md::CollisionObject::resetShapes(this, a2);
  v4 = this[21];
  if (v4)
  {
    free(v4);
    v5 = 0;
    this[21] = 0;
    *(this + 45) = 0;
  }

  else
  {
    v5 = *(this + 45);
  }

  if (v5 < a2)
  {
    free(this[20]);
    v6 = malloc_type_malloc(16 * a2, 0x1000040451B5BE8uLL);
    this[20] = v6;
    if (v6)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    *(this + 45) = v7;
  }

  *(this + 44) = 0;
  result = 1.40444743e306;
  *this = xmmword_1B33B0730;
  return result;
}

void md::LabelNavEtaLabeler::extractPolylineOverlayInfo(md::LabelNavEtaLabeler *this, VKRouteInfo *a2, float a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = *(this + 13);
    v22 = v5;
    v7 = [(VKRouteInfo *)v5 route];
    v8 = (*(*v6 + 56))(v6, v7);

    if (v8)
    {
      v9 = (*(**(this + 13) + 128))(*(this + 13), v8);
      v11 = (*(**(this + 13) + 72))(*(this + 13), v8, a3);
      v12 = *(this + 53);
      if (v12)
      {
        v10 = v22;
        while (1)
        {
          while (1)
          {
            v13 = v12;
            v14 = v12[4];
            if (v14 <= v22)
            {
              break;
            }

            v12 = *v13;
            v15 = v13;
            if (!*v13)
            {
              goto LABEL_13;
            }
          }

          if (v14 >= v22)
          {
            break;
          }

          v12 = v13[1];
          if (!v12)
          {
            v15 = v13 + 1;
            goto LABEL_13;
          }
        }

        v19 = v13;
      }

      else
      {
        v15 = (this + 424);
        v13 = (this + 424);
LABEL_13:
        v16 = mdm::zone_mallocator::instance(v10);
        v17 = pthread_rwlock_rdlock((v16 + 32));
        if (v17)
        {
          geo::read_write_lock::logFailure(v17, "read lock", v18);
        }

        v19 = malloc_type_zone_malloc(*v16, 0x30uLL, 0x10E00400C95DC9AuLL);
        atomic_fetch_add((v16 + 24), 1u);
        geo::read_write_lock::unlock((v16 + 32));
        v19[4] = v22;
        v19[5] = 0;
        *v19 = 0;
        v19[1] = 0;
        v19[2] = v13;
        *v15 = v19;
        v20 = **(this + 52);
        v21 = v19;
        if (v20)
        {
          *(this + 52) = v20;
          v21 = *v15;
        }

        std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(this + 53), v21);
        ++*(this + 55);
      }

      *(v19 + 10) = v9;
      *(v19 + 11) = v11;
    }
  }
}

void sub_1B2B8538C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  geo::read_write_lock::unlock((v11 + 32));

  _Unwind_Resume(a1);
}

void **md::CollisionObject::resetShapes(void **this, unsigned int a2)
{
  if (*(this + 48) < a2)
  {
    v3 = this;
    free(this[23]);
    this = malloc_type_calloc(a2, 0x18uLL, 0x1000040504FFAC1uLL);
    v3[23] = this;
    *(v3 + 48) = a2;
  }

  return this;
}

char *md::LabelNavEtaLabeler::featuresForRoute(md::LabelNavEtaLabeler *this, VKRouteInfo *a2)
{
  v3 = a2;
  v4 = [(VKRouteInfo *)v3 route];
  v5 = *(this + 33);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = this + 264;
  v7 = this + 264;
  do
  {
    v8 = *(v5 + 4);
    v9 = v8 >= v4;
    v10 = v8 < v4;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *&v5[8 * v10];
  }

  while (v5);
  if (v7 != v6 && v4 >= *(v7 + 4))
  {

    v11 = v7 + 40;
  }

  else
  {
LABEL_9:

    v11 = 0;
  }

  return v11;
}

float md::CollisionObject::addRect(uint64_t a1, _DWORD *a2)
{
  v2 = 0;
  v3 = *(a1 + 176);
  v4 = v3 + 1;
  v5 = (*(a1 + 160) + 16 * v3);
  *v5 = *a2;
  v5[1] = a2[1];
  v6 = a2[2];
  *(a1 + 176) = v4;
  v5[2] = v6;
  v5[3] = a2[3];
  v7 = a1 + 8;
  v8 = 1;
  do
  {
    *(a1 + 4 * v2) = fminf(*&a2[v2], *(a1 + 4 * v2));
    v9 = v8;
    result = fmaxf(*(v7 + 4 * v2), *&a2[v2 + 2]);
    *(v7 + 4 * v2) = result;
    v2 = 1;
    v8 = 0;
  }

  while ((v9 & 1) != 0);
  return result;
}

void *std::vector<md::RoadSignOrientation>::vector[abi:nn200100](void *a1, char *a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return a1;
}

uint64_t md::LineTextWithAuxLabelPart::needsCrossfade(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 713);
  v5 = *(a1 + 712) == v4 || v4 == 0;
  if (!v5)
  {
    return 1;
  }

  v6 = *(a1 + 715);
  if (*(a1 + 714) != v6 && v6 != 0)
  {
    return 1;
  }

  v8 = *(a1 + 576);
  v9 = *(a1 + 584);
  if (v8 == v9)
  {
    return 0;
  }

  v13 = v8 + 8;
  do
  {
    result = (*(**(v13 - 8) + 768))(*(v13 - 8), a2, a3, a4);
    if (result)
    {
      break;
    }

    v5 = v13 == v9;
    v13 += 8;
  }

  while (!v5);
  return result;
}

BOOL md::LabelLineResolvedPosition::moveOntoPathForZoom(md::LabelLineResolvedPosition *this, unsigned int a2, double a3)
{
  v4 = *this;
  *(this + 12) = *(v4 + 4);
  v62 = 0uLL;
  v55 = md::LabelLineStore::lineCountForZoom(v4, a2);
  if (!v55)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v57 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = -1;
  v11 = 1.0;
  v12 = -1;
  do
  {
    v13 = md::LabelLineStore::lineStartForZoom(&v59, *this, a2, v6);
    v14 = (*(***&v60[8] + 24))(**&v60[8], *&v60[18], v13);
    while (1)
    {
      v15 = v14;
      v14 = md::LabelLinePosition::pointAtOffset(&v59, 1);
      if (!v14)
      {
        break;
      }

      v16 = (this + 56);
      if (*(*this + 159) == 1)
      {
        md::LabelPoint::geocentricPoint(v16);
        md::LabelPoint::geocentricPoint(v15);
        md::LabelPoint::geocentricPoint(v14);
        v17 = gm::Matrix<double,3,1>::distanceSquaredToLineSegment<int,void>(this + 56, v15, v14, v58);
      }

      else
      {
        v18 = md::LabelPoint::mercatorPoint(v16);
        v19 = md::LabelPoint::mercatorPoint(v15);
        v20 = md::LabelPoint::mercatorPoint(v14);
        v21 = *v19;
        v22 = vsubq_f64(*v20, *v19);
        v23 = vmulq_f64(v22, v22);
        v24 = *v18;
        v25 = 0.0;
        if (vaddvq_f64(v23) > 1.0e-15)
        {
          v26 = vaddq_f64(vdupq_laneq_s64(v23, 1), v23);
          v27 = vmulq_f64(vsubq_f64(v24, v21), v22);
          v25 = fmin(fmax(vdivq_f64(vaddq_f64(vdupq_laneq_s64(v27, 1), v27), v26).f64[0], 0.0), 1.0);
        }

        v28 = vsubq_f64(v24, vmlaq_n_f64(v21, v22, v25));
        v17 = vaddvq_f64(vmulq_f64(v28, v28));
      }

      if (v17 >= 1.0)
      {
        goto LABEL_22;
      }

      v29 = v59;
      if (v59 && v61[0] == *(v59 + 16))
      {
        v30 = 0;
        if (*&v60[8] && (*&v60[18] & 0x80000000) == 0)
        {
          v30 = *(**&v60[8] + 34);
        }
      }

      else
      {
        v30 = 0;
      }

      v31 = v5 == v30 && v17 < v11;
      if (v31 || v5 < v30)
      {
        v32 = *(&v59 + 1);
        if (*(&v59 + 1))
        {
          atomic_fetch_add_explicit((*(&v59 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        }

        v62 = *v60;
        v10 = *&v60[16];
        v12 = *&v60[18];
        v9 = *&v60[20];
        v57 = v61[0];
        v8 = v32;
      }

      else
      {
LABEL_22:
        v29 = v7;
        v30 = v5;
        v17 = v11;
      }

      md::LabelLinePosition::moveToNextPoint(&v59);
      v7 = v29;
      v5 = v30;
      v11 = v17;
    }

    if (*(&v59 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v59 + 1));
    }

    ++v6;
  }

  while (v6 != v55);
  v33 = v11 != 1.0;
  if (v11 != 1.0)
  {
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v34 = *(this + 1);
    *this = v7;
    *(this + 1) = v8;
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    }

    *(this + 1) = v62;
    *(this + 16) = v10;
    *(this + 17) = v12;
    *(this + 9) = v9;
    *(this + 10) = v57;
    v35 = (*(***(this + 3) + 24))(**(this + 3), v12);
    v36 = md::LabelLinePosition::pointAtOffset(this, 1);
    v37 = (this + 56);
    if (*(*this + 159) == 1)
    {
      md::LabelPoint::geocentricPoint(v37);
      md::LabelPoint::geocentricPoint(v35);
      md::LabelPoint::geocentricPoint(v36);
      v38 = gm::Matrix<double,3,1>::nearestPointOffsetAlongLineSegment<int,void>(this + 56, v35, v36);
    }

    else
    {
      v39 = md::LabelPoint::mercatorPoint(v37);
      v40 = md::LabelPoint::mercatorPoint(v35);
      v41 = vsubq_f64(*md::LabelPoint::mercatorPoint(v36), *v40);
      v42 = vmulq_f64(v41, v41);
      v38 = 0.0;
      if (vaddvq_f64(v42) > 1.0e-15)
      {
        v43 = vmulq_f64(vsubq_f64(*v39, *v40), v41);
        v38 = fmin(fmax(vdivq_f64(vaddq_f64(vdupq_laneq_s64(v43, 1), v43), vaddq_f64(vdupq_laneq_s64(v42, 1), v42)).f64[0], 0.0), 1.0);
      }
    }

    v44 = v38;
    md::LabelPoint::lerped(&v59, v35, v44, v36);
    *(this + 104) = v59;
    *(this + 15) = *v60;
    *(this + 8) = *&v60[8];
    *(this + 36) = v61[0];
    *(this + 147) = *(v61 + 3);
    *(this + 9) = v44;
    *&v58[0] = *&md::LabelPoint::vectorToPoint(v35, v36, *(*this + 159));
    v58[1] = v45;
    v58[2] = v46;
    v47 = gm::Matrix<double,3,1>::normalized<int,void>(v58);
    v48 = 0;
    *&v59 = v47;
    *(&v59 + 1) = v49;
    *v60 = v50;
    do
    {
      v51 = *&v60[8 * v48 - 16];
      *(&v58[3] + ++v48) = v51;
    }

    while (v48 != 3);
    v52 = 0;
    v53 = 0.0;
    do
    {
      v53 = v53 + (*(this + v52 + 152) * *(&v58[3] + v52 + 4));
      v52 += 4;
    }

    while (v52 != 12);
    *(this + 165) = v53 < 0.0;
    *(this + 164) = a2;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  return v33;
}

void sub_1B2B85B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  _Unwind_Resume(exception_object);
}

float md::LabelNavEtaLabeler::animationCompletionPercentage(md::LabelNavEtaLabeler *this, VKRouteInfo *a2)
{
  v3 = a2;
  v4 = *(this + 53);
  v5 = 0.0;
  if (v4)
  {
    v6 = (this + 424);
    do
    {
      v7 = *(v4 + 4);
      v8 = v7 >= v3;
      v9 = v7 < v3;
      if (v8)
      {
        v6 = v4;
      }

      v4 = *&v4[8 * v9];
    }

    while (v4);
    if (v6 != (this + 424) && *(v6 + 4) <= v3)
    {
      v5 = v6[10];
    }
  }

  return v5;
}

uint64_t geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::operator[](uint64_t *a1, id *a2)
{
  v37[3] = *MEMORY[0x1E69E9840];
  j = *a1;
  for (i = a1[1]; j != i; i = a1[1])
  {
    if (md::RouteRangeAnnotationRequest::operator==(a2, j))
    {
      if (j != a1[1])
      {
        return j + 48;
      }

      break;
    }

    j += 72;
  }

  v32 = &unk_1F29F1180;
  v33 = 0;
  v34 = *a2;
  v35 = a2[1];
  std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::map[abi:nn200100](v36, (a2 + 2));
  geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v37, &v32);
  for (j = *a1; ; j += 72)
  {
    v6 = a1[1];
    if (j == v6)
    {
      break;
    }

    if (md::RouteRangeAnnotationRequest::operator==(&v34, j))
    {
      v6 = a1[1];
      if (j != v6)
      {
        goto LABEL_31;
      }

      break;
    }
  }

  v7 = a1[2];
  if (v6 >= v7)
  {
    v9 = 0x8E38E38E38E38E39 * ((v6 - *a1) >> 3);
    if (v9 + 1 > 0x38E38E38E38E38ELL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0x8E38E38E38E38E39 * ((v7 - *a1) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x1C71C71C71C71C7)
    {
      v12 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v12 = v11;
    }

    v31 = a1;
    if (v12)
    {
      if (v12 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v28 = 0;
    v29 = 72 * v9;
    std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::pair[abi:nn200100]((72 * v9), &v34);
    v30 = 72 * v9 + 72;
    v13 = *a1;
    v14 = a1[1];
    v15 = v29 + *a1 - v14;
    if (*a1 != v14)
    {
      v16 = 0;
      do
      {
        v17 = (v13 + v16);
        v18 = v15 + v16;
        v19 = *(v13 + v16);
        *v17 = 0;
        v17[1] = 0;
        *v18 = v19;
        *(v18 + 16) = *(v13 + v16 + 16);
        v20 = (v13 + v16 + 24);
        v21 = *v20;
        *(v15 + v16 + 24) = *v20;
        v22 = v15 + v16 + 24;
        *(v18 + 32) = *(v13 + v16 + 32);
        v23 = *(v13 + v16 + 40);
        *(v18 + 40) = v23;
        if (v23)
        {
          *(v21 + 16) = v22;
          v17[2] = v20;
          *v20 = 0;
          v17[5] = 0;
        }

        else
        {
          *(v18 + 16) = v22;
        }

        geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v15 + v16 + 48, v13 + v16 + 48);
        v16 += 72;
      }

      while (v13 + v16 != v14);
      do
      {
        std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::destroy[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,void,0>(v13);
        v13 += 72;
      }

      while (v13 != v14);
    }

    v24 = *a1;
    *a1 = v15;
    v25 = a1[2];
    v27 = v30;
    *(a1 + 1) = v30;
    *&v30 = v24;
    *(&v30 + 1) = v25;
    v28 = v24;
    v29 = v24;
    std::__split_buffer<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::~__split_buffer(&v28);
    v8 = v27;
  }

  else
  {
    std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::pair[abi:nn200100](v6, &v34);
    v8 = (v6 + 9);
    a1[1] = (v6 + 9);
  }

  a1[1] = v8;
  j = v8 - 72;
LABEL_31:
  v37[0] = &unk_1F29F1180;

  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v36[1]);
  v32 = &unk_1F29F1180;

  return j + 48;
}

void sub_1B2B85F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, void *a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(a22);

  _Unwind_Resume(a1);
}

float md::StandardRouteOverlayCache::animationCompletionPercentage(VKPolylineOverlay *this, VKPolylineOverlay *a2)
{
  md::StandardRouteOverlayCache::getInternalOverlay(&v4, this, a2);
  if (v4)
  {
    v2 = 1.0;
    if (*(v4 + 857) == 1)
    {
      v2 = *(v4 + 832);
    }
  }

  else
  {
    v2 = 0.0;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return v2;
}

void md::StandardRouteOverlayCache::getInternalOverlay(md::StandardRouteOverlayCache *this, VKPolylineOverlay *a2, void *a3)
{
  v5 = a3;
  v25 = v5;
  isa = a2[1].super.isa;
  if (isa)
  {
    v7 = 0x9DDFEA08EB382D69 * ((8 * (v5 & 0x1FFFFFFF) + 8) ^ HIDWORD(v5));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(v5) ^ (v7 >> 47) ^ v7);
    v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
    v10 = vcnt_s8(isa);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = v9;
      if (v9 >= isa)
      {
        v11 = v9 % isa;
      }
    }

    else
    {
      v11 = v9 & (isa - 1);
    }

    v12 = *(a2->_traffic + v11);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v9 == v14)
        {
          if (i[2] == v5)
          {
            v23 = i[4];
            *this = i[3];
            *(this + 1) = v23;
            if (!v23)
            {
              goto LABEL_30;
            }

LABEL_29:
            atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
            goto LABEL_30;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v14 >= isa)
            {
              v14 %= isa;
            }
          }

          else
          {
            v14 &= isa - 1;
          }

          if (v14 != v11)
          {
            break;
          }
        }
      }
    }
  }

  v24 = v5;
  cap = a2[1]._splitSections.__cap_;
  if (!cap)
  {
LABEL_27:
    *this = 0;
    *(this + 1) = 0;
    v5 = v24;
    goto LABEL_30;
  }

  while (1)
  {
    end = cap[1].end;
    v19 = *end;
    v17 = end + 1;
    v18 = v19;
    if (v19 != v17)
    {
      break;
    }

LABEL_26:
    cap = cap->start;
    if (!cap)
    {
      goto LABEL_27;
    }
  }

  while (!geo::_retain_ptr<VKPolylineOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(v18[4] + 144), &v25))
  {
    v20 = v18[1];
    if (v20)
    {
      do
      {
        v21 = v20;
        v20 = *v20;
      }

      while (v20);
    }

    else
    {
      do
      {
        v21 = v18[2];
        v22 = *v21 == v18;
        v18 = v21;
      }

      while (!v22);
    }

    v18 = v21;
    if (v21 == v17)
    {
      goto LABEL_26;
    }
  }

  v23 = v18[5];
  *this = v18[4];
  *(this + 1) = v23;
  v5 = v24;
  if (v23)
  {
    goto LABEL_29;
  }

LABEL_30:
}

uint64_t geo::_retain_ptr<VKPolylineOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(void *a1, void **a2)
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

float md::StandardRouteOverlayCache::routeLineHalfWidthAtZ(VKPolylineOverlay *this, VKPolylineOverlay *a2, float a3)
{
  md::StandardRouteOverlayCache::getInternalOverlay(&v10, this, a2);
  v4 = 0.0;
  if (v10)
  {
    v5 = *(v10 + 504);
    if (v5)
    {
      v6 = *(v5 + 256);
      v7 = *(v5 + 264);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v12, v6, v7);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      if (v15 == 1)
      {
        md::RouteLineSection::halfWidthAtZoom(&v12, a3);
        v4 = v8;
        if (v15)
        {
          (*(*v12 + 56))(v12);
        }
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v14);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
      }
    }
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  return v4;
}

void sub_1B2B863F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::Logic<md::DisplayLinkVerificationLogic,md::DisplayLinkVerificationContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<md::CameraContext>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
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
      return (*(*v5 + 136))(v5, a2, v7, v3);
    }
  }

  return result;
}

void md::LabelCollider::addCollidableItem(md::LabelCollider *this, md::LabelCollidableItem *a2)
{
  v4 = gm::OBRect<float>::axisAlignedBoundingRect(a2 + 2);
  v5 = 0;
  v6 = 0;
  v8 = *(this + 8);
  v7 = *(this + 9);
  v9 = *(this + 10);
  v13 = ((v11 - v7) * v8);
  v14 = ((v12 - v9) * v8);
  v15 = (v8 * (v4 - v7)) & ~((v8 * (v4 - v7)) >> 31);
  v16 = ((v10 - v9) * v8) & ~(((v10 - v9) * v8) >> 31);
  v17 = *(this + 12);
  v18 = *(this + 11) - 1;
  if (v18 >= v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = v18;
  }

  if (v17 - 1 >= v14)
  {
    v20 = v14;
  }

  else
  {
    v20 = (v17 - 1);
  }

  v21 = &v29;
  v29 = v15 | (v16 << 32);
  v30 = v19 | (v20 << 32);
  v31 = a2;
  do
  {
    v22 = *(&v30 + v6);
    v23 = *v21;
    if (v5)
    {
      break;
    }

    v5 = 1;
    v21 = (&v29 + 4);
    v6 = 1;
  }

  while (v22 >= v23);
  if (v22 >= v23)
  {
    *(a2 + 10) = 0;
    if (v16 <= v20)
    {
      v24 = *(this + 11);
      v25 = *(this + 7) + 24 * (v15 + v24 * v16);
      do
      {
        v26 = v15 - 1;
        v27 = v25;
        if (v15 <= v19)
        {
          do
          {
            md::SimpleBuffer<md::LabelCollidableItem *,20ul>::push_back(v27, &v31);
            v27 += 3;
            ++v26;
          }

          while (v26 < v19);
          v24 = *(this + 11);
        }

        v25 += 24 * v24;
        v28 = v16 < v20;
        LODWORD(v16) = v16 + 1;
      }

      while (v28);
    }

    ++*(this + 2);
  }
}

unint64_t *md::SimpleBuffer<md::LabelCollidableItem *,20ul>::push_back(unint64_t *result, void *a2)
{
  v3 = result;
  v4 = *result;
  v5 = result[1];
  if (*result < v5 || v5 > 2 * v4)
  {
    goto LABEL_8;
  }

  v6 = 2 * v4;
  if ((v6 | 1uLL) > 0x14)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 20;
  }

  v8 = (1 << -__clz(v7 - 1));
  result = malloc_type_realloc(result[2], 8 * v8, 0x2004093837F09uLL);
  if (result)
  {
    v3[1] = v8;
    v3[2] = result;
    v4 = *v3;
LABEL_8:
    *(v3[2] + 8 * v4) = *a2;
    *v3 = v4 + 1;
  }

  return result;
}

float gm::OBRect<float>::axisAlignedBoundingRect(float *a1)
{
  v1 = a1[4];
  v2 = *a1;
  if (v1 != 1.0)
  {
    v2 = fabsf(-(a1[5] * a1[1])) + fabsf(v2 * v1);
  }

  return a1[2] - v2;
}

void md::LabelNavLayoutContext::grabStateFromContext(md::LabelNavLayoutContext *this, md::LabelManager *a2, const LabelLayoutContext *a3, const md::LayoutContext *a4)
{
  v8 = md::LayoutContext::get<md::CameraContext>(*(a4 + 1));
  v9 = 0;
  *(this + 30) = *(a3 + 310);
  v10 = *(a3 + 158);
  *(this + 6) = *(a3 + 78);
  *(this + 14) = v10;
  v11 = (a3 + 864);
  do
  {
    v12 = 0.0;
    v13 = v11;
    for (i = 96; i != 120; i += 8)
    {
      v15 = *v13;
      v13 += 4;
      v12 = v12 + *(this + i) * v15;
    }

    *&__p[v9] = *(a3 + v9 + 120) + v12;
    ++v9;
    ++v11;
  }

  while (v9 != 4);
  __asm { FMOV            V1.2D, #1.0 }

  *__p = vmulq_f64(*__p, vdivq_f64(_Q1, vdupq_lane_s64(*(&v55 + 1), 0)));
  v21 = *__p;
  *(this + 31) = v21;
  md::LayoutContext::frameState(a4);
  *(this + 32) = *(a2 + 44) * *(v22 + 40);
  md::LayoutContext::frameState(a4);
  v24 = *(a2 + 44) * *(v23 + 32);
  md::LayoutContext::frameState(a4);
  v26 = *(a2 + 44) * *(v25 + 36);
  md::LayoutContext::frameState(a4);
  v28 = *(a2 + 44) * *(v27 + 40);
  md::LayoutContext::frameState(a4);
  v30 = *(a3 + 266) - (*(a2 + 44) * *(v29 + 44));
  v31 = *(a3 + 267) - v24;
  *(this + 8) = v26;
  *(this + 9) = v28;
  *(this + 10) = v30;
  *(this + 11) = v31;
  v32 = *(a3 + 266);
  v33 = *(a3 + 267) - v24;
  *(this + 12) = 0;
  *(this + 13) = v28;
  *(this + 14) = v32;
  *(this + 15) = v33;
  v34 = *(a3 + 267);
  v35 = *(a3 + 266);
  *(this + 20) = 0;
  *(this + 21) = v34 - v28;
  *(this + 22) = v35;
  *(this + 23) = v34;
  if (*(a3 + 8) == 1)
  {
    *this = v8[365];
    *(this + 1) = v8[366];
    *(this + 2) = v8[367];
    v36 = v8[368];
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0x3FF0000000000000;
    v36 = 1.0;
  }

  *(this + 3) = v36;
  v38 = *(a4 + 4);
  v37 = *(a4 + 5);
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    *(this + 17) = *(v38 + 64);
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  else
  {
    *(this + 17) = *(v38 + 64);
  }

  *(this + 18) = gdc::Context::context<md::AnchorContext>(*(a4 + 1));
  *(this + 216) = *(a3 + 8) ^ 1;
  *(this + 217) = *(a3 + 24);
  {
    md::LabelNavLayoutContext::grabStateFromContext(md::LabelManager &,md::LabelLayoutContext const&,md::LayoutContext const&)::$_0::operator() const(void)::cached_result = GEOConfigGetBOOL();
  }

  *(this + 218) = md::LabelNavLayoutContext::grabStateFromContext(md::LabelManager &,md::LabelLayoutContext const&,md::LayoutContext const&)::$_0::operator() const(void)::cached_result;
  v39 = *(a4 + 1);
  v40 = gdc::Context::get<md::StyleLogicContext>(v39);
  if (v40)
  {
    v41 = *(v40 + 112);
  }

  else
  {
    v41 = 4;
  }

  *(this + 219) = v41;
  v42 = gdc::Context::context<md::RouteLineContext>(v39);
  if (v42)
  {
    v43 = v42;
    std::unordered_map<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::shared_ptr<md::FlyoverDsmTileData>>>>::unordered_map(__p, (v42 + 1));
    std::set<unsigned char,std::greater<unsigned char>,std::allocator<unsigned char>>::set[abi:nn200100](&v57, v43 + 6);
  }

  else
  {
    *__p = 0u;
    v55 = 0u;
    v56 = 1065353216;
    v58 = 0;
    v59 = 0;
    v57 = &v58;
  }

  std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::clear(this + 152);
  v44 = __p[0];
  __p[0] = 0;
  v45 = *(this + 19);
  *(this + 19) = v44;
  if (v45)
  {
    operator delete(v45);
  }

  v46 = __p[1];
  v47 = v55;
  *(this + 21) = v55;
  *(this + 20) = v46;
  __p[1] = 0;
  v48 = *(&v55 + 1);
  *(this + 22) = *(&v55 + 1);
  *(this + 46) = v56;
  if (v48)
  {
    v49 = *(v47 + 8);
    if ((v46 & (v46 - 1)) != 0)
    {
      if (v49 >= v46)
      {
        v49 %= v46;
      }
    }

    else
    {
      v49 &= v46 - 1;
    }

    *(*(this + 19) + 8 * v49) = this + 168;
    v55 = 0uLL;
  }

  v50 = this + 200;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 25));
  v51 = v58;
  *(this + 24) = v57;
  *(this + 25) = v51;
  v52 = v59;
  *(this + 26) = v59;
  if (v52)
  {
    v51[2] = v50;
    v57 = &v58;
    v58 = 0;
    v59 = 0;
    v51 = 0;
  }

  else
  {
    *(this + 24) = v50;
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v51);
  std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::__deallocate_node(v55);
  v53 = __p[0];
  __p[0] = 0;
  if (v53)
  {
    operator delete(v53);
  }
}

void md::NamedLabelDedupingGroup::prepareForCollision(md::NamedLabelDedupingGroup *this, md::LabelManager *a2)
{
  *(this + 6) = *(this + 5);
  *(this + 9) = 0;
  v4 = v29;
  v25 = v29;
  v26 = v29;
  v27 = v29;
  v28 = 5;
  v5 = *(this + 1);
  v6 = *(this + 2);
  if (v5 == v6)
  {
    v8 = v29;
  }

  else
  {
    do
    {
      v7 = *v5;
      if ((*(**v5 + 16))(*v5))
      {
        *&v23 = v7;
        geo::small_vector_base<md::Label *>::push_back(&v25, &v23);
      }

      ++v5;
    }

    while (v5 != v6);
    v4 = v25;
    v8 = v26;
  }

  if (v8 - v4 == 8)
  {
    v9 = v4->i64[0];
LABEL_9:
    *(this + 9) = v9;
    goto LABEL_26;
  }

  v10 = (v8 - v4) >> 3;
  if (v10 >= 2)
  {
    v11 = *(a2 + 53);
    v23 = *(v11 + 1120);
    v24 = vmla_f32(*(v11 + 1072), 0x3F0000003F000000, vsub_f32(*(v11 + 1080), *(v11 + 1072)));
    v12 = 126 - 2 * __clz(v10);
    if (v8 == v4)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    std::__introsort<std::_ClassicAlgPolicy,md::NamedLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,false>(v4, v8, &v23, v13, 1);
    v4 = v25;
    v14 = v26;
    if (v25 == v26)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v9 = 0;
    v15 = 0;
    v16 = v25;
    while (1)
    {
      v17 = v16->i64[0];
      *(v16->i64[0] + 32) = v15;
      if (v9)
      {
        v18 = *(v17 + 752);
        v19 = *(v9 + 752);
        v20 = v18 < v19;
        if (v18 == v19 && (v21 = *(v17 + 196), v22 = *(v9 + 196), v20 = v21 < v22, v21 == v22))
        {
          if (v17 >= v9)
          {
            goto LABEL_22;
          }
        }

        else if (!v20)
        {
          goto LABEL_22;
        }
      }

      v9 = v17;
LABEL_22:
      v16 = (v16 + 8);
      ++v15;
      if (v16 == v14)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_26:
  if (v4 != v27)
  {
    free(v4);
  }
}

void sub_1B2B86D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14)
{
  if (a12 != a14)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelSpacingDedupingGroup *this, md::LabelManager *a2)
{
  *(this + 6) = *(this + 5);
  *(this + 9) = 0;
  *(this + 24) = 0;
  v3 = *(a2 + 53);
  if (*(v3 + 424) > 0.0)
  {
    v4 = *(this + 11);
    if (v4)
    {
      v6 = std::__shared_weak_count::lock(v4);
      if (v6)
      {
        v7 = v6;
        v8 = *(this + 10);
        if (v8)
        {
          v9 = (*(*v8 + 312))(v8, *(v3 + 29), v3);
          *(this + 24) = (*(a2 + 44) * v9) * (*(a2 + 44) * v9);
        }

        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }
    }
  }

  v11 = *(this + 1);
  v10 = *(this + 2);
  if (v11 != v10)
  {
    while (((*(**v11 + 16))() & 1) != 0)
    {
      ++v11;
LABEL_10:
      if (v11 == v10)
      {
        goto LABEL_17;
      }
    }

    v12 = v10 - 1;
    while (v12 != v11)
    {
      v10 = v12;
      v13 = *v12--;
      if ((*(*v13 + 16))(v13))
      {
        v14 = *v11;
        *v11++ = *v10;
        *v10 = v14;
        goto LABEL_10;
      }
    }
  }

  v10 = v11;
LABEL_17:
  v15 = *(this + 1);
  v16 = 126 - 2 * __clz((v10 - v15) >> 3);
  if (v10 == v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  result = std::__introsort<std::_ClassicAlgPolicy,md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,false>(*(this + 1), v10, v17, 1);
  v19 = *(this + 2);
  v20 = *(this + 1);
  if (v20 != v19)
  {
    v21 = 0;
    v22 = *(this + 1);
    do
    {
      v23 = *v22++;
      *(v23 + 32) = v21;
      *(v23 + 36) = v21++;
    }

    while (v22 != v19);
    if (v10 - v15 >= 8)
    {
      if (v10 == v15 || (v24 = (v15 + 8), (v15 + 8) == v10))
      {
        v20 = v15;
      }

      else
      {
        v20 = v15;
        v25 = (v15 + 8);
        do
        {
          v26 = *v25++;
          result = md::Label::collisionPriorityCmp(v26, *v20);
          if (result)
          {
            v20 = v24;
          }

          v24 = v25;
        }

        while (v25 != v10);
      }
    }

    *(this + 9) = *v20;
  }

  return result;
}

void *md::LabelDedupingGroup::prepareForCollision(void *this, md::LabelManager *a2)
{
  this[6] = this[5];
  this[9] = 0;
  return this;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    if (v10 > 2)
    {
      if (v10 != 3)
      {
        if (v10 == 4)
        {

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(v9, v9 + 1, v9 + 2, a2 - 1);
        }

        if (v10 == 5)
        {
          result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(v9, v9 + 1, v9 + 2, v9 + 3);
          v97 = *v8;
          v98 = v9[3];
          v99 = *(*v8 + 844);
          if ((v99 == 2) != (*(v98 + 844) == 2))
          {
            if (v99 != 2)
            {
              return result;
            }
          }

          else if (*(v97 + 692) >= *(v98 + 692))
          {
            return result;
          }

          v9[3] = v97;
          *v8 = v98;
          v158 = v9[2];
          v157 = v9[3];
          v159 = *(v157 + 844);
          if ((v159 == 2) != (*(v158 + 844) == 2))
          {
            if (v159 != 2)
            {
              return result;
            }

            v9[2] = v157;
            v9[3] = v158;
            v160 = v9[1];
            if (*(v160 + 844) == 2)
            {
              v161 = *(v157 + 692);
              goto LABEL_342;
            }

LABEL_334:
            v9[1] = v157;
            v9[2] = v160;
            v171 = *v9;
            if (*(*v9 + 844) == 2)
            {
              v161 = *(v157 + 692);
              goto LABEL_352;
            }
          }

          else
          {
            v161 = *(v157 + 692);
            if (v161 >= *(v158 + 692))
            {
              return result;
            }

            v9[2] = v157;
            v9[3] = v158;
            v160 = v9[1];
            if ((v159 == 2) != (*(v160 + 844) == 2))
            {
              if (v159 != 2)
              {
                return result;
              }

              goto LABEL_334;
            }

LABEL_342:
            if (v161 >= *(v160 + 692))
            {
              return result;
            }

            v9[1] = v157;
            v9[2] = v160;
            v171 = *v9;
            if ((v159 == 2) != (*(*v9 + 844) == 2))
            {
              if (v159 != 2)
              {
                return result;
              }
            }

            else
            {
LABEL_352:
              if (v161 >= *(v171 + 692))
              {
                return result;
              }
            }
          }

          *v9 = v157;
          v9[1] = v171;
          return result;
        }

        goto LABEL_10;
      }

      v101 = *v9;
      v103 = v9[1];
      v104 = *(v103 + 844);
      v105 = *(*v9 + 844);
      if ((v104 == 2) != (v105 == 2))
      {
        if (v104 != 2)
        {
          goto LABEL_222;
        }
      }

      else if (*(v103 + 692) >= *(v101 + 692))
      {
LABEL_222:
        v106 = *v8;
        if ((v104 == 2) != (*(*v8 + 844) == 2))
        {
          if (*(*v8 + 844) != 2)
          {
            return result;
          }
        }

        else if (*(v106 + 692) >= *(v103 + 692))
        {
          return result;
        }

        v9[1] = v106;
        *v8 = v103;
        v173 = *v9;
        v172 = v9[1];
        v174 = *(v172 + 844);
        if ((v174 == 2) != (*(*v9 + 844) == 2))
        {
          if (v174 != 2)
          {
            return result;
          }
        }

        else if (*(v172 + 692) >= *(v173 + 692))
        {
          return result;
        }

        *v9 = v172;
        v9[1] = v173;
        return result;
      }

      v162 = v104 == 2;
      v163 = *v8;
      if ((v162 ^ (*(*v8 + 844) == 2)))
      {
        if (*(*v8 + 844) != 2)
        {
LABEL_316:
          *v9 = v103;
          v9[1] = v101;
          v164 = *v8;
          if ((v105 == 2) != (*(*v8 + 844) == 2))
          {
            if (*(*v8 + 844) != 2)
            {
              return result;
            }
          }

          else if (*(v164 + 692) >= *(v101 + 692))
          {
            return result;
          }

          v9[1] = v164;
          goto LABEL_348;
        }
      }

      else if (*(v163 + 692) >= *(v103 + 692))
      {
        goto LABEL_316;
      }

      *v9 = v163;
LABEL_348:
      *v8 = v101;
      return result;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      v100 = *v8;
      v101 = *v9;
      v102 = *(*v8 + 844);
      if ((v102 == 2) != (*(*v9 + 844) == 2))
      {
        if (v102 != 2)
        {
          return result;
        }
      }

      else if (*(v100 + 692) >= *(v101 + 692))
      {
        return result;
      }

      *v9 = v100;
      goto LABEL_348;
    }

LABEL_10:
    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        return result;
      }

      v119 = (v10 - 2) >> 1;
      v120 = v119;
      while (2)
      {
        v121 = v120;
        if (v119 < v120)
        {
          goto LABEL_280;
        }

        v122 = (2 * v120) | 1;
        v123 = &v9[v122];
        if (2 * v121 + 2 >= v10)
        {
          goto LABEL_262;
        }

        v124 = v123[1];
        v125 = *(*v123 + 844);
        if ((v125 == 2) != (*(v124 + 844) == 2))
        {
          if (v125 != 2)
          {
LABEL_262:
            v126 = *v123;
            v127 = v9[v121];
            v128 = *(*v123 + 844);
            v129 = *(v127 + 844);
            result = v129 == 2;
            if ((v128 == 2) != (v129 == 2))
            {
              if (v128 == 2)
              {
                goto LABEL_280;
              }
            }

            else if (*(v126 + 692) < *(v127 + 692))
            {
              goto LABEL_280;
            }

            v9[v121] = v126;
            if (v119 < v122)
            {
LABEL_267:
              v130 = v123;
LABEL_279:
              *v130 = v127;
LABEL_280:
              v120 = v121 - 1;
              if (v121)
              {
                continue;
              }

              while (2)
              {
                v136 = 0;
                v137 = *v9;
                v138 = v9;
LABEL_282:
                v139 = v138;
                v140 = &v138[v136];
                v138 = v140 + 1;
                v141 = 2 * v136;
                v136 = (2 * v136) | 1;
                v142 = v141 + 2;
                if (v142 < v10)
                {
                  v145 = v140[2];
                  v143 = v140 + 2;
                  v144 = v145;
                  v146 = *(v143 - 1);
                  result = *(v146 + 844);
                  if ((result == 2) != (*(v145 + 844) == 2))
                  {
                    if (result != 2)
                    {
                      goto LABEL_288;
                    }
                  }

                  else if (*(v146 + 692) >= *(v144 + 692))
                  {
                    goto LABEL_288;
                  }

                  v138 = v143;
                  v136 = v142;
                }

LABEL_288:
                *v139 = *v138;
                if (v136 > ((v10 - 2) >> 1))
                {
                  if (v138 == --a2)
                  {
                    goto LABEL_302;
                  }

                  *v138 = *a2;
                  *a2 = v137;
                  v147 = (v138 - v9 + 8) >> 3;
                  v148 = v147 - 2;
                  if (v147 < 2)
                  {
                    goto LABEL_303;
                  }

                  v149 = v148 >> 1;
                  v150 = &v9[v148 >> 1];
                  v151 = *v150;
                  v137 = *v138;
                  v152 = *(*v150 + 844);
                  v153 = *(*v138 + 844);
                  result = v153 == 2;
                  if ((v152 == 2) == (v153 == 2))
                  {
                    if (*(v151 + 692) >= *(v137 + 692))
                    {
                      goto LABEL_303;
                    }

LABEL_295:
                    *v138 = v151;
                    if (v148 >= 2)
                    {
                      do
                      {
                        v154 = v149 - 1;
                        v149 = (v149 - 1) >> 1;
                        v138 = &v9[v149];
                        v155 = *v138;
                        if ((v153 == 2) != (*(*v138 + 844) == 2))
                        {
                          if (*(*v138 + 844) != 2)
                          {
                            goto LABEL_296;
                          }
                        }

                        else if (*(v155 + 692) >= *(v137 + 692))
                        {
                          goto LABEL_296;
                        }

                        *v150 = v155;
                        v150 = &v9[v149];
                      }

                      while (v154 > 1);
                    }

                    else
                    {
LABEL_296:
                      v138 = v150;
                    }

LABEL_302:
                    *v138 = v137;
                    goto LABEL_303;
                  }

                  if (v152 == 2)
                  {
                    goto LABEL_295;
                  }

LABEL_303:
                  if (v10-- <= 2)
                  {
                    return result;
                  }

                  continue;
                }

                goto LABEL_282;
              }
            }

            while (2)
            {
              v131 = 2 * v122;
              v122 = (2 * v122) | 1;
              v130 = &v9[v122];
              v132 = v131 + 2;
              if (v132 < v10)
              {
                v133 = v130[1];
                v134 = *(*v130 + 844);
                if ((v134 == 2) != (*(v133 + 844) == 2))
                {
                  if (v134 != 2)
                  {
                    goto LABEL_274;
                  }
                }

                else if (*(*v130 + 692) >= *(v133 + 692))
                {
                  goto LABEL_274;
                }

                ++v130;
                v122 = v132;
              }

LABEL_274:
              v135 = *v130;
              result = *(*v130 + 844) == 2;
              if ((v129 == 2) != (*(*v130 + 844) == 2))
              {
                if (*(*v130 + 844) == 2)
                {
                  goto LABEL_267;
                }
              }

              else if (*(v135 + 692) < *(v127 + 692))
              {
                goto LABEL_267;
              }

              *v123 = v135;
              v123 = v130;
              if (v119 < v122)
              {
                goto LABEL_279;
              }

              continue;
            }
          }
        }

        else if (*(*v123 + 692) >= *(v124 + 692))
        {
          goto LABEL_262;
        }

        break;
      }

      ++v123;
      v122 = 2 * v121 + 2;
      goto LABEL_262;
    }

    v11 = v10 >> 1;
    v12 = &v9[v10 >> 1];
    v13 = v12;
    if (v10 >= 0x81)
    {
      v14 = *v12;
      v15 = *v9;
      v16 = *(*v12 + 844);
      v17 = *(*v9 + 844);
      if ((v16 == 2) == (v17 == 2))
      {
        if (*(v14 + 692) < *(v15 + 692))
        {
          goto LABEL_24;
        }

LABEL_15:
        v18 = *v8;
        if ((v16 == 2) != (*(*v8 + 844) == 2))
        {
          if (*(*v8 + 844) != 2)
          {
            goto LABEL_55;
          }
        }

        else if (*(v18 + 692) >= *(v14 + 692))
        {
          goto LABEL_55;
        }

        *v12 = v18;
        *v8 = v14;
        v30 = *v12;
        v31 = *v9;
        v32 = *(*v12 + 844);
        if ((v32 == 2) != (*(*v9 + 844) == 2))
        {
          if (v32 != 2)
          {
            goto LABEL_55;
          }
        }

        else if (*(v30 + 692) >= *(v31 + 692))
        {
          goto LABEL_55;
        }

        *v9 = v30;
        *v12 = v31;
        goto LABEL_55;
      }

      if (v16 != 2)
      {
        goto LABEL_15;
      }

LABEL_24:
      v24 = v16 == 2;
      v25 = *v8;
      if (((v24 ^ (*(*v8 + 844) == 2)) & 1) == 0)
      {
        if (*(v25 + 692) < *(v14 + 692))
        {
          goto LABEL_44;
        }

LABEL_26:
        *v9 = v14;
        *v12 = v15;
        v26 = *v8;
        if ((v17 == 2) != (*(*v8 + 844) == 2))
        {
          if (*(*v8 + 844) != 2)
          {
            goto LABEL_55;
          }
        }

        else if (*(v26 + 692) >= *(v15 + 692))
        {
          goto LABEL_55;
        }

        *v12 = v26;
        goto LABEL_49;
      }

      if (*(*v8 + 844) != 2)
      {
        goto LABEL_26;
      }

LABEL_44:
      *v9 = v25;
LABEL_49:
      *v8 = v15;
LABEL_55:
      v36 = v11 - 1;
      v37 = v9[v11 - 1];
      v38 = v9[1];
      v39 = *(v37 + 844);
      v40 = *(v38 + 844);
      if ((v39 == 2) == (v40 == 2))
      {
        if (*(v37 + 692) < *(v38 + 692))
        {
          goto LABEL_61;
        }

LABEL_57:
        v41 = *(a2 - 2);
        if ((v39 == 2) != (*(v41 + 844) == 2))
        {
          if (*(v41 + 844) != 2)
          {
            goto LABEL_79;
          }
        }

        else if (*(v41 + 692) >= *(v37 + 692))
        {
          goto LABEL_79;
        }

        v9[v36] = v41;
        *(a2 - 2) = v37;
        v45 = v9[v36];
        v46 = v9[1];
        v47 = *(v45 + 844);
        if ((v47 == 2) != (*(v46 + 844) == 2))
        {
          if (v47 != 2)
          {
            goto LABEL_79;
          }
        }

        else if (*(v45 + 692) >= *(v46 + 692))
        {
          goto LABEL_79;
        }

        v9[1] = v45;
        v9[v36] = v46;
        goto LABEL_79;
      }

      if (v39 != 2)
      {
        goto LABEL_57;
      }

LABEL_61:
      v42 = v39 == 2;
      v43 = *(a2 - 2);
      if (((v42 ^ (*(v43 + 844) == 2)) & 1) == 0)
      {
        if (*(v43 + 692) < *(v37 + 692))
        {
          goto LABEL_71;
        }

LABEL_63:
        v9[1] = v37;
        v9[v36] = v38;
        v44 = *(a2 - 2);
        if ((v40 == 2) != (*(v44 + 844) == 2))
        {
          if (*(v44 + 844) != 2)
          {
            goto LABEL_79;
          }
        }

        else if (*(v44 + 692) >= *(v38 + 692))
        {
          goto LABEL_79;
        }

        v9[v36] = v44;
        goto LABEL_76;
      }

      if (*(v43 + 844) != 2)
      {
        goto LABEL_63;
      }

LABEL_71:
      v9[1] = v43;
LABEL_76:
      *(a2 - 2) = v38;
LABEL_79:
      v50 = v12[1];
      v48 = v12 + 1;
      v49 = v50;
      v51 = v9[2];
      v52 = *(v50 + 844);
      v53 = *(v51 + 844);
      if ((v52 == 2) == (v53 == 2))
      {
        if (*(v49 + 692) < *(v51 + 692))
        {
          goto LABEL_85;
        }

LABEL_81:
        v54 = *(a2 - 3);
        if ((v52 == 2) != (*(v54 + 844) == 2))
        {
          if (*(v54 + 844) != 2)
          {
            goto LABEL_101;
          }
        }

        else if (*(v54 + 692) >= *(v49 + 692))
        {
          goto LABEL_101;
        }

        *v48 = v54;
        *(a2 - 3) = v49;
        v58 = *v48;
        v59 = v9[2];
        v60 = *(*v48 + 844);
        if ((v60 == 2) != (*(v59 + 844) == 2))
        {
          if (v60 != 2)
          {
            goto LABEL_101;
          }
        }

        else if (*(v58 + 692) >= *(v59 + 692))
        {
          goto LABEL_101;
        }

        v9[2] = v58;
        *v48 = v59;
        goto LABEL_101;
      }

      if (v52 != 2)
      {
        goto LABEL_81;
      }

LABEL_85:
      v55 = v52 == 2;
      v56 = *(a2 - 3);
      if (((v55 ^ (*(v56 + 844) == 2)) & 1) == 0)
      {
        if (*(v56 + 692) < *(v49 + 692))
        {
          goto LABEL_95;
        }

LABEL_87:
        v9[2] = v49;
        *v48 = v51;
        v57 = *(a2 - 3);
        if ((v53 == 2) != (*(v57 + 844) == 2))
        {
          if (*(v57 + 844) != 2)
          {
            goto LABEL_101;
          }
        }

        else if (*(v57 + 692) >= *(v51 + 692))
        {
          goto LABEL_101;
        }

        *v48 = v57;
        goto LABEL_98;
      }

      if (*(v56 + 844) != 2)
      {
        goto LABEL_87;
      }

LABEL_95:
      v9[2] = v56;
LABEL_98:
      *(a2 - 3) = v51;
LABEL_101:
      v61 = *v13;
      v62 = v9[v36];
      v63 = *(*v13 + 844);
      v64 = *(v62 + 844);
      if ((v63 == 2) != (v64 == 2))
      {
        if (v63 != 2)
        {
          goto LABEL_103;
        }

LABEL_108:
        v69 = v63 == 2;
        v70 = *v48;
        v71 = *(*v48 + 844);
        if ((v69 ^ (v71 == 2)))
        {
          if (v71 != 2)
          {
            v9[v36] = v61;
            *v13 = v62;
            if (v64 != 2)
            {
              v72 = *(v70 + 692);
              goto LABEL_123;
            }

LABEL_122:
            v61 = v62;
LABEL_126:
            v73 = *v9;
            *v9 = v61;
            *v13 = v73;
            goto LABEL_127;
          }

LABEL_117:
          v9[v36] = v70;
        }

        else
        {
          v72 = *(v70 + 692);
          if (v72 < *(v61 + 692))
          {
            goto LABEL_117;
          }

          v9[v36] = v61;
          *v13 = v62;
          if ((v64 == 2) != (v71 == 2))
          {
            if (v71 != 2)
            {
              goto LABEL_122;
            }
          }

          else
          {
LABEL_123:
            if (v72 >= *(v62 + 692))
            {
              goto LABEL_122;
            }
          }

          *v13 = v70;
          v61 = v70;
        }

LABEL_125:
        *v48 = v62;
        goto LABEL_126;
      }

      if (*(v61 + 692) < *(v62 + 692))
      {
        goto LABEL_108;
      }

LABEL_103:
      v65 = v63 == 2;
      v66 = *v48;
      v67 = *(*v48 + 844);
      if ((v65 ^ (v67 == 2)))
      {
        if (v67 != 2)
        {
          goto LABEL_126;
        }

        *v13 = v66;
        *v48 = v61;
        if (v64 == 2)
        {
          v68 = *(v66 + 692);
          goto LABEL_118;
        }

LABEL_119:
        v9[v36] = v66;
        v48 = v13;
        v61 = v62;
        goto LABEL_125;
      }

      v68 = *(v66 + 692);
      if (v68 >= *(v61 + 692))
      {
        goto LABEL_126;
      }

      *v13 = v66;
      *v48 = v61;
      if ((v64 == 2) != (v67 == 2))
      {
        if (v67 == 2)
        {
          goto LABEL_119;
        }
      }

      else
      {
LABEL_118:
        if (v68 < *(v62 + 692))
        {
          goto LABEL_119;
        }
      }

      v61 = v66;
      goto LABEL_126;
    }

    v19 = *v9;
    v20 = *v13;
    v21 = *(*v9 + 844);
    v22 = *(*v13 + 844);
    if ((v21 == 2) != (v22 == 2))
    {
      if (v21 == 2)
      {
        goto LABEL_30;
      }
    }

    else if (*(v19 + 692) < *(v20 + 692))
    {
LABEL_30:
      v27 = v21 == 2;
      v28 = *v8;
      if ((v27 ^ (*(*v8 + 844) == 2)))
      {
        if (*(*v8 + 844) == 2)
        {
          goto LABEL_46;
        }
      }

      else if (*(v28 + 692) < *(v19 + 692))
      {
LABEL_46:
        *v13 = v28;
        goto LABEL_52;
      }

      *v13 = v19;
      *v9 = v20;
      v29 = *v8;
      if ((v22 == 2) == (*(*v8 + 844) == 2))
      {
        if (*(v29 + 692) >= *(v20 + 692))
        {
          goto LABEL_127;
        }

LABEL_51:
        *v9 = v29;
LABEL_52:
        *v8 = v20;
        goto LABEL_127;
      }

      if (*(*v8 + 844) == 2)
      {
        goto LABEL_51;
      }

      goto LABEL_127;
    }

    v23 = *v8;
    if ((v21 == 2) != (*(*v8 + 844) == 2))
    {
      if (*(*v8 + 844) != 2)
      {
        goto LABEL_127;
      }
    }

    else if (*(v23 + 692) >= *(v19 + 692))
    {
      goto LABEL_127;
    }

    *v9 = v23;
    *v8 = v19;
    v33 = *v9;
    v34 = *v13;
    v35 = *(*v9 + 844);
    if ((v35 == 2) == (*(*v13 + 844) == 2))
    {
      if (*(v33 + 692) >= *(v34 + 692))
      {
        goto LABEL_127;
      }

LABEL_73:
      *v13 = v33;
      *v9 = v34;
      goto LABEL_127;
    }

    if (v35 == 2)
    {
      goto LABEL_73;
    }

LABEL_127:
    --a3;
    v74 = *v9;
    if (a4)
    {
      v75 = *(v74 + 844);
LABEL_141:
      for (i = (v9 + 1); ; i += 8)
      {
        v81 = *i;
        if ((v75 == 2) == (*(*i + 844) == 2))
        {
          break;
        }

        if (*(*i + 844) != 2)
        {
          goto LABEL_147;
        }

LABEL_146:
        ;
      }

      if (*(v81 + 692) < *(v74 + 692))
      {
        goto LABEL_146;
      }

LABEL_147:
      v82 = (i - 8);
      j = a2 - 1;
      if ((i - 8) != v9)
      {
        while (1)
        {
          if ((v75 == 2) != (*(*j + 844) == 2))
          {
            if (*(*j + 844) == 2)
            {
              goto LABEL_162;
            }
          }

          else if (*(*j + 692) < *(v74 + 692))
          {
            goto LABEL_162;
          }

          --j;
        }
      }

      j = a2;
      if (i < a2)
      {
        for (j = a2 - 1; ; --j)
        {
          v84 = *(*j + 844);
          if ((v75 == 2) != (v84 == 2))
          {
            if (i >= j || v84 == 2)
            {
              break;
            }
          }

          else if (i >= j || *(*j + 692) < *(v74 + 692))
          {
            break;
          }
        }
      }

LABEL_162:
      if (i >= j)
      {
        goto LABEL_177;
      }

      v85 = *j;
      v86 = i;
      v87 = j;
      while (2)
      {
        *v86 = v85;
        v86 += 8;
        *v87 = v81;
        while (2)
        {
          v81 = *v86;
          if ((v75 == 2) != (*(*v86 + 844) == 2))
          {
            if (*(*v86 + 844) != 2)
            {
              break;
            }

            goto LABEL_169;
          }

          if (*(v81 + 692) < *(v74 + 692))
          {
LABEL_169:
            v86 += 8;
            continue;
          }

          break;
        }

        v82 = (v86 - 8);
        do
        {
          while (1)
          {
            v88 = *--v87;
            v85 = v88;
            v89 = *(v88 + 844) == 2;
            if ((v75 == 2) == v89)
            {
              break;
            }

            if (v89)
            {
              goto LABEL_176;
            }
          }
        }

        while (*(v85 + 692) >= *(v74 + 692));
LABEL_176:
        if (v86 < v87)
        {
          continue;
        }

        break;
      }

LABEL_177:
      if (v82 != v9)
      {
        *v9 = *v82;
      }

      *v82 = v74;
      if (i < j)
      {
LABEL_182:
        result = std::__introsort<std::_ClassicAlgPolicy,md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,false>(v7, v82, a3, a4 & 1);
        a4 = 0;
        v9 = v82 + 1;
      }

      else
      {
        v90 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **>(v9, v82);
        v9 = v82 + 1;
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **>(v82 + 1, a2);
        if (result)
        {
          a2 = v82;
          if (v90)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v90)
        {
          goto LABEL_182;
        }
      }
    }

    else
    {
      v76 = *(v9 - 1);
      v77 = *(v76 + 844);
      v75 = *(v74 + 844);
      if ((v77 == 2) != (v75 == 2))
      {
        if (v77 == 2)
        {
          goto LABEL_141;
        }
      }

      else if (*(v76 + 692) < *(v74 + 692))
      {
        goto LABEL_141;
      }

      v78 = *v8;
      v79 = *(*v8 + 844);
      if ((v75 == 2) != (v79 == 2))
      {
        if (v75 == 2)
        {
          goto LABEL_184;
        }
      }

      else if (*(v74 + 692) < *(v78 + 692))
      {
LABEL_184:
        for (++v9; ; ++v9)
        {
          if ((v75 == 2) != (*(*v9 + 844) == 2))
          {
            if (v75 == 2)
            {
              goto LABEL_190;
            }
          }

          else if (*(v74 + 692) < *(*v9 + 692))
          {
            goto LABEL_190;
          }
        }
      }

      for (++v9; v9 < a2; ++v9)
      {
        if ((v75 == 2) != (*(*v9 + 844) == 2))
        {
          if (v75 == 2)
          {
            break;
          }
        }

        else if (*(v74 + 692) < *(*v9 + 692))
        {
          break;
        }
      }

LABEL_190:
      k = a2;
      if (v9 < a2)
      {
        for (k = a2 - 1; ; --k)
        {
          if ((v75 == 2) != (v79 == 2))
          {
            if (v75 != 2)
            {
              break;
            }
          }

          else if (*(v74 + 692) >= *(v78 + 692))
          {
            break;
          }

          v92 = *(k - 1);
          v78 = v92;
          v79 = *(v92 + 844);
        }
      }

      if (v9 >= k)
      {
        goto LABEL_209;
      }

      v93 = *v9;
      v94 = *k;
      do
      {
        *v9++ = v94;
        *k = v93;
        while (1)
        {
          v93 = *v9;
          if ((v75 == 2) != (*(*v9 + 844) == 2))
          {
            break;
          }

          if (*(v74 + 692) < *(v93 + 692))
          {
            goto LABEL_206;
          }

LABEL_204:
          ++v9;
        }

        if (v75 != 2)
        {
          goto LABEL_204;
        }

        do
        {
LABEL_206:
          while (1)
          {
            v95 = *--k;
            v94 = v95;
            if ((v75 == 2) != (*(v95 + 844) == 2))
            {
              break;
            }

            if (*(v74 + 692) >= *(v94 + 692))
            {
              goto LABEL_208;
            }
          }
        }

        while (v75 == 2);
LABEL_208:
        ;
      }

      while (v9 < k);
LABEL_209:
      v96 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v96;
      }

      a4 = 0;
      *v96 = v74;
    }
  }

  v107 = v9 + 1;
  v109 = v9 == a2 || v107 == a2;
  if ((a4 & 1) == 0)
  {
    if (v109)
    {
      return result;
    }

    while (1)
    {
      v165 = v7;
      v7 = v107;
      v167 = *v165;
      v166 = v165[1];
      v168 = *(v166 + 844);
      if ((v168 == 2) != (*(*v165 + 844) == 2))
      {
        if (v168 == 2)
        {
          goto LABEL_324;
        }
      }

      else if (*(v166 + 692) < *(v167 + 692))
      {
        do
        {
LABEL_324:
          while (1)
          {
            v169 = v165;
            v170 = *--v165;
            v165[2] = v167;
            v167 = v170;
            if ((v168 == 2) == (*(v170 + 844) == 2))
            {
              break;
            }

            if (v168 != 2)
            {
              goto LABEL_328;
            }
          }
        }

        while (*(v166 + 692) < *(v167 + 692));
LABEL_328:
        *v169 = v166;
      }

      v107 = v7 + 1;
      if (v7 + 1 == a2)
      {
        return result;
      }
    }
  }

  if (v109)
  {
    return result;
  }

  v110 = 0;
  v111 = v9;
  while (2)
  {
    v112 = v111;
    v111 = v107;
    v114 = *v112;
    v113 = v112[1];
    v115 = *(v113 + 844);
    if ((v115 == 2) != (*(*v112 + 844) == 2))
    {
      if (v115 != 2)
      {
        goto LABEL_251;
      }
    }

    else if (*(v113 + 692) >= *(v114 + 692))
    {
      goto LABEL_251;
    }

    v112[1] = v114;
    v116 = v9;
    if (v112 == v9)
    {
      goto LABEL_250;
    }

    v117 = v110;
    while (2)
    {
      v118 = *(v9 + v117 - 8);
      if ((v115 == 2) != (*(v118 + 844) == 2))
      {
        if (v115 != 2)
        {
          v116 = v112;
          goto LABEL_250;
        }

LABEL_247:
        --v112;
        *(v9 + v117) = v118;
        v117 -= 8;
        if (!v117)
        {
          v116 = v9;
          goto LABEL_250;
        }

        continue;
      }

      break;
    }

    if (*(v113 + 692) < *(v118 + 692))
    {
      goto LABEL_247;
    }

    v116 = (v9 + v117);
LABEL_250:
    *v116 = v113;
LABEL_251:
    v107 = v111 + 1;
    v110 += 8;
    if (v111 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

void *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKeyAtZ<BOOL>(uint64_t a1, unsigned int a2, unsigned int a3, _BYTE *a4)
{
  v5 = *(a1 + 16 * a3 + 16);
  if (v5)
  {
    v7 = a1 + 16 * a3;
    if (*(v7 + 56))
    {
      v8 = *(v7 + 48);
      v9 = 8 * *(v7 + 56);
      while (1)
      {
        v10 = *(*v8 + 72);
        if (v10)
        {
          v13 = *v10;
          v11 = v10 + 2;
          v12 = v13;
          v14 = v13 + 120 * *(v11 + a2);
          if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v14, 0x3Eu) != *(v14 + 12))
          {
            break;
          }
        }

        v8 += 8;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      if (a2 >= 0x17)
      {
        v15 = 23;
      }

      else
      {
        v15 = a2;
      }

      v16 = v12 + 120 * *(v11 + v15);
      v17 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v16 + 24), 0x3Eu);
      if (v17 != *(v16 + 36))
      {
        v18 = *(v16 + 24);
        v19 = *(v16 + 32);
        return (v18 + v19 + v17);
      }

      return &gss::PropertySetValueHelper<gss::ScenePropertyID,BOOL>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
    }

LABEL_13:
    v20 = *(v5 + 72);
    if (v20)
    {
      v22 = a2 >= 0x17 ? 23 : a2;
      v23 = *v20 + 120 * *(v20 + v22 + 16);
      if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v23, 0x3Eu) != *(v23 + 12))
      {
        v17 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v23 + 24), 0x3Eu);
        if (v17 != *(v23 + 36))
        {
          v18 = *(v23 + 24);
          v19 = *(v23 + 32);
          return (v18 + v19 + v17);
        }

        return &gss::PropertySetValueHelper<gss::ScenePropertyID,BOOL>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
      }
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  return &gss::defaultValueForKey<gss::ScenePropertyID,BOOL>(gss::ScenePropertyID)::_defaultValue;
}

unint64_t *md::SimpleBuffer<md::LabelCollisionItemBase *,2000ul>::push_back(unint64_t *result, void *a2)
{
  v3 = result;
  v4 = *result;
  v5 = result[1];
  if (*result < v5 || v5 > 2 * v4)
  {
    goto LABEL_8;
  }

  v6 = 2 * v4;
  if ((v6 | 1uLL) > 0x7D0)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 2000;
  }

  v8 = (1 << -__clz(v7 - 1));
  result = malloc_type_realloc(result[2], 8 * v8, 0x2004093837F09uLL);
  if (result)
  {
    v3[1] = v8;
    v3[2] = result;
    v4 = *v3;
LABEL_8:
    *(v3[2] + 8 * v4) = *a2;
    *v3 = v4 + 1;
  }

  return result;
}

void *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKeyAtZ<int>(uint64_t a1, uint64_t a2, unsigned int a3, _BYTE *a4)
{
  v5 = *(a1 + 16 * a3 + 16);
  if (v5)
  {
    v6 = a2;
    v7 = a1 + 16 * a3;
    if (*(v7 + 56))
    {
      v8 = *(v7 + 48);
      v9 = 8 * *(v7 + 56);
      while (1)
      {
        v10 = *(*v8 + 72);
        if (v10)
        {
          v11 = *v10 + 120 * *(v10 + v6 + 16);
          if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v11, 0x42u) != *(v11 + 12))
          {
            break;
          }
        }

        v8 += 8;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      return gss::CartoStyle<gss::ScenePropertyID>::valueForExistingKeyAtZ<int>(v10, 0x42u, v6);
    }

    else
    {
LABEL_11:
      v13 = *(v5 + 72);

      return gss::CartoStyle<gss::ScenePropertyID>::valueForKeyAtZ<int>(v13, 66, v6, a4);
    }
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    return gss::defaultValueForKey<gss::ScenePropertyID,int>(66);
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,false>(uint64_t result, int8x16_t *a2, uint64_t a3, int a4)
{
  v7 = result;
  while (2)
  {
    v8 = &a2[-1].i64[1];
    v9 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v9;
          v10 = (a2 - v9) >> 3;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3uLL:

                return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(v9, v9 + 1, &a2[-1].i64[1]);
              case 4uLL:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(v9, v9 + 1, v9 + 2, &a2[-1].i64[1]);
              case 5uLL:

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(v9, v9 + 1, v9 + 2, v9 + 3, &a2[-1].i64[1]);
            }
          }

          else
          {
            if (v10 == 2)
            {
              result = *v8;
              if (*v8 != *v9)
              {
                result = (*(*result + 80))(result);
                if (result)
                {
                  v30 = *v9;
                  *v9 = *v8;
                  *v8 = v30;
                }
              }

              return result;
            }

            if (v10 < 2)
            {
              return result;
            }
          }

          if (v10 <= 23)
          {
            if (a4)
            {

              return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **>(v9, a2->i64);
            }

            else if (v9 != a2)
            {
              while (&v7->u64[1] != a2)
              {
                v31 = v7;
                v7 = (v7 + 8);
                result = v31[1];
                if (result != *v31)
                {
                  result = (*(*result + 80))(result);
                  if (result)
                  {
                    v32 = v7->i64[0];
                    do
                    {
                      v33 = v31;
                      v31[1] = *v31;
                      v34 = *--v31;
                      if (v32 == v34)
                      {
                        break;
                      }

                      result = (*(*v32 + 80))(v32);
                    }

                    while ((result & 1) != 0);
                    *v33 = v32;
                  }
                }
              }
            }

            return result;
          }

          if (!a3)
          {

            return std::__partial_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,md::LabelCollisionItemBase **>(v9, a2->i64, a2->i64);
          }

          v13 = v10 >> 1;
          v14 = &v9[v10 >> 1];
          if (v10 >= 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(v7->i64, &v7->i64[v10 >> 1], &a2[-1].i64[1]);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(&v7->i64[1], v14 - 1, a2[-1].i64);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(v7[1].i64, &v7->i64[v13 + 1], &a2[-2].i64[1]);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(v14 - 1, v14, &v7->i64[v13 + 1]);
            v35 = v7->i64[0];
            v7->i64[0] = *v14;
            *v14 = v35;
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(&v7->i64[v10 >> 1], v7->i64, &a2[-1].i64[1]);
          }

          --a3;
          if (a4)
          {
            break;
          }

          v15 = v7[-1].i64[1];
          if (v15 != v7->i64[0] && ((*(*v15 + 80))(v15) & 1) != 0)
          {
            break;
          }

          result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollisionItemBase **,md::LabelCollider::collideItems(void)::$_0 &>(v7->i64, a2->i64);
          v9 = result;
          a4 = 0;
        }

        v16 = &v7->i64[1];
        v17 = v7->i64[0];
        v36 = a4;
        do
        {
          v18 = v16;
          if (*v16 == v17)
          {
            break;
          }

          v19 = (*(**v16 + 80))(*v16, v17);
          v16 = (v18 + 8);
        }

        while ((v19 & 1) != 0);
        v20 = (v18 - 8);
        i = (a2 - 8);
        if ((v18 - 8) == v7)
        {
          i = a2;
          if (v18 < a2)
          {
            for (i = (a2 - 8); ; i = (i - 8))
            {
              if (i->i64[0] == v17)
              {
                if (v18 >= i)
                {
                  break;
                }
              }

              else
              {
                v11 = (*(*i->i64[0] + 80))(i->i64[0], v17);
                if (v18 >= i || (v11 & 1) != 0)
                {
                  break;
                }
              }
            }
          }
        }

        else
        {
          while (i->i64[0] == v17 || ((*(*i->i64[0] + 80))(i->i64[0], v17) & 1) == 0)
          {
            i = (i - 8);
          }
        }

        if (v18 < i)
        {
          v21 = v18;
          v22 = i;
          do
          {
            v23 = *v21;
            *v21 = *v22;
            *v22 = v23;
            v24 = v21 + 1;
            do
            {
              v21 = v24;
              if (*v24 == v17)
              {
                break;
              }

              v25 = (*(**v24 + 80))(*v24, v17);
              v24 = v21 + 1;
            }

            while ((v25 & 1) != 0);
            v20 = (v21 - 1);
            do
            {
              do
              {
                v27 = *--v22;
                v26 = v27;
              }

              while (v27 == v17);
            }

            while (((*(*v26 + 80))(v26, v17) & 1) == 0);
          }

          while (v21 < v22);
        }

        if (v20 != v7)
        {
          v7->i64[0] = v20->i64[0];
        }

        v20->i64[0] = v17;
        v28 = v18 >= i;
        a4 = v36;
        if (v28)
        {
          break;
        }

LABEL_43:
        result = std::__introsort<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,false>(v7, v20->i64, a3, v36 & 1);
        a4 = 0;
        v9 = &v20->i64[1];
      }

      v29 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **>(v7, v20);
      v9 = &v20->i64[1];
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **>(&v20->u64[1], a2);
      if (result)
      {
        break;
      }

      if (!v29)
      {
        goto LABEL_43;
      }
    }

    a2 = v20;
    if (!v29)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v5 = a1;
  v6 = *a2;
  if (*a2 == *a1 || (v7 = (*(*v6 + 80))(v6), v6 = *v4, (v7 & 1) == 0))
  {
    result = *a3;
    if (*a3 != v6)
    {
      result = (*(*result + 80))(result, v6);
      if (result)
      {
        v9 = *v4;
        *v4 = *a3;
        *a3 = v9;
        result = *v4;
        if (*v4 != *v5)
        {
          result = (*(*result + 80))(result);
          if (result)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    if (*a3 != v6)
    {
      result = (*(**a3 + 80))(*a3, *v4);
      if (result)
      {
        v4 = a3;
LABEL_14:
        v11 = *v5;
        *v5 = *v4;
        *v4 = v11;
        return result;
      }

      v6 = *v4;
    }

    v10 = *v5;
    *v5 = v6;
    *v4 = v10;
    result = *a3;
    if (*a3 != v10)
    {
      result = (*(*result + 80))(result);
      v5 = v4;
      v4 = a3;
      if (result)
      {
        goto LABEL_14;
      }
    }
  }

  return result;
}

uint64_t md::LabelCollisionItem::outranksItem(md::LabelCollisionItem *this, const md::LabelCollisionItemBase *a2)
{
  v2 = *(a2 + 52);
  if (v2 != 4)
  {
    LOBYTE(v2) = *(this + 52) <= v2;
    return v2 & 1;
  }

  v3 = *(this + 7);
  v4 = *(this + 64);
  v5 = *(a2 + 7);
  v6 = *(a2 + 64);
  v7 = atomic_load((v3 + 1328));
  v8 = atomic_load((v5 + 1328));
  if ((v8 ^ v7))
  {
    LOBYTE(v2) = atomic_load((v3 + 1328));
    return v2 & 1;
  }

  v10 = *(v3 + 24);
  v11 = *(v5 + 24);
  if (v10)
  {
    if (v10 == v11)
    {
      v27 = v4 > v6;
      if (v4 == v6)
      {
        v28 = *(v3 + 32) >= *(v5 + 32);
        goto LABEL_29;
      }

      goto LABEL_32;
    }

    v12 = *(v10 + 72);
    if (v12)
    {
      v3 = v12;
    }
  }

  if (v11)
  {
    v13 = *(v11 + 72);
    if (v13)
    {
      v5 = v13;
    }
  }

  if (v4 == 1)
  {
    v14 = 748;
  }

  else
  {
    v14 = 744;
    if (*(v3 + 1336))
    {
      v14 = 748;
    }
  }

  v15 = *(v3 + v14);
  if (v6 == 1)
  {
    v16 = 748;
  }

  else
  {
    v16 = 744;
    if (*(v5 + 1336))
    {
      v16 = 748;
    }
  }

  v17 = *(v5 + v16);
  v18 = v15 < v17;
  if (v15 != v17)
  {
    goto LABEL_38;
  }

  v19 = *(v3 + 752);
  v20 = *(v5 + 752);
  v18 = v19 < v20;
  if (v19 != v20)
  {
    goto LABEL_38;
  }

  v21 = *(v3 + 764);
  v22 = *(v5 + 764);
  v18 = v21 < v22;
  if (v21 != v22)
  {
    goto LABEL_38;
  }

  v23 = *(v3 + 60);
  v24 = *(v5 + 60);
  v18 = v23 < v24;
  if (v23 != v24)
  {
    goto LABEL_38;
  }

  v25 = *(v3 + 1303);
  v26 = *(v5 + 1303);
  v27 = v25 > v26;
  if (v25 != v26)
  {
LABEL_32:
    LOBYTE(v2) = v27;
    return v2 & 1;
  }

  if (*(v3 + 1365))
  {
    if (!*(v5 + 1365))
    {
      LOBYTE(v2) = 1;
      return v2 & 1;
    }

    v2 = *(v3 + 1340);
    if (v2 != *(v5 + 1340))
    {
      return v2 & 1;
    }
  }

  else if (*(v5 + 1365))
  {
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  v29 = *(v3 + 196);
  v30 = *(v5 + 196);
  v18 = v29 < v30;
  if (v29 != v30)
  {
LABEL_38:
    LOBYTE(v2) = v18;
    return v2 & 1;
  }

  v31 = (*(**(v3 + 8) + 480))(*(v3 + 8), 0);
  v32 = (*(**(v5 + 8) + 480))();
  LOBYTE(v2) = v31 != 0;
  if (!(v31 | v32))
  {
    goto LABEL_48;
  }

  if (v31)
  {
    v33 = v32 == 0;
  }

  else
  {
    v33 = 1;
  }

  if (!v33)
  {
    v34 = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::compare(v31, v32);
    if (v34)
    {
      v2 = v34 >> 31;
      return v2 & 1;
    }

LABEL_48:
    v28 = v3 >= v5;
LABEL_29:
    LOBYTE(v2) = !v28;
  }

  return v2 & 1;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(a1, a2, a3);
  result = *a4;
  if (*a4 != *a3)
  {
    result = (*(*result + 80))(result);
    if (result)
    {
      v9 = *a3;
      *a3 = *a4;
      *a4 = v9;
      result = *a3;
      if (*a3 != *a2)
      {
        result = (*(*result + 80))(result);
        if (result)
        {
          v10 = *a2;
          *a2 = *a3;
          *a3 = v10;
          result = *a2;
          if (*a2 != *a1)
          {
            result = (*(*result + 80))(result);
            if (result)
            {
              v11 = *a1;
              *a1 = *a2;
              *a2 = v11;
            }
          }
        }
      }
    }
  }

  return result;
}

float32x2_t *md::LabelCollider::collideItems(float32x2_t *this, md::LabelCollisionItemBase **a2, uint64_t a3)
{
  if (a3)
  {
    v5 = this;
    v6 = 0;
    v7 = this + 12;
    v8 = this + 13;
    while (1)
    {
      v9 = a2[v6];
      v10 = (*(*v9 + 104))(v9);
      if (!v10)
      {
        goto LABEL_6;
      }

      v11 = v10;
      this = (*(*v10 + 120))(v10);
      if ((this & 1) == 0)
      {
        break;
      }

LABEL_20:
      if (++v6 == a3)
      {
        return this;
      }
    }

    md::LabelCollider::removeItemFromGrid(v5, v11);
LABEL_6:
    v33 = 256;
    v34 = 0;
    v12 = (*(*v9 + 88))(v9);
    if (v12 && (v13 = v12, v14 = (*(*v9 + 96))(v9), (*(*v13 + 24))(v13, v14)))
    {
      LOBYTE(v33) = 1;
      this = (*(*v9 + 72))(v9, &v33);
    }

    else
    {
      v15 = (*(*v9 + 112))(v9);
      v16 = (*(*v9 + 56))(v9, *v5, v5);
      if (v16)
      {
        v17 = 1;
        do
        {
          if (!md::LabelCollider::collideCandidate(v5, v9, v16, &v33))
          {
            break;
          }

          if (v15 & 1 | ((v33 & 0x100) == 0))
          {
            break;
          }

          v16 = (*(*v9 + 64))(v9, v17, &v33, *v5, v5);
          v17 = (v17 + 1);
        }

        while (v16);
      }

      if (HIBYTE(v33) == 1 && (*(*v9 + 32))(v9) && (*(*v9 + 40))(v9))
      {
        v16 = (*(*v9 + 56))(v9, *v5, v5);
        HIBYTE(v33) = 0;
        v34 = 0;
      }

      this = (*(*v9 + 72))(v9, &v33);
      if ((v33 & 0x100) == 0)
      {
        v18 = 0;
        v19 = 0;
        v35 = v9;
        do
        {
          v20 = v8->i32[v19];
          v21 = v7->i32[v19];
          if (v18)
          {
            break;
          }

          v18 = 1;
          v19 = 1;
        }

        while (v20 >= v21);
        if (v20 >= v21)
        {
          *(v9 + 10) = 0;
          v23 = v5[12].i32[1];
          v24 = v5[13].i32[1];
          if (v23 <= v24)
          {
            v25 = v5[5].i32[1];
            v26 = *&v5[7] + 24 * (v5[12].i32[0] + v25 * v23);
            v27 = v5[13].i32[0];
            do
            {
              if (v7->i32[0] <= v27)
              {
                v29 = v7->i32[0] - 1;
                v30 = v26;
                do
                {
                  v32 = v30;
                  v31 = v29;
                  md::SimpleBuffer<md::LabelCollidableItem *,20ul>::push_back(v30, &v35);
                  v30 = v32 + 3;
                  v27 = v8->i32[0];
                  v29 = v31 + 1;
                }

                while (v31 + 1 < v8->i32[0]);
                v25 = v5[5].i32[1];
                v24 = v5[13].i32[1];
              }

              v26 += 24 * v25;
            }

            while (v23++ < v24);
          }
        }

        this = (*(*v16 + 16))(v16);
        *&v22 = vmul_f32(vsub_f32(this[1], *this), 0x3F0000003F000000);
        *(&v22 + 1) = vadd_f32(*&v22, *this);
        *(v9 + 8) = v22;
        *(v9 + 3) = 1065353216;
      }
    }

    goto LABEL_20;
  }

  return this;
}

uint64_t md::LabelCollisionItem::reserveSpaceItem(md::LabelCollisionItem *this)
{
  if (*(this + 64))
  {
    return 0;
  }

  v1 = *(this + 7);
  if (*(v1 + 1335) == 1)
  {
    md::Label::updateReserveSpaceCollisionItem(*(this + 7));
  }

  return *(v1 + 336);
}

uint64_t md::LabelCollisionItem::placementCandidate(md::LabelCollisionItem *this, md::LabelManager *a2, md::LabelCollider *a3)
{
  v3 = *(this + 7);
  if (*(this + 64) == 1)
  {
    return *(v3 + 344);
  }

  v6 = *(v3 + 288);
  if (v6)
  {
    (*(*v6 + 448))(v6);
  }

  if (*(a2 + 3664) != 1 || (*(**(*(a2 + 21) + 32) + 8))(*(*(a2 + 21) + 32)))
  {
    return v3 + 40;
  }

  v7 = *(v3 + 264);
  v8 = *(v3 + 288);
  v9 = !v7 || v8 == v7;
  if (!v9 || ((*(*v8 + 552))(v8) & 1) == 0 && ((*(**(v3 + 288) + 568))(*(v3 + 288)) & 1) == 0)
  {
    return v3 + 40;
  }

  v21 = 150994944;
  v22 = 0;
  if (!(*(**(v3 + 288) + 576))(*(v3 + 288), a2, a3, *(v3 + 328), &v21))
  {
    return v3 + 40;
  }

  v10 = *(v3 + 312);
  v11 = *(v3 + 313);
  v12 = *(v3 + 315);
  *(v3 + 321) = v22;
  *(v3 + 317) = v21;
  (*(**(v3 + 288) + 608))(&v20);
  v13 = v20;
  v20 = 0;
  v14 = *(v3 + 1320);
  *(v3 + 1320) = v13;
  if (v14)
  {
    std::default_delete<md::LabelPartTransferResource>::operator()[abi:nn200100](v14);
    v15 = v20;
    v20 = 0;
    if (v15)
    {
      std::default_delete<md::LabelPartTransferResource>::operator()[abi:nn200100](v15);
    }
  }

  if (*(v3 + 288))
  {
    *(v3 + 288) = 0;
    *(v3 + 1335) = 1;
  }

  LOWORD(v20) = 257;
  BYTE2(v20) = 1;
  md::Label::layoutForStaging(v3, a2, 0, &v20);
  v16 = *(v3 + 1320);
  *(v3 + 1320) = 0;
  if (v16)
  {
    std::default_delete<md::LabelPartTransferResource>::operator()[abi:nn200100](v16);
  }

  if ((*(v3 + 1378) & 1) == 0)
  {
    if (*(v3 + 1334) & 1) != 0 || (v19 = atomic_load((v3 + 1328)), (v19))
    {
      *(v3 + 317) = v10;
      *(v3 + 318) = v11;
      *(v3 + 319) = 0;
      *(v3 + 320) = v12;
      LOWORD(v20) = 257;
      BYTE2(v20) = 1;
      md::Label::layoutForStaging(v3, a2, 0, &v20);
    }
  }

  if (*(v3 + 1378) != 1 || (v17 = *(v3 + 288)) != 0 && ((*(*v17 + 448))(v17), (*(v3 + 1378) & 1) == 0))
  {
    v3 = 0;
  }

  if (v3)
  {
    return v3 + 40;
  }

  else
  {
    return 0;
  }
}

uint64_t md::CompositeLabelPart::collisionWillStart(uint64_t this)
{
  v1 = *(this + 576);
  v2 = *(this + 584);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 448))(v3);
  }

  return this;
}

uint64_t md::CaptionedIconLabelPart::collisionWillStart(uint64_t this)
{
  v1 = this;
  v2 = *(this + 576);
  v3 = *(this + 584);
  while (v2 != v3)
  {
    v4 = *v2++;
    this = (*(*v4 + 448))(v4);
  }

  if (v1[947] == 3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v1[954];
  }

  v1[953] = v5 & 1;
  v1[931] = 0;
  return this;
}

uint64_t md::CaptionedIconLabelPart::shouldSnapToDefaultPlacement(md::CaptionedIconLabelPart *this)
{
  if (*(this + 956) == 1)
  {
    v1 = *(this + 957);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t md::LabelCollider::collideCandidate(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  *(a1 + 96) = xmmword_1B33B21B0;
  v8 = (a1 + 96);
  v9 = (a1 + 104);
  v10 = (*(*a3 + 16))(a3);
  v11 = 0;
  v12 = 0;
  v54 = *v10;
  *(a4 + 8) = 0;
  v13 = &v54;
  do
  {
    v14 = *(&v54 + v12 + 2);
    v15 = *v13;
    if (v11)
    {
      break;
    }

    v11 = 1;
    v13 = &v54 + 1;
    v12 = 1;
  }

  while (v14 >= v15);
  if (v14 < v15)
  {
    goto LABEL_5;
  }

  if (*(a1 + 92) == 1)
  {
    v17 = 0;
    v18 = &v54;
    v19 = 1;
    while (*v18 >= *(a1 + 12 + 4 * v17) && *(&v54 + v17 + 2) <= *(a1 + 20 + 4 * v17))
    {
      v20 = v19;
      v19 = 0;
      v18 = &v54 + 1;
      v17 = 1;
      if ((v20 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_5;
  }

LABEL_11:
  *&v21 = vmul_f32(vsub_f32(*(&v54 + 8), *&v54), 0x3F0000003F000000);
  v49 = vadd_f32(*&v21, *&v54);
  v50 = v21;
  *(&v21 + 1) = v49;
  v52 = v21;
  v53 = 1065353216;
  v22 = md::LabelCollider::rectToGridRect(a1, &v52);
  v24 = 0;
  v25 = 0;
  v26 = HIDWORD(v22);
  *(a1 + 96) = v22;
  v27 = HIDWORD(v23);
  *(a1 + 104) = v23;
  do
  {
    v28 = v9[v25];
    v29 = v8[v25];
    if (v24)
    {
      break;
    }

    v24 = 1;
    v25 = 1;
  }

  while (v28 >= v29);
  if (v28 < v29)
  {
LABEL_5:
    result = 0;
    *(a4 + 1) = 1;
    return result;
  }

  *(a1 + 112) = 0;
  ++*(a1 + 88);
  if (SHIDWORD(v22) <= SHIDWORD(v23))
  {
    v47 = v5;
    v48 = a4;
    v34 = *(a1 + 44);
    v35 = *(a1 + 56) + 24 * (v22 + v34 * HIDWORD(v22));
    v51 = v8;
    do
    {
      v36 = *v8;
      v37 = v35;
      if (v36 <= v23)
      {
        do
        {
          if (*v37)
          {
            v38 = v37[2];
            v39 = 8 * *v37;
            do
            {
              v40 = *v38;
              *&v52 = v40;
              v41 = *(a1 + 88);
              if (v40[10] != v41 && (a2[9] & v40[8]) != 0 && (a2[12] & v40[11]) == 0 && (a2[11] & v40[12]) == 0)
              {
                v40[10] = v41;
                md::SimpleBuffer<md::LabelCollidableItem *,20ul>::push_back((a1 + 112), &v52);
              }

              ++v38;
              v39 -= 8;
            }

            while (v39);
            LODWORD(v23) = *v9;
          }

          v37 += 3;
          v42 = v36++ < v23;
        }

        while (v42);
        v34 = *(a1 + 44);
        LODWORD(v27) = *(a1 + 108);
      }

      v35 += 24 * v34;
      v42 = v26 < v27;
      LODWORD(v26) = v26 + 1;
      v8 = v51;
    }

    while (v42);
    v43 = *(a1 + 112);
    v31 = *(a1 + 128);
    v30 = &v31[v43];
    if (v43)
    {
      v32 = 126 - 2 * __clz(v43);
      v5 = v47;
      a4 = v48;
      goto LABEL_18;
    }

    v5 = v47;
    a4 = v48;
  }

  else
  {
    v30 = *(a1 + 128);
    v31 = v30;
  }

  v32 = 0;
LABEL_18:
  std::__introsort<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,false>(v31, v30, v32, 1);
  *&v52 = v50;
  *(&v52 + 1) = v49;
  v53 = 1065353216;
  *(a4 + 1) = 0;
  v33 = *(a1 + 112);
  if (v33)
  {
    v44 = *(a1 + 128);
    v45 = 8 * v33;
    while (1)
    {
      v46 = *v44;
      if (gm::OBRect<float>::intersectsUsingInset(*v44 + 1, &v52))
      {
        if ((*(*v5 + 24))(v5, v46))
        {
          break;
        }
      }

      ++v44;
      v45 -= 8;
      if (!v45)
      {
        return 1;
      }
    }

    *(a4 + 1) = 1;
    *(a4 + 8) = v46;
  }

  return 1;
}

unint64_t *std::__introsort<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,false>(unint64_t *a1, unint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v7 = a2 - 1;
  result = a1;
LABEL_2:
  v9 = a3 - 1;
  while (1)
  {
    v10 = a2 - result;
    if (v10 < 2)
    {
      return result;
    }

    a1 = result;
    if (v10 <= 3)
    {
      break;
    }

    if (v10 == 5)
    {
      result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,0>(result, result + 1, result + 2, result + 3);
      v16 = a1[3];
      v17 = *(*v7 + 52);
      v18 = *(v16 + 52);
      v19 = v17 == v18;
      v20 = v17 < v18;
      if (v19)
      {
        v20 = *v7 < v16;
      }

      if (v20)
      {
        a1[3] = *v7;
        *v7 = v16;
        v22 = a1[2];
        v21 = a1[3];
        v23 = *(v21 + 52);
        v24 = *(v22 + 52);
        v19 = v23 == v24;
        v25 = v23 < v24;
        if (v19)
        {
          v25 = v21 < v22;
        }

        if (v25)
        {
          a1[2] = v21;
          a1[3] = v22;
          v26 = a1[1];
          v27 = *(v26 + 52);
          v19 = v23 == v27;
          v28 = v23 < v27;
          if (v19)
          {
            v28 = v21 < v26;
          }

          if (v28)
          {
            a1[1] = v21;
            a1[2] = v26;
            v29 = *a1;
            v30 = *(*a1 + 52);
            v19 = v23 == v30;
            v31 = v23 < v30;
            if (v19)
            {
              v31 = v21 < *a1;
            }

            if (v31)
            {
              *a1 = v21;
              a1[1] = v29;
            }
          }
        }
      }

      return result;
    }

    if (v10 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,0>(result, result + 1, result + 2, a2 - 1);
    }

LABEL_43:
    if (v10 <= 23)
    {
      if (a4)
      {
        if (result != a2)
        {
          v45 = result + 1;
          if (result + 1 != a2)
          {
            v46 = 8;
            v47 = result;
            do
            {
              v49 = *v47;
              v48 = v47[1];
              v47 = v45;
              v50 = *(v48 + 52);
              v51 = *(v49 + 52);
              v19 = v50 == v51;
              v52 = v50 < v51;
              if (v19)
              {
                v52 = v48 < v49;
              }

              if (v52)
              {
                v53 = v46;
                while (1)
                {
                  *(result + v53) = v49;
                  v54 = v53 - 8;
                  if (v53 == 8)
                  {
                    break;
                  }

                  v49 = *(result + v53 - 16);
                  v55 = *(v49 + 52);
                  v56 = v48 < v49;
                  v19 = v50 == v55;
                  v57 = v50 < v55;
                  if (!v19)
                  {
                    v56 = v57;
                  }

                  v53 = v54;
                  if (!v56)
                  {
                    v58 = (result + v54);
                    goto LABEL_58;
                  }
                }

                v58 = result;
LABEL_58:
                *v58 = v48;
              }

              v45 = v47 + 1;
              v46 += 8;
            }

            while (v47 + 1 != a2);
          }
        }
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**>(result, a2);
      }

      return result;
    }

    if (v9 == -1)
    {

      return std::__partial_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,md::LabelCollidableItem**>(result, a2, a2);
    }

    v61 = v9;
    v62 = v10 >> 1;
    v63 = &result[v10 >> 1];
    if (v10 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,0>(&result[v10 >> 1], result, a2 - 1);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,0>(result, v63, a2 - 1);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,0>(a1 + 1, v63 - 1, a2 - 2);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,0>(a1 + 2, &a1[v62 + 1], a2 - 3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,0>(v63 - 1, v63, &a1[v62 + 1]);
      v64 = *a1;
      *a1 = *v63;
      *v63 = v64;
    }

    if ((a4 & 1) == 0)
    {
      v65 = *(a1 - 1);
      v66 = *(v65 + 52);
      v67 = *(*a1 + 52);
      v68 = v65 < *a1;
      if (v66 != v67)
      {
        v68 = v66 < v67;
      }

      if (!v68)
      {
        result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollidableItem **,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem *,20ul> &)::$_0 &>(a1, a2);
        a4 = 0;
        a3 = v61;
        goto LABEL_2;
      }
    }

    v69 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollidableItem **,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem *,20ul> &)::$_0 &>(a1, a2);
    if ((v70 & 1) == 0)
    {
      v73 = v69;
LABEL_81:
      std::__introsort<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,false>(a1, v73, v61, a4 & 1);
      a3 = v61;
      a4 = 0;
      result = v73 + 1;
      goto LABEL_2;
    }

    v71 = v69;
    v72 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**>(a1, v69);
    v73 = v71;
    v74 = v71 + 1;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**>(v74, a2);
    if (result)
    {
      a2 = v73;
      a3 = v61;
      if (v72)
      {
        return result;
      }

      goto LABEL_1;
    }

    v9 = v61 - 1;
    result = v74;
    if (!v72)
    {
      goto LABEL_81;
    }
  }

  if (v10 == 2)
  {
    v11 = *v7;
    v12 = *result;
    v13 = *(*v7 + 52);
    v14 = *(*result + 52);
    v15 = v13 >= v14;
    if (v13 == v14)
    {
      v15 = v11 >= v12;
    }

    if (!v15)
    {
      *result = v11;
      *v7 = v12;
    }

    return result;
  }

  if (v10 != 3)
  {
    goto LABEL_43;
  }

  v32 = *result;
  v33 = result[1];
  v34 = *(v33 + 52);
  v35 = *(*result + 52);
  v36 = v34 < v35;
  if (v34 == v35)
  {
    v36 = v33 < *result;
  }

  v37 = *v7;
  v38 = *(*v7 + 52);
  v19 = v38 == v34;
  v39 = v38 < v34;
  if (v19)
  {
    v39 = *v7 < v33;
  }

  if (v36)
  {
    if (v39)
    {
      *result = v37;
LABEL_33:
      *v7 = v32;
      return result;
    }

    *result = v33;
    result[1] = v32;
    v59 = *(*v7 + 52);
    v19 = v59 == v35;
    v60 = v59 < v35;
    if (v19)
    {
      v60 = *v7 < v32;
    }

    if (v60)
    {
      result[1] = *v7;
      goto LABEL_33;
    }
  }

  else if (v39)
  {
    result[1] = v37;
    *v7 = v33;
    v41 = *result;
    v40 = result[1];
    v42 = *(v40 + 52);
    v43 = *(*result + 52);
    v19 = v42 == v43;
    v44 = v42 < v43;
    if (v19)
    {
      v44 = v40 < *result;
    }

    if (v44)
    {
      *result = v40;
      result[1] = v41;
    }
  }

  return result;
}

uint64_t *md::LabelCollisionItem::setCollisionResult(uint64_t a1, uint64_t a2)
{
  *(a1 + 65) = *(a2 + 1);
  result = (*(*a1 + 112))(a1);
  if (!result || *(a1 + 65) == 1)
  {
    v5 = *(a1 + 56);

    return md::Label::setCollisionResult(v5, a2);
  }

  return result;
}

uint64_t *md::Label::setCollisionResult(uint64_t a1, uint64_t a2)
{
  *(a1 + 352) = *(a2 + 8);
  v4 = *(a2 + 1);
  v5 = *(a1 + 24);
  if (v5)
  {
    if (v4)
    {
      if (*a2 == 1)
      {
        *(a1 + 845) = 21;
      }
    }

    else
    {
      (*(*v5 + 32))(v5, a1, 0);
    }
  }

  v6 = v4 ^ 1;
  if (*(a1 + 1373) == 1 && *(a1 + 288) == *(a1 + 264))
  {
    *(a1 + 1373) = 0;
    *(a1 + 1338) = 0;
  }

  if (*(a1 + 1379) != v6)
  {
    *(a1 + 1379) = v6;
    if ((v4 & 1) == 0 && *(a1 + 1378) == 1)
    {
      md::Label::updateStateMachineForStaging(a1, 4, 37);
    }
  }

  result = *(a1 + 288);
  if (result)
  {
    result = (*(*result + 456))(result, v4 ^ 1u);
  }

  if ((*(a1 + 1379) & 1) == 0)
  {
    v8 = *a2 ? 21 : 20;
    if (*(a1 + 844) == 2 || *(a1 + 845) != v8)
    {

      return md::Label::updateStateMachineForStaging(a1, 6, v8);
    }
  }

  return result;
}

uint64_t md::CaptionedIconLabelPart::setCollisionResult(uint64_t this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 576);
  v5 = *(this + 584);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = (*(*v6 + 456))(v6, a2);
  }

  if (a2)
  {
    v7 = *(v3 + 953);
    *(v3 + 680) = v7;
    if (*(*(v3 + 16) + 1348) == 1)
    {
      *(v3 + 954) = v7;
    }
  }

  return this;
}

BOOL DetermineJunctionVisibility(VKLabelNavJunction *a1, md::NavContext *a2, double a3)
{
  v5 = a1;
  if (((*(**(a2 + 2) + 416))(*(a2 + 2)) & 1) != 0 || (v7 = [(VKLabelNavJunction *)v5 routeOffset], v8 = *(*(*(a2 + 1) + 168) + 32), v9 = (*(*v8 + 64))(v8), *v9 <= v7) && (*v9 == v7 ? (v10 = *(v9 + 4) <= *(&v7 + 1)) : (v10 = 1), v10))
  {
    v6 = 1;
  }

  else
  {
    v11 = *(a2 + 4);
    v12 = *(v11 + 96) * 6.28318531;
    v13 = exp(*(v11 + 104) * 6.28318531 + -3.14159265);
    atan(v13);
    v14 = fmod(v12, 6.28318531);
    fmod(v14 + 6.28318531, 6.28318531);
    v15 = [(VKLabelNavJunction *)v5 mercatorCoordinate];
    v16 = [(VKLabelNavJunction *)v5 mercatorCoordinate];
    v17 = *v15 * 6.28318531;
    v18 = exp(*(v16 + 8) * 6.28318531 + -3.14159265);
    atan(v18);
    v19 = fmod(v17, 6.28318531);
    fmod(v19 + 6.28318531, 6.28318531);
    GEOCalculateDistance();
    v6 = v20 <= a3;
  }

  return v6;
}

uint64_t md::CompositeLabelPart::setCollisionResult(uint64_t this, uint64_t a2)
{
  v2 = *(this + 576);
  for (i = *(this + 584); v2 != i; this = (*(*v5 + 456))(v5, a2))
  {
    v5 = *v2++;
  }

  return this;
}

BOOL gm::OBRect<float>::intersectsUsingInset(float32x2_t *a1, float32x2_t *a2)
{
  v2 = a1->f32[0];
  if (a1->f32[0] <= 0.0)
  {
    return 0;
  }

  v3 = a1->f32[1];
  if (v3 <= 0.0)
  {
    return 0;
  }

  v4 = a2->f32[0];
  if (a2->f32[0] <= 0.0)
  {
    return 0;
  }

  v5 = a2->f32[1];
  if (v5 <= 0.0)
  {
    return 0;
  }

  v6 = vsub_f32(a2[1], a1[1]);
  if (*&a1[2] == *&a2[2])
  {
    if (fabsf(v6.f32[0]) <= (v4 + v2))
    {
      v16 = fabsf(v6.f32[1]);
      return v16 <= (v5 + v3);
    }

    return 0;
  }

  v7 = a2[2].f32[0];
  v8 = a2[2].f32[1];
  v9 = a1[2].f32[0];
  v10 = a1[2].f32[1];
  v11 = -(v5 * v8);
  if (fabsf((v9 * v6.f32[0]) + (v10 * v6.f32[1])) > ((fabsf((v9 * (v7 * v4)) + (v10 * (v8 * v4))) + v2) + fabsf((v11 * v9) + (v10 * (v7 * v5)))))
  {
    return 0;
  }

  if (fabsf(-((v10 * v6.f32[0]) - (v9 * v6.f32[1]))) > ((fabsf(-((v10 * (v7 * v4)) - ((v8 * v4) * v9))) + v3) + fabsf(-((v10 * v11) - (v9 * (v7 * v5))))))
  {
    return 0;
  }

  v12 = v9 * v2;
  v13 = v10 * v2;
  v14 = -(v3 * v10);
  v15 = v9 * v3;
  if (fabsf((v7 * v6.f32[0]) + (v8 * v6.f32[1])) > ((fabsf((v12 * v7) + (v13 * v8)) + v4) + fabsf((v15 * v8) + (v14 * v7))))
  {
    return 0;
  }

  v16 = fabsf(-((v8 * v6.f32[0]) - (v7 * v6.f32[1])));
  v5 = fabsf(-((v12 * v8) - (v13 * v7))) + v5;
  v3 = fabsf(-((v14 * v8) - (v15 * v7)));
  return v16 <= (v5 + v3);
}

uint64_t md::CaptionedIconLabelPart::collidesWithItem(md::CaptionedIconLabelPart *this, float32x2_t *a2, uint64_t a3)
{
  if (*(this + 925) == 1 && (*(*(this + 2) + 1347) & 1) == 0)
  {
    if (md::LabelPart::partCollidesWithItem(**(this + 72), a2, a3))
    {
      v6 = *(this + 2);
      if ((*(v6 + 1334) & 1) == 0)
      {
        v7 = atomic_load((v6 + 1328));
        if ((v7 & 1) == 0)
        {
          return 1;
        }
      }
    }

    v8 = (*(***(this + 72) + 216))(**(this + 72));
    if (v8 != 255 && !*(this + v8 + 792))
    {
      *(this + 953) = 1;
    }
  }

  if (*(this + 926) != 1 || (*(this + 953) & 1) != 0)
  {
    return 0;
  }

  result = md::LabelPart::partCollidesWithItem(*(*(this + 72) + 8 * *(this + 925)), a2, a3);
  if (result)
  {
    if (*(this + 955))
    {
      return 1;
    }

    result = 1;
    if (*(this + 947) == 1)
    {
      *(this + 953) = 1;
      return 0;
    }
  }

  return result;
}

uint64_t md::LabelPart::partCollidesWithItem(uint64_t a1, float32x2_t *a2, uint64_t a3)
{
  v6 = (*(*a1 + 256))(a1);
  v7 = vmul_f32(vsub_f32(v6[1], *v6), 0x3F0000003F000000);
  v8 = vadd_f32(v7, *v6);
  v11[0] = v7;
  v11[1] = v8;
  v11[2] = 1065353216;
  result = gm::OBRect<float>::intersectsUsingInset(a2 + 1, v11);
  if (result)
  {
    v10 = *(*a1 + 464);

    return v10(a1, a2, a3);
  }

  return result;
}

void md::NavLabel::layoutForStagingWithNavContext(md::NavLabel *this, md::NavContext *a2)
{
  v2 = *(this + 38);
  if (!v2)
  {
    return;
  }

  v3 = *(v2 + 640);
  if (!v3)
  {
    return;
  }

  v4 = atomic_load((v3 + 144));
  if ((v4 & 1) == 0)
  {
    return;
  }

  *(this + 315) = 0;
  v7 = 0.0;
  if ((*(this + 312) & 1) == 0)
  {
    if (*(this + 20))
    {
      v8 = *(this + 19);
      v101 = *(this + 136);
    }

    else
    {
      if (a2)
      {
        v9 = md::NavContext::worldPoint(*(*(a2 + 3) + 8), this + 14, *(*(a2 + 3) + 52));
      }

      else
      {
        v9 = 0.0;
        v10 = 0;
        v8 = 0;
      }

      *&v101 = v9;
      *(&v101 + 1) = v10;
    }

    v11 = 0;
    v102 = v8;
    v12 = *(a2 + 3);
    v13 = 864;
    do
    {
      v14 = 0;
      v15 = 0.0;
      v16 = v13;
      do
      {
        v15 = v15 + *(&v101 + v14) * *(v12 + v16);
        v14 += 8;
        v16 += 32;
      }

      while (v14 != 24);
      v97.f64[v11] = *(v12 + 864 + 8 * v11 + 96) + v15;
      ++v11;
      v13 += 8;
    }

    while (v11 != 4);
    __asm { FMOV            V1.2D, #1.0 }

    *(this + 44) = vcvt_f32_f64(vmulq_f64(v97, vdivq_f64(_Q1, vdupq_lane_s64(v99, 0))));
    v21.n128_u64[1] = 0x3F80000000000000;
    v97 = xmmword_1B33B0710;
    v98 = 0.0;
    v100 = 0;
    v103.i8[0] = 0;
    v104 = 0;
    v21.n128_u64[0] = 1.0;
    md::LabelLayoutContext::evaluateWorldPoint(v12, &v101, &v103, 1, 0, &v97, v21);
    if (v100 == 1)
    {
      return;
    }

    v7 = *v97.f64;
    *(this + 43) = v102;
    *(this + 328) = v101;
    v22 = v98;
    *(this + 54) = v22;
  }

  if (*(this + 10) && (*(*this + 32))(this) != 4)
  {
    v28 = *(this + 10);
    v29 = *(this + 11);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v97, v28, v29);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
    }

    v30 = v100;
    if ((v100 & 1) == 0)
    {
      v24 = 0;
      goto LABEL_74;
    }

    *(this + 12) = 0;
    v31 = (this + 96);
    *(this + 104) = 0;
    if (v7 >= 0x17)
    {
      v32 = 23;
    }

    else
    {
      v32 = v7;
    }

    *(this + 104) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*&v97.f64[0] + 24), 343, v32, 2, 0);
    LOBYTE(v101) = 1;
    v33 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<int>(*(*&v97.f64[0] + 24), 132, v32, 2, &v101);
    if (v101)
    {
      v24 = v33;
    }

    else
    {
      v24 = 10;
    }

    v34 = (*(*this + 32))(this);
    if (v34 >= 3)
    {
      if (v34 == 3)
      {
        if (*(this + 312) == 1)
        {
          goto LABEL_40;
        }

        v36 = *(*&v97.f64[0] + 24);
        v37 = 220;
        goto LABEL_48;
      }

      if (v34 != 6)
      {
        *(this + 314) = 0;
        goto LABEL_50;
      }
    }

    if (*(this + 312) == 1)
    {
LABEL_40:
      v35 = *(this + 313);
LABEL_49:
      *(this + 314) = v35 & 1;
LABEL_50:
      v38 = *(this + 10);
      v39 = *(v38 + 16);
      if (!v39 || (v40 = std::__shared_weak_count::lock(v39)) == 0)
      {
        *v31 = 1.0;
        goto LABEL_72;
      }

      v41 = v40;
      if (!*(v38 + 8))
      {
        *v31 = 1.0;
LABEL_71:
        std::__shared_weak_count::__release_shared[abi:nn200100](v41);
LABEL_72:
        gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(222, 2, *(*&v97.f64[0] + 24), 0);
        *(this + 25) = v49;
        if (v100)
        {
          (*(**&v97.f64[0] + 56))(*&v97.f64[0]);
        }

LABEL_74:
        if (v99)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v99);
        }

        if (*&v97.f64[1])
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*&v97.f64[1]);
        }

        if ((v30 & 1) == 0)
        {
          return;
        }

        goto LABEL_79;
      }

      v42 = *(this + 10);
      v43 = *(v42 + 16);
      if (v43)
      {
        v44 = std::__shared_weak_count::lock(v43);
        if (v44)
        {
          v45 = *(v42 + 8);
LABEL_63:
          LOBYTE(v101) = 0;
          v103.i8[0] = 0;
          v46 = 1.0;
          v47 = *(v45 + 520);
          if (v47)
          {
            gss::ClientStyleState<gss::PropertyID>::queryNightMode(v47, &v101, &v103);
            v48 = v103.i8[0];
            if (v101 == 1)
            {
              v46 = gss::StylesheetManager<gss::PropertyID>::nightShieldBrightnessForMapMode(v45);
              if ((v48 & 1) == 0)
              {
                v46 = v46 + ((1.0 - v46) * *(*(v45 + 520) + 272));
              }
            }

            else if (v103.i8[0])
            {
              v46 = ((gss::StylesheetManager<gss::PropertyID>::nightShieldBrightnessForMapMode(v45) + -1.0) * *(*(v45 + 520) + 272)) + 1.0;
            }
          }

          *v31 = v46;
          if (v44)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v44);
          }

          goto LABEL_71;
        }
      }

      else
      {
        v44 = 0;
      }

      v45 = 0;
      goto LABEL_63;
    }

    v36 = *(*&v97.f64[0] + 24);
    v37 = 221;
LABEL_48:
    v35 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v36, v37, v32, 2u, 0);
    goto LABEL_49;
  }

  if (*(this + 8) && (*(*this + 32))(this) == 4)
  {
    md::LabelStyle::setZoom(*(this + 8), v7);
    v23 = *(this + 8);
    v24 = v23[240];
    LOBYTE(v25) = v23[112];
    v26 = v25;
    if (v7 >= v26)
    {
      LOBYTE(v26) = v23[113];
      v27 = v7 <= LODWORD(v26);
    }

    else
    {
      v27 = 0;
    }

    *(this + 314) = v27;
  }

  else
  {
    if ((*(*this + 32))(this) == 4 || *(this + 10) && !*(this + 8))
    {
      (*(*this + 32))(this);
    }

    v24 = 0;
    *(this + 314) = 0;
  }

LABEL_79:
  *&v97.f64[0] = vadd_f32(*(this + 320), *(this + 352));
  (*(**(this + 38) + 960))(*(this + 38), this + 96);
  v50 = *(this + 38);
  v50[556] = 4 * v24;
  (*(*v50 + 968))();
  *(this + 90) = (*(**(this + 38) + 272))();
  *(this + 91) = v51;
  *(this + 92) = v52;
  *(this + 93) = v53;
  if ((*(*this + 32))(this) == 6)
  {
    v54 = 0;
    v55 = 0;
    v56 = *(a2 + 4);
    v57 = v56 + 48;
    v58 = v56 + 56;
    while (*(v58 + 4 * v55) > *(this + v55 + 90))
    {
      v59 = *(v57 + 4 * v55);
      v60 = *(this + v55 + 92);
      v55 = 1;
      v61 = (v59 < v60) & ~v54;
      v54 = 1;
      if ((v61 & 1) == 0)
      {
        _NF = v59 < v60;
        goto LABEL_84;
      }
    }
  }

  else
  {
    v64 = *(this + 92) - *(this + 90);
    v65 = *(this + 74);
    v66 = *(this + 38);
    v67 = *(v66 + 640);
    if (v67 && (v68 = atomic_load((v67 + 143)), (v68 & 1) != 0))
    {
      v69 = (*(**(v66 + 640) + 24))(*(v66 + 640));
    }

    else
    {
      v69 = 0;
    }

    v70 = v64 * 0.5;
    v71 = v64 * v65;
    v72 = *(this + 90);
    v73 = *(this + 92) - v72;
    v74 = *(a2 + 4);
    v75 = v74 + 48;
    v76 = v74 + 56;
    v77 = 0;
    v78 = 0;
    if (v69)
    {
      v79 = (v72 + v70) + (v73 * 0.5);
      v80 = v79 - v71;
      while (1)
      {
        v81 = v79;
        if (v79 < *(v75 + 4 * v78))
        {
          break;
        }

        v82 = *(v76 + 4 * v78);
        v78 = 1;
        v83 = (v79 < v82) & ~v77;
        v77 = 1;
        v79 = *(this + 91) + ((*(this + 93) - *(this + 91)) * 0.5);
        if ((v83 & 1) == 0)
        {
          if (v81 < v82)
          {
            v84 = 0;
            v85 = 0;
            while (1)
            {
              v86 = v80;
              if (v80 < *(v75 + 4 * v85))
              {
                break;
              }

              v87 = *(v76 + 4 * v85);
              v85 = 1;
              v88 = (v80 < v87) & ~v84;
              v84 = 1;
              v80 = *(this + 91) + ((*(this + 93) - *(this + 91)) * 0.5);
              if ((v88 & 1) == 0)
              {
                goto LABEL_110;
              }
            }
          }

          break;
        }
      }
    }

    else
    {
      v89 = (v72 - v70) + (v73 * 0.5);
      v90 = v89 + v71;
      while (1)
      {
        v91 = v89;
        if (v89 < *(v75 + 4 * v78))
        {
          break;
        }

        v92 = *(v76 + 4 * v78);
        v78 = 1;
        v93 = (v89 < v92) & ~v77;
        v77 = 1;
        v89 = *(this + 91) + ((*(this + 93) - *(this + 91)) * 0.5);
        if ((v93 & 1) == 0)
        {
          if (v91 < v92)
          {
            v94 = 0;
            v95 = 0;
            while (1)
            {
              v86 = v90;
              if (v90 < *(v75 + 4 * v95))
              {
                break;
              }

              v87 = *(v76 + 4 * v95);
              v95 = 1;
              v96 = (v90 < v87) & ~v94;
              v94 = 1;
              v90 = *(this + 91) + ((*(this + 93) - *(this + 91)) * 0.5);
              if ((v96 & 1) == 0)
              {
LABEL_110:
                _NF = v86 < v87;
LABEL_84:
                v63 = _NF;
                goto LABEL_105;
              }
            }
          }

          break;
        }
      }
    }
  }

  v63 = 0;
LABEL_105:
  *(this + 315) = v63;
}

void sub_1B2B8B4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, char a13)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  if (a13 == 1)
  {
    (*(*a9 + 56))(a9);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

double md::NavContext::worldPoint(char a1, double *a2, float a3)
{
  v3 = a3;
  result = *a2;
  if ((a1 & 1) == 0)
  {
    v5 = a2[2] * v3;
    v6 = result * 6.28318531;
    v7 = exp(a2[1] * 6.28318531 + -3.14159265);
    v8 = atan(v7) * 2.0 + -1.57079633;
    v9 = fmod(v6, 6.28318531);
    v10 = fmod(v9 + 6.28318531, 6.28318531) + -3.14159265;
    v11 = __sincos_stret(v8);
    return (6378137.0 / sqrt(v11.__sinval * v11.__sinval * -0.00669437999 + 1.0) + v5) * v11.__cosval * __sincos_stret(v10).__cosval;
  }

  return result;
}

uint64_t md::LabelCollisionItem::collidesWithObject(md::LabelCollisionItem *this, const md::CollisionObject *a2)
{
  v2 = *(this + 7);
  if (*(this + 64) == 1)
  {
    v5 = *(v2 + 344);
    if (v5)
    {
      return (*(*v5 + 32))(v5, a2);
    }
  }

  else
  {
    v3 = *(v2 + 288);
    if (v3)
    {
      return (*(*v3 + 472))(v3, a2);
    }
  }

  return 0;
}

uint64_t md::CaptionedIconLabelPart::collidesWithObject(md::CaptionedIconLabelPart *this, const md::CollisionObject *a2)
{
  if (*(this + 925) == 1 && ((*(***(this + 72) + 848))(**(this + 72), a2) & 1) != 0)
  {
    return 1;
  }

  if (*(this + 926) != 1 || (*(this + 680) & 1) != 0)
  {
    return 0;
  }

  v4 = *(**(*(this + 72) + 8 * *(this + 925)) + 848);

  return v4();
}

uint64_t md::LabelPart::partCollidesWithObject(md::LabelPart *this, const md::CollisionObject *a2)
{
  v4 = (*(*this + 256))(this);
  v5 = 0;
  v6 = 1;
  do
  {
    if (*(v4 + 8 + 4 * v5) <= *(a2 + v5 + 20) || *(v4 + 4 * v5) >= *(a2 + v5 + 22))
    {
      return 0;
    }

    v7 = v6;
    v6 = 0;
    v5 = 1;
  }

  while ((v7 & 1) != 0);
  v8 = *(*this + 472);

  return v8(this, a2);
}

void md::LabelLayoutContext::computeZoomAtPoint(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, double a6)
{
  v9 = 0;
  v10 = 136;
  if (a4)
  {
    v10 = 112;
  }

  v11 = a1 + v10;
  do
  {
    *(&v42 + v9) = *(a2 + v9) - *(v11 + v9);
    v9 += 8;
  }

  while (v9 != 24);
  v12 = 0;
  v13 = a1 + 160;
  v14 = 0.0;
  do
  {
    v14 = v14 + *(&v42 + v12) * *(v13 + v12);
    v12 += 8;
  }

  while (v12 != 24);
  if (a3 > 1 || (v15 = v14, *(a1 + 15) == 1))
  {
    v16 = 0;
    v17 = 0.0;
    do
    {
      v17 = v17 + *(&v42 + v16) * *(&v42 + v16);
      v16 += 8;
    }

    while (v16 != 24);
    v15 = sqrt(v17);
  }

  v18 = v15 / a6;
  *(a5 + 16) = v15;
  *(a5 + 24) = v15 / a6;
  if (*(a1 + 1273) == 1 && (v19 = *(a1 + 1276), v20 = *(a1 + 1280), v19 > v20))
  {
    v21 = v14 < *(a1 + 256) - *(a1 + 256) * v20 / v19 || v14 > *(a1 + 256) * v20 / v19 + *(a1 + 256);
  }

  else
  {
    v21 = v14 < *(a1 + 272) || v14 > *(a1 + 280);
  }

  *(a5 + 32) = v21;
  if ((*(a1 + 16) & 1) != 0 || !v21)
  {
    v22 = *(a1 + 264);
    v23 = *(a1 + 256) / v14;
    *(a5 + 12) = v23;
    v24 = *(a1 + 8);
    if (v24 == 1)
    {
      gm::Matrix<double,3,1>::normalized<int,void>(&v42);
    }

    else
    {
      v26 = 0;
      v27 = 0.0;
      do
      {
        v27 = v27 + *(a2 + v26) * *(a2 + v26);
        v26 += 8;
      }

      while (v26 != 24);
      if (sqrt(v27) <= 0.001)
      {
        v40 = *(a1 + 208);
        v41 = *(a1 + 224);
      }

      else
      {
        *&v40 = gm::Matrix<double,3,1>::normalized<int,void>(a2);
        *(&v40 + 1) = v28;
        v41 = v29;
      }

      v30 = 0;
      v25 = 0.0;
      do
      {
        v25 = v25 + *(&v40 + v30) * *(v13 + v30);
        v30 += 8;
      }

      while (v30 != 24);
    }

    v31 = v25 + 1.0;
    v32 = 0.0;
    v33 = fminf(fmaxf(v31, 0.0), 1.0);
    *(a5 + 4) = v33;
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          v37 = *(a1 + 428);
          v38 = log2(v22 * v14);
          v32 = v37 - v38;
          if ((v24 & 1) == 0)
          {
            v32 = *(a1 + 296) + v32;
          }

          if ((*(a1 + 15) & 1) == 0 && v33 > 0.8)
          {
            v32 = fmaxf(v32 + log2f(fmaxf(1.0 - v33, 0.01)), 0.0);
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
      if (a3 - 2 < 4)
      {
        v34 = v18;
        if (a3 > 3)
        {
          if (a3 != 4)
          {
            if (a3 == 5)
            {
              v32 = (logf(fmaxf(220.0 / v34, 0.1) + -1.0) * -5.0) + 25.0;
            }

            goto LABEL_49;
          }

          v35 = log2f(fmaxf(v34 + -3.0, 1.0));
          v36 = 3.1063;
          goto LABEL_48;
        }

        if (a3 != 2)
        {
          v35 = log2f(fmaxf(v34 + -3.0, 1.0));
          v36 = 1.7095;
LABEL_48:
          v32 = v35 * v36;
          goto LABEL_49;
        }

        v32 = log2f(fmaxf(v34, 1.0));
LABEL_49:
        v39 = floor((v32 * 100.0) + 0.5) * 0.01;
        *a5 = fmaxf(v39, 0.0);
        return;
      }

      if (a3 != 6)
      {
        goto LABEL_49;
      }
    }

    v32 = *(a1 + 32);
    goto LABEL_49;
  }
}

BOOL md::LabelSpacingDedupingGroup::isResolved(md::LabelSpacingDedupingGroup *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (a2 >= ((*(this + 2) - v2) >> 3))
  {
    return 0;
  }

  v4 = *(this + 5);
  v3 = *(this + 6);
  if (v4 == v3)
  {
    return 0;
  }

  v5 = *(this + 24);
  v6 = v4 + 8;
  do
  {
    v7 = vsub_f32(*(*(v2 + 8 * a2) + 688), *(*(v6 - 8) + 688));
    v7.f32[0] = vaddv_f32(vmul_f32(v7, v7));
    result = v7.f32[0] < v5;
    v9 = v7.f32[0] < v5 || v6 == v3;
    v6 += 8;
  }

  while (!v9);
  return result;
}

mdm::zone_mallocator *md::LabelDedupingGroup::addResolvedLabel(mdm::zone_mallocator *this, md::LabelBase *a2)
{
  v3 = this;
  v5 = *(this + 6);
  v4 = *(this + 7);
  if (v5 >= v4)
  {
    v7 = *(this + 5);
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v21[4] = this + 64;
    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(this);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelBase *>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[8 * v8];
    v15 = &v13[8 * v11];
    *v14 = a2;
    v6 = v14 + 8;
    v16 = *(v3 + 5);
    v17 = *(v3 + 6) - v16;
    v18 = &v14[-v17];
    memcpy(&v14[-v17], v16, v17);
    v19 = *(v3 + 5);
    *(v3 + 5) = v18;
    *(v3 + 6) = v6;
    v20 = *(v3 + 7);
    *(v3 + 7) = v15;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    this = std::__split_buffer<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator> &>::~__split_buffer(v21);
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 1;
  }

  *(v3 + 6) = v6;
  return this;
}

void *gss::CartoStyle<gss::PropertyID>::hasValueForKeyAtZ(void *result, unsigned __int16 a2, unsigned int a3)
{
  if (result)
  {
    v3 = *result + 120 * *(result + a3 + 16);
    return (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v3, a2) != *(v3 + 12));
  }

  return result;
}

uint64_t md::LabelPart::collidesWithObject(md::LabelPart *this, const md::CollisionObject *a2)
{
  if (*(this + 232) == 0 || (*(a2 + 200) & *(this + 272)) != 0)
  {
    return 0;
  }

  v3 = *(a2 + 21);
  if (*(this + 30))
  {
    v4 = (this + 72);
    if (v3)
    {
      return md::CollisionObject::circlesCollideWithCircles(v4, a2);
    }

    else
    {
      return md::CollisionObject::circlesCollideWithRects(v4, a2);
    }
  }

  else if (v3)
  {
    return md::CollisionObject::circlesCollideWithRects(a2, (this + 72));
  }

  else if ((*(this + 268) & 1) != 0 || *(a2 + 196) == 1)
  {
    return md::CollisionObject::rectsCollideWithRectsOBB((this + 72), a2);
  }

  else
  {
    return md::CollisionObject::rectsCollideWithRects((this + 72), a2);
  }
}

BOOL md::CollisionObject::circlesCollideWithCircles(md::CollisionObject *this, const md::CollisionObject *a2)
{
  v2 = *(a2 + 44);
  if (v2)
  {
    v3 = 0;
    v4 = 1;
    while (1)
    {
      v5 = (*(a2 + 23) + 24 * v3);
      v6 = v5[*(this + 199) + 1].f32[0];
      if (v6 > 0.0)
      {
        v7 = *(this + 44);
        if (v7)
        {
          break;
        }
      }

LABEL_9:
      v4 = ++v3 < v2;
      if (v3 == v2)
      {
        return 0;
      }
    }

    v8 = *(this + 23);
    while (1)
    {
      v9 = v8[*(a2 + 199) + 1].f32[0];
      if (v9 > 0.0)
      {
        v10 = vsub_f32(*v8, *v5);
        if (vaddv_f32(vmul_f32(v10, v10)) < ((v9 + v6) * (v9 + v6)))
        {
          break;
        }
      }

      v8 += 3;
      if (!--v7)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    return 0;
  }

  return v4;
}

float md::NavRoadSignLabelPart::updateWithNavLabelStyle(uint64_t a1, uint64_t a2)
{
  md::NavLabelPart::updateWithNavLabelStyle(a1, a2);
  result = *(a2 + 4);
  *(a1 + 596) = result;
  return result;
}

uint64_t md::LabelCollisionItem::nextPlacementCandidate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 56);
  if ((*(**(v8 + 288) + 544))(*(v8 + 288), a2))
  {
    v20 = 150994944;
    v21 = 0;
    if ((*(**(v8 + 288) + 584))(*(v8 + 288), a4, a5, *(v8 + 328), a3, &v20))
    {
      if (__PAIR64__(BYTE1(v20), v20) == __PAIR64__(*(v8 + 313), *(v8 + 312)) && HIBYTE(v20) == *(v8 + 315) && (HIBYTE(v20) != 10 || v21 == *(v8 + 316)))
      {
        return v8 + 40;
      }

      (*(**(v8 + 288) + 608))(&v19);
      v9 = v19;
      v19 = 0;
      v10 = *(v8 + 1320);
      *(v8 + 1320) = v9;
      if (v10)
      {
        std::default_delete<md::LabelPartTransferResource>::operator()[abi:nn200100](v10);
        v11 = v19;
        v19 = 0;
        if (v11)
        {
          std::default_delete<md::LabelPartTransferResource>::operator()[abi:nn200100](v11);
        }
      }

      (*(**(v8 + 288) + 456))(*(v8 + 288), 0);
      if (*(v8 + 288))
      {
        *(v8 + 288) = 0;
        *(v8 + 1335) = 1;
      }

      v12 = *(v8 + 312);
      v13 = *(v8 + 313);
      v14 = *(v8 + 315);
      *(v8 + 321) = v21;
      *(v8 + 317) = v20;
      LOWORD(v19) = 257;
      BYTE2(v19) = 1;
      md::Label::layoutForStaging(v8, a4, 0, &v19);
      v15 = *(v8 + 1320);
      *(v8 + 1320) = 0;
      if (v15)
      {
        std::default_delete<md::LabelPartTransferResource>::operator()[abi:nn200100](v15);
      }

      if ((*(v8 + 1378) & 1) == 0)
      {
        if (*(v8 + 1334) & 1) != 0 || (v18 = atomic_load((v8 + 1328)), (v18))
        {
          *(v8 + 317) = v12;
          *(v8 + 318) = v13;
          *(v8 + 319) = 0;
          *(v8 + 320) = v14;
          LOWORD(v19) = 257;
          BYTE2(v19) = 1;
          md::Label::layoutForStaging(v8, a4, 0, &v19);
        }
      }

      if (*(v8 + 1378) == 1)
      {
        v16 = *(v8 + 288);
        if (v16)
        {
          (*(*v16 + 448))(v16);
        }

        return v8 + 40;
      }
    }
  }

  return 0;
}

uint64_t md::NavLabelPart::updateWithNavLabelStyle(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != *(result + 832))
  {
    v3 = result;
    *(result + 832) = v2;
    *(result + 565) = v2 != 0;
    if (v2)
    {
      operator new();
    }

    result = *(result + 840);
    *(v3 + 840) = 0;
    if (result)
    {

      JUMPOUT(0x1B8C62190);
    }
  }

  return result;
}

__n128 md::NavLabelPart::layoutForStagingWithNavContext(uint64_t a1, uint64_t a2, _DWORD *a3, __n128 result)
{
  v4 = *(a1 + 640);
  if (v4)
  {
    v8 = 0;
    v9 = 0;
    v10 = a1 + 72;
    do
    {
      v11 = *(a1 + 80 + 4 * v9);
      v12 = *(v10 + 4 * v9);
      if (v8)
      {
        break;
      }

      v8 = 1;
      v9 = 1;
    }

    while (v11 >= v12);
    if (v11 < v12)
    {
      v13 = atomic_load((v4 + 144));
      if (v13)
      {
        v14 = *(v4 + 64);
      }

      else
      {
        v14 = xmmword_1B33B0730;
      }

      v20[0] = v14;
      md::CollisionObject::resetWithRects((a1 + 72), 1u);
      md::CollisionObject::addRect(v10, v20);
    }

    *(a1 + 280) = *a3;
    *(a1 + 284) = a3[1];
    *(a1 + 104) = *a3;
    *(a1 + 108) = a3[1];
    md::CollisionObject::setupShapeData(v10);
    if (*(a1 + 565) == 1)
    {
      v17 = 0;
      v18 = 0;
      v19 = 1;
      md::LabelPart::generateModelMatrixForMeshPositioningMode(v20, &v17, *(a2 + 24), (a1 + 848), *(a1 + 830), 1, *(a1 + 832), *(*(a1 + 32) + 24), *(*(a1 + 32) + 20));
      v15 = 0;
      v16 = *(a1 + 840);
      do
      {
        result = v20[v15];
        *(v16 + v15 * 16) = result;
        ++v15;
      }

      while (v15 != 8);
    }
  }

  return result;
}

uint64_t md::CaptionedIconLabelPart::supportsAlternatePlacements(uint64_t a1, unsigned int a2)
{
  if (a2 <= 1 && *(a1 + 926) == 1)
  {
    if (*(a1 + 800) == *(a1 + 808))
    {
      v2 = *(a1 + 947);
      if (v2 != 1)
      {
        LOBYTE(v2) = *(a1 + 794);
      }
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t md::CaptionedIconLabelPart::collideIconPart(md::CaptionedIconLabelPart *this, const md::LabelManager *a2, md::LabelCollider *a3, md::LabelCollidableItem *a4)
{
  if ((*(this + 931) & 1) == 0)
  {
    *(this + 931) = 1;
    if (*(this + 925) == 1)
    {
      v5 = *(this + 2);
      if ((v5[1347] & 1) == 0)
      {
        v7 = **(this + 72);
        if (v5[1334] & 1) != 0 || (v8 = atomic_load(v5 + 1328), (v8))
        {
          v9 = *(a2 + 53);
          *&v10 = (*(*v7 + 272))(**(this + 72));
          v11 = 0;
          v12 = 0;
          v31.i64[0] = __PAIR64__(v13, v10);
          v14 = &v31;
          v31.i64[1] = __PAIR64__(v16, v15);
          do
          {
            if (v14->f32[0] < *(v9 + 1104 + 4 * v12))
            {
              *(this + 932) = 1;
              return *(this + 932);
            }

            v17 = v31.f32[v12 + 2];
            v18 = *(v9 + 1112 + 4 * v12);
            v19 = v11 | (v17 > v18);
            v11 = 1;
            v14 = &v31.i32[1];
            v12 = 1;
          }

          while ((v19 & 1) == 0);
          *(this + 932) = v17 > v18;
          if (v17 > v18)
          {
            return *(this + 932);
          }
        }

        else
        {
          v31.i64[0] = &unk_1F2A5BC08;
          v31.i64[1] = v7;
          v32 = 0;
          v30 = 1;
          v20 = md::LabelCollider::collideCandidate(a3, a4, &v31, &v29);
          v21 = v30 | ~v20;
          *(this + 932) = v30 & 1 | ((v20 & 1) == 0);
          if (v21)
          {
            return *(this + 932);
          }
        }

        v22 = (*(*v7 + 272))(v7);
        v31.i64[0] = __PAIR64__(v23, v22.u32[0]);
        v31.i64[1] = __PAIR64__(v25, v24);
        v22.i64[0] = *(this + 35);
        *(this + 218) = gm::Box<float,2>::operator-(&v31, v22);
        *(this + 219) = v26;
        *(this + 220) = v27;
        *(this + 221) = v28;
        return *(this + 932);
      }
    }

    *(this + 932) = 0;
    *(this + 872) = 0u;
  }

  return *(this + 932);
}

uint64_t md::CaptionedIconLabelPart::findAlternatePlacement(md::CaptionedIconLabelPart *a1, uint64_t a2, md::LabelCollider *a3, md::LabelCollidableItem *a4, uint64_t a5, uint64_t a6)
{
  if ((md::CaptionedIconLabelPart::collideIconPart(a1, a2, a3, a4) & 1) == 0)
  {
    if (*(a2 + 3664) == 1 && ((*(**(*(a2 + 168) + 32) + 8))(*(*(a2 + 168) + 32)) & 1) == 0)
    {
      v11 = (*(*a1 + 568))(a1);
      if (md::CaptionedIconLabelPart::tryAlternatePlacements(a1, v11, 0, 0, a2, a3, a4, a6))
      {
        return 1;
      }
    }

    v12 = *(a1 + 947);
    if (v12 == 1)
    {
      goto LABEL_12;
    }

    if (v12 == 2)
    {
      v13 = *(a1 + 2);
      if (*(v13 + 1334))
      {
        goto LABEL_13;
      }

      v14 = atomic_load((v13 + 1328));
      if (v14)
      {
        goto LABEL_13;
      }

      if (*(a1 + 947) == 2 && *(a1 + 794) == 1)
      {
        (*(***(a1 + 72) + 224))(**(a1 + 72), *(a1 + 795));
LABEL_12:
        *(a1 + 953) = 1;
LABEL_13:
        v15 = *(a1 + 208);
        *(a6 + 4) = *(a1 + 836);
        *a6 = v15;
        return 1;
      }
    }
  }

  return 0;
}

uint64_t md::RoadSignLabelIcon::isIconRTL(id *this)
{
  v1 = this[20];
  v2 = *([v1 textMetrics] + 137);

  return v2;
}

uint64_t md::LabelCollisionItem::isAlwaysVisible(md::LabelCollisionItem *this)
{
  v1 = *(this + 7);
  if (*(v1 + 1334))
  {
    v2 = 1;
  }

  else
  {
    v2 = atomic_load((v1 + 1328));
  }

  return v2 & 1;
}

BOOL md::CurvedTextLabelPart::supportsAlternatePlacements(uint64_t a1, unsigned int a2, uint64_t a3)
{
  result = 0;
  if (a2 <= 1 && *(a1 + 1492) == 2)
  {
    if (*(a1 + 1485) != 8)
    {
      return 0;
    }

    v5 = *(a3 + 8);
    v6 = v5[52];
    if ((v6 & 0xFFFFFFFD) != 1)
    {
      return 0;
    }

    result = 1;
    if (v6 == 3 && (*(a3 + 1) & 1) != 0)
    {
      v7 = (*(*v5 + 48))(*(a3 + 8));
      if ((v8 & 1) == 0)
      {
        return 1;
      }

      v9 = *(a1 + 1024);
      v10 = 16;
      if (*(v9 + 197))
      {
        v10 = 24;
      }

      return fabsf((*(v9 + v10) * *&v7) + (*(v9 + v10 + 4) * *(&v7 + 1))) >= 0.8;
    }
  }

  return result;
}

uint64_t md::CollisionObject::circlesCollideWithRects(md::CollisionObject *this, const md::CollisionObject *a2)
{
  v2 = *(a2 + 44);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(a2 + 199);
  v5 = *(this + 199);
  v6 = *(this + 44);
  v7 = *(a2 + 23);
  v8 = *(this + 44);
  do
  {
    v9 = (v7 + 24 * v3);
    v10 = v9[v5 + 1];
    v11 = vneg_f32(v10);
    v28 = v11;
    v29 = v10;
    if (v8)
    {
      v12 = 0;
      do
      {
        v13 = (*(this + 23) + 24 * v12);
        v14 = v13[v4 + 1].f32[0];
        if (v14 > 0.0)
        {
          v15 = vsub_f32(*v13, *v9);
          if (*(a2 + 196) == 1)
          {
            v16 = vmul_n_f32(v15, *(a2 + 4));
            v17 = vrev64_s32(vmul_n_f32(v15, *(a2 + 5)));
            v18 = vsub_f32(v16, v17);
            v15.i32[0] = vadd_f32(v16, v17).u32[0];
            v15.i32[1] = v18.i32[1];
          }

          v19 = 0;
          v20 = &v28;
          v21 = 1;
          while (v29.f32[v19] >= *v20)
          {
            v23 = v21;
            v21 = 0;
            v20 = &v28 + 1;
            v19 = 1;
            if ((v23 & 1) == 0)
            {
              v24 = vmaxnm_f32(vsub_f32(v15, v10), vsub_f32(v11, v15));
              if (v24.f32[0] < v14 && v24.f32[1] < v14)
              {
                if (v24.f32[0] <= 0.0)
                {
                  return 1;
                }

                v24.f32[0] = vaddv_f32(vmul_f32(v24, v24));
                v26 = v14 * v14;
                if (v24.f32[1] <= 0.0 || v24.f32[0] < v26)
                {
                  return 1;
                }
              }

              break;
            }
          }
        }

        ++v12;
      }

      while (v12 < v6);
      v8 = v6;
    }

    ++v3;
  }

  while (v3 < v2);
  return 0;
}

unint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,0>(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *(*a2 + 52);
  v7 = *(*result + 52);
  v8 = v6 < v7;
  if (v6 == v7)
  {
    v8 = *a2 < *result;
  }

  v9 = *a3;
  v10 = *(*a3 + 52);
  v11 = v10 == v6;
  v12 = v10 < v6;
  if (v11)
  {
    v12 = *a3 < v4;
  }

  if (v8)
  {
    if (v12)
    {
      *result = v9;
LABEL_17:
      *a3 = v5;
      v4 = v5;
      goto LABEL_19;
    }

    *result = v4;
    *a2 = v5;
    v4 = *a3;
    v17 = *(*a3 + 52);
    v11 = v17 == v7;
    v18 = v17 < v7;
    if (v11)
    {
      v18 = *a3 < v5;
    }

    if (v18)
    {
      *a2 = v4;
      goto LABEL_17;
    }
  }

  else if (v12)
  {
    *a2 = v9;
    *a3 = v4;
    v13 = *result;
    v14 = *(*a2 + 52);
    v15 = *(*result + 52);
    v11 = v14 == v15;
    v16 = v14 < v15;
    if (v11)
    {
      v16 = *a2 < *result;
    }

    if (v16)
    {
      *result = *a2;
      *a2 = v13;
      v4 = *a3;
    }
  }

  else
  {
    v4 = *a3;
  }

LABEL_19:
  v19 = *(*a4 + 52);
  v20 = *(v4 + 52);
  v11 = v19 == v20;
  v21 = v19 < v20;
  if (v11)
  {
    v21 = *a4 < v4;
  }

  if (v21)
  {
    *a3 = *a4;
    *a4 = v4;
    v22 = *a2;
    v23 = *(*a3 + 52);
    v24 = *(*a2 + 52);
    v11 = v23 == v24;
    v25 = v23 < v24;
    if (v11)
    {
      v25 = *a3 < *a2;
    }

    if (v25)
    {
      *a2 = *a3;
      *a3 = v22;
      v26 = *result;
      v27 = *(*a2 + 52);
      v28 = *(*result + 52);
      v11 = v27 == v28;
      v29 = v27 < v28;
      if (v11)
      {
        v29 = *a2 < *result;
      }

      if (v29)
      {
        *result = *a2;
        *a2 = v26;
      }
    }
  }

  return result;
}

uint64_t md::CaptionedIconLabelPart::tryAlternatePlacements(uint64_t a1, char a2, int a3, char a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  LOBYTE(v9) = a2;
  v74 = *MEMORY[0x1E69E9840];
  v64 = 256;
  v65 = 0;
  v11 = *(*(a1 + 576) + 8 * *(a1 + 925));
  v60 = v11[3];
  v67 = &unk_1F2A5BC40;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v73 = 0;
  v66[4] = &v71;
  v12 = mdm::zone_mallocator::instance(a1);
  v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::CollisionObject>(v12, 2);
  std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator>,md::CollisionObject*>(0, 0, v13);
  v14 = v68;
  v15 = v70;
  v68 = v13;
  v69 = v13;
  v70 = v13 + 52;
  v66[2] = v14;
  v66[3] = v15;
  v66[0] = v14;
  v66[1] = v14;
  std::__split_buffer<md::CollisionObject,geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator> &>::~__split_buffer(v66);
  v17 = *(a1 + 800);
  v18 = *(a1 + 808);
  if (v17 != v18)
  {
    v19 = a4;
    while ((v9 & 1) != 0 || (v19 & 1) == 0 && (v17[2] & 1) != 0)
    {
LABEL_59:
      v9 = 0;
LABEL_60:
      v17 += 5;
      if (v17 == v18)
      {
        goto LABEL_68;
      }
    }

    v20 = *v17;
    v22 = v20 == 3 || v20 == 100;
    if ((v20 - 2) >= 2)
    {
      if (v20 == 5)
      {
        v26 = md::CaptionedIconLabelPart::evaluateFeatureNormalTextPosition(*(a1 + 16), *(a5 + 424), v16);
      }

      else
      {
        v26 = v17[3];
      }
    }

    else
    {
      v23 = *(*(a5 + 424) + 472) + v17[4];
      v24 = ((v23 + 32) >> 5) & 6;
      v25 = (v23 + 16) >> 5;
      if (*(a1 + 856) == 1)
      {
        v26 = v25;
      }

      else
      {
        v26 = v24;
      }
    }

    v27 = v17[1];
    if (v27 != 16 || (v26 != 6 ? (v27 = 1) : (v27 = 8), v26 != 2))
    {
      if (v27 > 7)
      {
        if (v27 != 8)
        {
          goto LABEL_41;
        }

        v28 = &diagonalDownLabelAnchors;
        goto LABEL_36;
      }

      if (v27 == 1)
      {
LABEL_30:
        v29 = md::CaptionedIconLabelPart::textAlignmentForPosition(a1, v26, v27);
        LODWORD(v30) = md::CaptionedIconLabelPart::textOriginOffsetForPosition(a1, 0, v26, v22, v27, (a1 + 872), (v60 + 72), v11).u32[0];
        v32 = v31;
        v66[0] = 1065353216;
        if ((v27 & 0xC) != 0)
        {
          v33 = 0.57358;
          v34 = 0.81915;
          if (v27 != 4)
          {
            if (v27 == 8)
            {
              v33 = -0.57358;
              v34 = 0.81915;
            }

            else
            {
              v34 = 1.0;
              v33 = 0.0;
            }
          }

          v66[0] = __PAIR64__(LODWORD(v33), LODWORD(v34));
        }

        else
        {
          v34 = 1.0;
          v33 = 0.0;
        }

        v39 = *(a5 + 424);
        if (*(v39 + 18) == 1)
        {
          v40 = *(v39 + 464);
          v41 = *(v39 + 468);
          *v66 = -((v33 * v41) - (v40 * v34));
          *(v66 + 1) = (v41 * v34) + (v33 * v40);
          v42 = v41 * v32;
          v32 = (v40 * v32) + (v41 * v30);
          v30 = -(v42 - (v40 * v30));
        }

        v44 = v68;
          ;
        }

        v69 = v44;
        v73 = 0;
        (*(*v11 + 592))(v11, &v67, v26, *(a1 + 930), v29, v66, *(a1 + 280) + v30, *(a1 + 284) + v32);
        v19 = a4;
        if (*(a1 + 960) == 1)
        {
          if ((v73 & 0x100) == 0)
          {
            HIBYTE(v73) = 1;
            v72 = xmmword_1B33B0730;
            v51 = v68;
            v52 = v69;
            while (v51 != v52)
            {
              v53 = 0;
              v54 = 1;
              do
              {
                *(&v72 + v53) = fminf(*(v51 + v53 + 12), *(&v72 + v53));
                v55 = v54;
                *(&v72 + v53 + 2) = fmaxf(*(&v72 + v53 + 2), *(v51 + v53 + 14));
                v53 = 1;
                v54 = 0;
              }

              while ((v55 & 1) != 0);
              v51 += 26;
            }
          }

          v45 = 0;
          v46 = *(a5 + 424);
          v47 = v46 + 1136;
          v48 = v46 + 1144;
          v49 = 1;
          while (*(&v72 + v45) >= *(v47 + 4 * v45) && *(&v72 + v45 + 2) <= *(v48 + 4 * v45))
          {
            v50 = v49;
            v49 = 0;
            v45 = 1;
            if ((v50 & 1) == 0)
            {
              goto LABEL_56;
            }
          }
        }

        else
        {
LABEL_56:
          if (md::LabelCollider::collideCandidate(a6, a7, &v67, &v64) && (v64 & 0x100) == 0)
          {
            v57 = *v17;
            *(a8 + 4) = v17[4];
            *a8 = v57;
            v9 = 1;
            goto LABEL_68;
          }
        }

        if (a3)
        {
          goto LABEL_67;
        }

        goto LABEL_59;
      }

      if (v27 != 4)
      {
        goto LABEL_41;
      }
    }

    v27 = 4;
    v28 = &diagonalUpLabelAnchors;
LABEL_36:
    v35 = &v28[2 * v26];
    v36 = *v35;
    v37 = v35[1];
    if (v36)
    {
      v38 = v37 == 0;
    }

    else
    {
      v38 = 1;
    }

    if (v38)
    {
LABEL_41:
      v9 = 0;
      if (a3)
      {
        goto LABEL_68;
      }

      goto LABEL_60;
    }

    goto LABEL_30;
  }

LABEL_67:
  v9 = 0;
LABEL_68:
  v67 = &unk_1F2A5BC40;
  v66[0] = &v68;
  std::vector<md::CollisionObject,geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v66);
  return v9;
}

void sub_1B2B8D1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  std::vector<md::CollisionObject,geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *std::__split_buffer<md::CollisionObject,geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 208;
    md::CollisionObject::~CollisionObject((i - 208));
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::CollisionObject>(v5, v4);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator>,md::CollisionObject*>(void **a1, md::CollisionObject *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      md::CollisionObject::CollisionObject(a3, v6);
      v6 += 13;
      a3 += 208;
    }

    while (v6 != a2);
    do
    {
      md::CollisionObject::~CollisionObject(v5);
      v5 += 26;
    }

    while (v5 != a2);
  }
}

uint64_t md::HorizontalTextLabelPart::populateCollisionObjects(float32x2_t *a1, uint64_t a2, float a3, float a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v13 = a2 + 8;
  std::vector<md::CollisionObject,geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator>>::resize(a2 + 8, 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 16) - *(a2 + 8)) >> 4) + 1);
  v14 = *(v13 + 8);
  v15 = *a8;
  *(v14 - 192) = *a8;
  *(v14 - 188) = *(a8 + 4);
  *(v14 - 12) = fabsf(v15 + -1.0) > 0.000001;
  v16 = a1[29];
  if (v16)
  {
    v17 = a1[31].u32[0];
  }

  else
  {
    v17 = 0;
  }

  v18 = a1 + 1;
  v19 = vld1_dup_f32(v18);
  *(v14 - 112) = vadd_f32(a1[21], v19);
  md::CollisionObject::resetWithRects((v14 - 208), v17);
  if (v17)
  {
    v20 = *&v16 + 8;
    do
    {
      v21 = *v20 - *(v20 - 8);
      if (a7 == 1)
      {
        v22 = a1[130].f32[0] * -0.5;
      }

      else if (a7 == 2)
      {
        v22 = -(v21 + (a1[130].f32[0] * -0.5));
      }

      else
      {
        v22 = v21 * -0.5;
      }

      v23 = *(v20 - 4);
      v24 = *(v20 + 4);
      *v26 = v22;
      v26[1] = v23;
      *&v26[2] = v22 + v21;
      v26[3] = v24;
      md::CollisionObject::addRect(v14 - 208, v26);
      v20 += 16;
      --v17;
    }

    while (v17);
  }

  *(v14 - 176) = a3;
  *(v14 - 172) = a4;

  return md::CollisionObject::setupShapeData(v14 - 208);
}

void std::vector<md::CollisionObject,geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator>>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *a1;
  v6 = v4 - *a1;
  v7 = 0x4EC4EC4EC4EC4EC5 * (v6 >> 4);
  v8 = a2 >= v7;
  v9 = a2 - v7;
  if (v9 != 0 && v8)
  {
    v10 = *(a1 + 16);
    if (0x4EC4EC4EC4EC4EC5 * ((v10 - v4) >> 4) >= v9)
    {
      v22 = v4 + 208 * v9;
      do
      {
        *v4 = xmmword_1B33B0730;
        *(v4 + 16) = 1065353216;
        *(v4 + 24) = 1065353216;
        *(v4 + 36) = 0;
        *(v4 + 28) = 0;
        *(v4 + 44) = 0;
        *(v4 + 48) = xmmword_1B33B0730;
        *(v4 + 64) = xmmword_1B33B0730;
        *(v4 + 80) = xmmword_1B33B0730;
        *(v4 + 96) = xmmword_1B33B0720;
        *(v4 + 152) = 0;
        *(v4 + 112) = 0;
        *(v4 + 120) = 0;
        *(v4 + 128) = 0;
        *(v4 + 160) = 0uLL;
        *(v4 + 176) = 0uLL;
        *(v4 + 185) = 0uLL;
        v4 += 208;
      }

      while (v4 != v22);
      *(a1 + 8) = v22;
    }

    else
    {
      if (a2 > 0x13B13B13B13B13BLL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v11 = 0x4EC4EC4EC4EC4EC5 * ((v10 - v5) >> 4);
      v12 = 2 * v11;
      if (2 * v11 <= a2)
      {
        v12 = a2;
      }

      if (v11 >= 0x9D89D89D89D89DLL)
      {
        v13 = 0x13B13B13B13B13BLL;
      }

      else
      {
        v13 = v12;
      }

      v25 = a1 + 24;
      v14 = mdm::zone_mallocator::instance(v4);
      v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::CollisionObject>(v14, v13);
      *(&v24 + 1) = &v15[208 * v13];
      v16 = &v15[v6];
      do
      {
        *v16 = xmmword_1B33B0730;
        *(v16 + 2) = 1065353216;
        *(v16 + 6) = 1065353216;
        *(v16 + 36) = 0;
        *(v16 + 28) = 0;
        *(v16 + 11) = 0;
        *(v16 + 3) = xmmword_1B33B0730;
        *(v16 + 4) = xmmword_1B33B0730;
        *(v16 + 5) = xmmword_1B33B0730;
        *(v16 + 6) = xmmword_1B33B0720;
        v16[152] = 0;
        *(v16 + 14) = 0;
        *(v16 + 15) = 0;
        v16[128] = 0;
        *(v16 + 10) = 0uLL;
        *(v16 + 11) = 0uLL;
        *(v16 + 185) = 0uLL;
        v16 += 208;
      }

      while (v16 != &v15[208 * a2]);
      *&v24 = &v15[208 * a2];
      v17 = *(a1 + 8);
      v18 = &v15[v6 + *a1 - v17];
      std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator>,md::CollisionObject*>(*a1, v17, v18);
      v19 = *a1;
      *a1 = v18;
      v20 = *(a1 + 16);
      *(a1 + 8) = v24;
      *&v24 = v19;
      *(&v24 + 1) = v20;
      v23[0] = v19;
      v23[1] = v19;
      std::__split_buffer<md::CollisionObject,geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator> &>::~__split_buffer(v23);
    }
  }

  else if (!v8)
  {
    v21 = &v5[26 * a2];
    while (v4 != v21)
    {
      md::CollisionObject::~CollisionObject((v4 - 208));
    }

    *(a1 + 8) = v21;
  }
}

uint64_t md::MultiCollisionObjectPlacementCandidate::collisionBounds(md::MultiCollisionObjectPlacementCandidate *this)
{
  if ((*(this + 72) & 1) == 0)
  {
    *(this + 40) = xmmword_1B33B0730;
    *(this + 72) = 1;
    v1 = *(this + 1);
    for (i = *(this + 2); v1 != i; v1 += 208)
    {
      v3 = 0;
      v4 = 1;
      do
      {
        *(this + v3 + 10) = fminf(*(v1 + 80 + 4 * v3), *(this + v3 + 10));
        v5 = v4;
        *(this + v3 + 12) = fmaxf(*(this + v3 + 12), *(v1 + 88 + 4 * v3));
        v3 = 1;
        v4 = 0;
      }

      while ((v5 & 1) != 0);
    }
  }

  return this + 40;
}

uint64_t md::MultiCollisionObjectPlacementCandidate::collidesWithItem(uint64_t a1, float32x2_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  while (1)
  {
    v5 = v2[10];
    v7[0] = vmul_f32(vsub_f32(v2[11], v5), 0x3F0000003F000000);
    v7[1] = vadd_f32(v7[0], v5);
    v7[2] = 1065353216;
    if (gm::OBRect<float>::intersectsUsingInset(a2 + 1, v7) && ((*(*a2 + 16))(a2, v2) & 1) != 0)
    {
      break;
    }

    v2 += 26;
    if (v2 == v3)
    {
      return 0;
    }
  }

  return 1;
}

BOOL md::CollisionObject::rectsCollideWithRects(md::CollisionObject *this, const md::CollisionObject *a2)
{
  v2 = *(a2 + 44);
  if (v2)
  {
    v3 = 0;
    v4 = *(a2 + 23);
    v5 = 2 * *(a2 + 199);
    v6 = 1;
    while (!*(this + 44))
    {
LABEL_8:
      v6 = ++v3 < v2;
      if (v3 == v2)
      {
        return 0;
      }
    }

    v7 = (v4 + 24 * v3);
    v8 = *(this + 23);
    v9 = &v7[2 * *(this + 199)];
    v11 = v9[2];
    v10 = v9 + 2;
    v12 = v11;
    v13 = *(this + 44);
    while (vabds_f32(*v8, *v7) >= (v12 + v8[v5 + 2]) || vabds_f32(v8[1], v7[1]) >= (v10[1] + v8[v5 + 3]))
    {
      v8 += 6;
      if (!--v13)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    return 0;
  }

  return v6;
}

void md::CollisionObject::~CollisionObject(void **this)
{
  free(this[20]);
  free(this[21]);
  free(this[23]);
}

void std::vector<md::CollisionObject,geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator ***result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        md::CollisionObject::~CollisionObject(v4 - 26);
      }

      while (v4 != v2);
      v5 = **result;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::CollisionObject>(v6, v5);
  }
}

float **geo::range_map<geo::Unit<geo::RadianUnitDescription,float>,md::OrientationAction,std::less<geo::Unit<geo::RadianUnitDescription,float>>,std::allocator<std::pair<gm::Range<geo::Unit<geo::RadianUnitDescription,float>> const,md::OrientationAction>>>::find(void *a1, float a2)
{
  v4 = *a1;
  v2 = (a1 + 1);
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
          v14 = *(v13 + 1);
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
              v11 = *(v13 + 2);
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

      if (v11[8] <= a2)
      {
        v15 = *(v11 + 1);
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
            v3 = *(v11 + 2);
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

  v16 = *(v3 + 7) > a2 || *(v3 + 8) <= a2;
  if (v16)
  {
    return v2;
  }

  return v3;
}

std::__shared_weak_count *std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::push_back[abi:nn200100](std::__shared_weak_count *result, __int128 *a2)
{
  v3 = result;
  shared_owners = result->__shared_owners_;
  shared_weak_owners = result->__shared_weak_owners_;
  if (shared_owners >= shared_weak_owners)
  {
    v8 = (shared_owners - result->__vftable) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = shared_weak_owners - result->__vftable;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v23 = result + 1;
    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(result);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::NavLabel>>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[16 * v8];
    v15 = *a2;
    *v14 = *a2;
    if (*(&v15 + 1))
    {
      atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v16 = &v13[16 * v11];
    v7 = v14 + 16;
    v17 = v3->__shared_owners_ - v3->__vftable;
    v18 = &v14[-v17];
    memcpy(&v14[-v17], v3->__vftable, v17);
    v19 = v3->__vftable;
    v3->__vftable = v18;
    v3->__shared_owners_ = v7;
    v20 = v3->__shared_weak_owners_;
    v3->__shared_weak_owners_ = v16;
    v21.__shared_weak_owners_ = v19;
    v22 = v20;
    v21.__vftable = v19;
    v21.__shared_owners_ = v19;
    result = std::__split_buffer<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator> &>::~__split_buffer(&v21);
  }

  else
  {
    v6 = *(a2 + 1);
    *shared_owners = *a2;
    *(shared_owners + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = shared_owners + 16;
  }

  v3->__shared_owners_ = v7;
  return result;
}

uint64_t *std::unique_ptr<md::VenueLogicContext>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::~__hash_table((v2 + 304));
    v3 = *(v2 + 120);
    if (v3)
    {
      *(v2 + 128) = v3;
      operator delete(v3);
    }

    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 80);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 40);
    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>>>::~__hash_table(v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void sub_1B2B8E4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a10);

  _Unwind_Resume(a1);
}

std::__shared_weak_count *geo::codec::multiSectionFeaturePointsWithElevation(std::__shared_weak_count *result, unint64_t a2, void *a3, void *a4)
{
  if (!result)
  {
    v13 = 0;
    goto LABEL_14;
  }

  if (LODWORD(result[4].__vftable) <= a2)
  {
LABEL_11:
    v13 = 0;
    result = 0;
LABEL_14:
    *a4 = v13;
    return result;
  }

  v6 = a4;
  v7 = result;
  result = geo::codec::vertexPoolForFeature(result);
  if (!result)
  {
    v13 = 0;
    a4 = v6;
    goto LABEL_14;
  }

  shared_owners = result[1].__shared_owners_;
  if (shared_owners)
  {
    a4 = v6;
    v9 = HIDWORD(v7[3].__shared_weak_owners_) + a2;
    if (result[1].__shared_weak_owners_ > v9)
    {
      v10 = *(shared_owners + 16 * v9);
      if (v10 < result->__shared_weak_owners_)
      {
        v11 = result;
        result = (result->__shared_owners_ + 8 * v10);
        if (a3)
        {
          v12 = v11[1].__vftable;
          if (v12)
          {
            *a3 = v12 + 4 * v10;
          }
        }

        v13 = *(shared_owners + 16 * v9 + 8);
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  return 0;
}

uint64_t ggl::DaVinci::RibbonPipelineSetup::textureIsEnabled(ggl::DaVinci::RibbonPipelineSetup *this, uint64_t a2)
{
  v2 = 1;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(*(this + 2) + 315);
      return v2 & 1;
    }

    if (a2 != 3)
    {
      goto LABEL_7;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = *(*(this + 2) + 309);
      return v2 & 1;
    }

LABEL_7:
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t ggl::DaVinci::RibbonPipelineSetup::constantDataIsEnabled(ggl::DaVinci::RibbonPipelineSetup *this, unint64_t a2)
{
  if (a2 > 0xA)
  {
    v2 = 0;
  }

  else if (((1 << a2) & 0x3BF) != 0)
  {
    v2 = 1;
  }

  else if (a2 == 6)
  {
    v2 = *(*(this + 2) + 335);
  }

  else
  {
    v2 = *(*(this + 2) + 315);
  }

  return v2 & 1;
}

char *std::vector<ggl::Texture *,geo::allocator_adapter<ggl::Texture *,ggl::zone_mallocator>>::__vallocate[abi:nn200100](ggl::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = ggl::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Texture *>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[8 * a2];
  return result;
}

void ggl::MPSBlur::encode(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (*(a1 + 49))
  {
    v7 = objc_alloc(getMPSImageTentClass());
    v8 = *(a2 + 104);
    v9 = [v7 initWithDevice:v8 kernelWidth:*(a1 + 48) kernelHeight:*(a1 + 48)];
    v11 = (a1 + 64);
    v10 = *(a1 + 64);
LABEL_5:
    *v11 = v9;

    [*v11 setEdgeMode:1];
    [*v11 setOptions:2];
    goto LABEL_6;
  }

  v11 = (a1 + 56);
  if (!*(a1 + 56))
  {
    v12 = objc_alloc(getMPSImageGaussianBlurClass());
    v8 = *(a2 + 104);
    LOBYTE(v13) = *(a1 + 48);
    *&v14 = v13;
    v9 = [v12 initWithDevice:v8 sigma:v14];
    v10 = *v11;
    goto LABEL_5;
  }

LABEL_6:
  v15 = ggl::MetalTextureResource::texture(*(a1 + 72), v5);
  v16 = [v15 pixelFormat];
  v17 = v16;
  if (v16 == 81)
  {
    v18 = 80;
  }

  else
  {
    v18 = v16;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = ___ZN3ggl7MPSBlur6encodeEPNS_11MetalDeviceEPU27objcproto16MTLCommandBuffer11objc_object_block_invoke;
  v24[3] = &__block_descriptor_40_e73____MTLTexture__32__0__MPSKernel_8___MTLCommandBuffer__16___MTLTexture__24l;
  v24[4] = v18;
  v19 = MEMORY[0x1B8C62DA0](v24);
  for (i = 0; i < [v15 arrayLength]; ++i)
  {
    if (v17 == 81 || [v15 textureType] != 2)
    {
      v21 = [v15 newTextureViewWithPixelFormat:v18 textureType:2 levels:0 slices:1, i, 1];
    }

    else
    {
      v21 = v15;
    }

    v23 = v21;
    if (*(a1 + 49))
    {
      v22 = 64;
    }

    else
    {
      v22 = 56;
    }

    [*(a1 + v22) encodeToCommandBuffer:v6 inPlaceTexture:&v23 fallbackCopyAllocator:v19];
  }
}

float32x2_t md::LabelMapTileCollisionInfo::pointsToScreen(md::LabelMapTileCollisionInfo *this, md::LabelManager *a2, uint64_t a3, double a4)
{
  v6 = this;
  *&result = *(a3 + 52) * a4;
  if (vabdd_f64(*(a2 + 22), *&result) <= 0.00999999978)
  {
    v9 = *(a2 + 13);
    v8 = *(a2 + 14);
  }

  else
  {
    *(a2 + 22) = *&result;
    v9 = *(a2 + 13);
    v8 = *(a2 + 14);
    if (*(a2 + 168))
    {
      if (v8 != v9)
      {
        v35 = *(a2 + 14);
        v10 = 0;
        v11 = *(a2 + 9);
        v37 = *(a2 + 5);
        if (0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3) <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3);
        }

        do
        {
          for (i = 0; i != 3; ++i)
          {
            *(&v41 + i * 8) = *&md::GeocentricNormal(geo::Geocentric<double> const&)::oneOverRadiiSquared[i] * *(v11 + i * 8);
          }

          v14 = gm::Matrix<double,3,1>::normalized<int,void>(&v41);
          v15 = 0;
          *v38 = v14;
          v38[1] = v16;
          v38[2] = v17;
          v18 = *(a2 + 22) * *(v37 + 4 * v10);
          do
          {
            *(&v41 + v15 * 8) = v18 * *&v38[v15];
            ++v15;
          }

          while (v15 != 3);
          v19 = 0;
          v39 = v41;
          v40 = v42;
          do
          {
            *(&v41 + v19) = *(&v39 + v19) + *(v11 + v19);
            v19 += 8;
          }

          while (v19 != 24);
          result = v42;
          v20 = v9 + 24 * v10;
          *v20 = v41;
          *(v20 + 16) = *&result;
          ++v10;
          v11 += 24;
        }

        while (v10 != v12);
        v8 = v35;
        v6 = this;
      }
    }

    else if (v8 != v9)
    {
      v21 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3);
      v22 = *(a2 + 5);
      if (v21 <= 1)
      {
        v21 = 1;
      }

      v23 = 16;
      do
      {
        v24 = *v22++;
        *(v9 + v23) = *&result * v24;
        v23 += 24;
        --v21;
      }

      while (v21);
    }
  }

  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  if (v8 != v9)
  {
    v25 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3);
    std::vector<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator>>::__vallocate[abi:nn200100](v6, v25);
    *(v6 + 1) += 8 * v25;
    v26 = *(a2 + 13);
    v27 = *(a2 + 14);
    if (v27 != v26)
    {
      v28 = 0;
      v29 = *v6;
      v30 = *(a2 + 13);
      v31 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v30) >> 3);
      if (v31 <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = v31;
      }

      do
      {
        v33.f64[0] = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>((a3 + 864), v26 + v28);
        v33.f64[1] = v34;
        result = vcvt_f32_f64(v33);
        *v29++ = *&result;
        v28 += 24;
        v26 = v30;
        --v32;
      }

      while (v32);
    }
  }

  return result;
}

void std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::shared_ptr<md::NavLabel>*>,std::__wrap_iter<std::shared_ptr<md::NavLabel>*>>(mdm::zone_mallocator *result, char *a2, uint64_t *a3, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v9 = *(result + 1);
  v10 = *(result + 2);
  if (a5 > (v10 - v9) >> 4)
  {
    v11 = *result;
    v12 = a5 + ((v9 - *result) >> 4);
    if (v12 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = v10 - v11;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v15 = &a2[-v11] >> 4;
    v37 = result + 24;
    if (v14)
    {
      v16 = mdm::zone_mallocator::instance(result);
      v17 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::NavLabel>>(v16, v14);
    }

    else
    {
      v17 = 0;
    }

    v25 = &v17[16 * v15];
    v36 = &v17[16 * v14];
    v26 = &v25[16 * a5];
    v27 = v25;
    do
    {
      v28 = a3[1];
      *v27 = *a3;
      v27[1] = v28;
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
      }

      v27 += 2;
      a3 += 2;
    }

    while (v27 != v26);
    memcpy(v26, a2, *(result + 1) - a2);
    v29 = *result;
    v30 = v26 + *(result + 1) - a2;
    *(result + 1) = a2;
    v31 = (a2 - v29);
    v32 = &v25[-(a2 - v29)];
    memcpy(v32, v29, v31);
    v33 = *result;
    *result = v32;
    *(result + 1) = v30;
    v34 = *(result + 2);
    *(result + 2) = v36;
    v35.__shared_weak_owners_ = v33;
    v36 = v34;
    v35.__vftable = v33;
    v35.__shared_owners_ = v33;
    std::__split_buffer<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator> &>::~__split_buffer(&v35);
    return;
  }

  v18 = (v9 - a2) >> 4;
  if (v18 >= a5)
  {
    std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::__move_range(result, a2, v9, &a2[16 * a5]);
    v24 = &a3[2 * a5];
    v23 = a3;
    goto LABEL_20;
  }

  v19 = a3 + v9 - a2;
  v20 = *(result + 1);
  if (v19 != a4)
  {
    v21 = a3 + v9 - a2;
    v20 = *(result + 1);
    do
    {
      v22 = *(v21 + 1);
      *v20 = *v21;
      v20[1] = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v21 += 16;
      v20 += 2;
    }

    while (v21 != a4);
  }

  *(result + 1) = v20;
  if (v18 >= 1)
  {
    std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::__move_range(result, a2, v9, &a2[16 * a5]);
    v23 = a3;
    v24 = v19;
LABEL_20:

    std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<md::NavLabel> *,std::shared_ptr<md::NavLabel> *,std::shared_ptr<md::NavLabel> *>(v23, v24, a2);
  }
}

uint64_t md::LabelNavEtaLabeler::layoutForDisplayWithNavContext(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = COERCE_FLOAT(atomic_load((*v4 + 288)));
      if (v6 > 0.0)
      {
        result = (*(**v4 + 24))(*v4, v5, v6);
      }

      v4 += 2;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t md::Label::clearAnimatingPart(md::Label *this)
{
  atomic_load(this + 1330);
  if (*(this + 1162) == 1)
  {
    *(this + 1162) = 0;
    atomic_store(0, this + 1331);
  }

  if (*(this + 1161) == 1)
  {
    *(this + 1161) = 0;
    atomic_store(0, this + 1332);
    *(this + 300) = 0;
    *(this + 301) = (*(this + 153))(0.0);
    md::Label::updateStateMachineForDisplay(this, 8, *(this + 1153), 0);
  }

  v2 = *(this + 37);
  *(this + 37) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(this + 35);
  *(this + 35) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}
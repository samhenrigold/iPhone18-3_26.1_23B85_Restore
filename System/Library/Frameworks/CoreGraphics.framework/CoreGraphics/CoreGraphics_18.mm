uint64_t ClipperLib::Pt2IsBetweenPt1AndPt3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a5 && a2 == a6 || a1 == a3 && a2 == a4 || a5 == a3 && a6 == a4)
  {
    return 0;
  }

  if (a1 == a5)
  {
    return (a4 > a2) ^ (a4 >= a6);
  }

  return (a3 > a1) ^ (a3 >= a5);
}

uint64_t ClipperLib::Clipper::AddOutPt(uint64_t result, uint64_t a2, __int128 *a3)
{
  v5 = *(a2 + 172);
  v6 = (result + *(*result - 24));
  if ((v5 & 0x80000000) != 0)
  {
    v15 = result;
    OutRec = ClipperLib::ClipperBase::CreateOutRec((result + *(*result - 24)));
    *(OutRec + 5) = *(a2 + 160) == 0;
    result = std::deque<ClipperLib::OutPt>::emplace_back<>((v15 + *(*v15 - 24) + 112));
    *(OutRec + 3) = result;
    *result = *OutRec;
    v17 = *a3;
    v18 = a3[1];
    *(result + 40) = a3[2];
    *(result + 24) = v18;
    *(result + 8) = v17;
    *(result + 56) = result;
    *(result + 64) = result;
    if ((*(OutRec + 5) & 1) == 0)
    {
      v19 = *(a2 + 208);
      if (!v19)
      {
        goto LABEL_37;
      }

      v20 = 0;
      do
      {
        v21 = v20;
        v22 = *(v19 + 172);
        if ((v22 & 0x80000000) == 0)
        {
          if (*(v19 + 160))
          {
            v20 = v19;
            if (v21)
            {
              if (*(v21 + 172) == v22)
              {
                v20 = 0;
              }

              else
              {
                v20 = v21;
              }
            }
          }
        }

        v19 = *(v19 + 208);
      }

      while (v19);
      if (v20)
      {
        v23 = v15 + *(*v15 - 24);
        v24 = *(v20 + 172);
        v25 = *(v23 + 10);
        if (v24 >= (*(v23 + 11) - v25) >> 3)
        {
          goto LABEL_40;
        }

        v26 = *(v25 + 8 * v24);
        *(OutRec + 1) = v26;
        *(OutRec + 4) = *(v26 + 4) ^ 1;
      }

      else
      {
LABEL_37:
        *(OutRec + 1) = 0;
        *(OutRec + 4) = 0;
      }
    }

    *(a2 + 172) = *OutRec;
    return result;
  }

  v7 = v6[10];
  if (v5 >= (v6[11] - v7) >> 3)
  {
LABEL_40:
    __break(1u);
    return result;
  }

  v8 = *(v7 + 8 * v5);
  v9 = *(v8 + 24);
  v10 = *(a2 + 156);
  if (v10 == 1)
  {
    if (*a3 != *(v9 + 8) || *(a3 + 1) != *(v9 + 16))
    {
LABEL_31:
      result = std::deque<ClipperLib::OutPt>::emplace_back<>(v6 + 14);
      *result = *v8;
      v28 = *a3;
      v29 = a3[1];
      *(result + 40) = a3[2];
      *(result + 24) = v29;
      *(result + 8) = v28;
      v30 = *(v9 + 64);
      *(result + 56) = v9;
      *(result + 64) = v30;
      *(v30 + 56) = result;
      *(v9 + 64) = result;
      if (v10 == 1)
      {
        *(v8 + 24) = result;
      }

      return result;
    }

    v12 = *(a3 + 4);
    if (v12 != -1 && (*(a3 + 2) != v12 || *(a3 + 3) != *(a3 + 5)))
    {
      v13 = *a3;
      v14 = a3[2];
      *(v9 + 24) = a3[1];
      *(v9 + 40) = v14;
      *(v9 + 8) = v13;
    }

    return v9;
  }

  else
  {
    result = *(v9 + 64);
    if (*a3 != *(result + 8) || *(a3 + 1) != *(result + 16))
    {
      goto LABEL_31;
    }

    v31 = *(a3 + 4);
    if (v31 != -1 && (*(a3 + 2) != v31 || *(a3 + 3) != *(a3 + 5)))
    {
      v32 = *a3;
      v33 = a3[2];
      *(result + 24) = a3[1];
      *(result + 40) = v33;
      *(result + 8) = v32;
      return *(v9 + 64);
    }
  }

  return result;
}

ClipperLib::ClipperBase *ClipperLib::ClipperBase::UpdateEdgeIntoAEL(ClipperLib::ClipperBase *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 192);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    ClipperLib::clipperException::clipperException(exception, "UpdateEdgeIntoAEL: invalid call");
  }

  *(v3 + 172) = *(v2 + 172);
  v6 = v2 + 200;
  v5 = *(v2 + 200);
  v4 = *(v6 + 8);
  v7 = (result + 104);
  if (v4)
  {
    v7 = (v4 + 200);
  }

  *v7 = v3;
  if (v5)
  {
    *(v5 + 208) = *(*a2 + 192);
  }

  v8 = *(*a2 + 192);
  *(v8 + 156) = *(*a2 + 156);
  *a2 = v8;
  v9 = v8[1];
  v8[3] = *v8;
  v8[4] = v9;
  v8[5] = v8[2];
  *(*a2 + 208) = v4;
  *(*a2 + 200) = v5;
  if (*(*a2 + 144) != -1.0e40)
  {
    v10 = *(*a2 + 104);

    return ClipperLib::ClipperBase::InsertScanbeam(result, v10);
  }

  return result;
}

void std::vector<ClipperLib::IntPoint>::__init_with_size[abi:fe200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<ClipperLib::IntPoint>>(a4);
    }

    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }
}

void sub_183F67820(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ClipperLib::ClipperBase::DisposeAllOutRecs(ClipperLib::ClipperBase *this)
{
  *(this + 11) = *(this + 10);
  v2 = *(this + 21);
  v3 = *(this + 22);
  *(this + 25) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(this + 22);
      v2 = (*(this + 21) + 8);
      *(this + 21) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 51;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 102;
  }

  *(this + 24) = v6;
LABEL_8:
  v7 = *(this + 15);
  v8 = *(this + 16);
  *(this + 19) = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = *(this + 16);
      v7 = (*(this + 15) + 8);
      *(this + 15) = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 28;
  }

  else
  {
    if (v9 != 2)
    {
      return;
    }

    v11 = 56;
  }

  *(this + 18) = v11;
}

uint64_t ClipperLib::Clipper::AddLocalMinPoly(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = *(a3 + 144);
  if (v8 != -1.0e40 && *(a2 + 144) <= v8)
  {
    v9 = ClipperLib::Clipper::AddOutPt(a1, a3, a4);
    *(v6 + 172) = *(a3 + 172);
    *(v6 + 156) = 2;
    *(a3 + 156) = 1;
    v10 = *(a3 + 208);
    v11 = v6;
    v23 = v10 == v6;
    v6 = a3;
    if (!v23)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = ClipperLib::Clipper::AddOutPt(a1, a2, a4);
  *(a3 + 172) = *(v6 + 172);
  *(v6 + 156) = 1;
  *(a3 + 156) = 2;
  v10 = *(v6 + 208);
  v11 = a3;
  if (v10 == a3)
  {
LABEL_4:
    v10 = *(v11 + 208);
  }

LABEL_5:
  if (v10)
  {
    if ((*(v10 + 172) & 0x80000000) == 0)
    {
      v12 = *(v10 + 104);
      v13 = *(a4 + 8);
      if (v12 < v13)
      {
        v14 = *(v6 + 104);
        if (v14 < v13)
        {
          v15 = *(v10 + 144) * (v13 - *(v10 + 8));
          v16 = 0.5;
          if (v15 >= 0.0)
          {
            v17 = 0.5;
          }

          else
          {
            v17 = -0.5;
          }

          v18 = *v10 + (v15 + v17);
          v19 = *(v6 + 144) * (v13 - *(v6 + 8));
          if (v19 < 0.0)
          {
            v16 = -0.5;
          }

          if (v18 == *v6 + (v19 + v16) && *(v6 + 160) && *(v10 + 160) && ClipperLib::SlopesEqual(v18, v13, *(v10 + 96), v12, v18, v13, *(v6 + 96), v14, *(a1 + *(*a1 - 24) + 40)))
          {
            v20 = ClipperLib::Clipper::AddOutPt(a1, v10, a4);
            v21 = *(v6 + 112);
            v24[0] = *(v6 + 96);
            v24[1] = v21;
            v24[2] = *(v6 + 128);
            ClipperLib::Clipper::AddJoin(a1, v9, v20, v24);
          }
        }
      }
    }
  }

  return v9;
}

void *ClipperLib::GetBottomPt(void *a1)
{
  v1 = a1;
  v2 = a1[7];
  if (v2 == a1)
  {
    return v1;
  }

  v3 = 0;
  do
  {
    v4 = v2[2];
    v5 = v1[2];
    if (v4 > v5)
    {
LABEL_4:
      v3 = 0;
      v1 = v2;
      goto LABEL_11;
    }

    if (v4 == v5)
    {
      v6 = v2[1];
      v7 = v1[1];
      if (v6 <= v7)
      {
        if (v6 < v7)
        {
          goto LABEL_4;
        }

        if (v2[7] != v1 && v2[8] != v1)
        {
          v3 = v2;
        }
      }
    }

LABEL_11:
    v2 = v2[7];
  }

  while (v2 != v1);
  if (!v3 || v3 == v1)
  {
    return v1;
  }

  v8 = v1;
  do
  {
    if (!ClipperLib::FirstIsBottomPt(v2, v3))
    {
      v8 = v3;
    }

    do
    {
      v3 = v3[7];
    }

    while (v3[1] != v8[1] || v3[2] != v8[2]);
  }

  while (v3 != v1);
  return v8;
}

void std::vector<ClipperLib::IntPoint>::reserve(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) < a2)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<ClipperLib::IntPoint>>(a2);
  }
}

void ClipperLib::ClipperBase::~ClipperBase(ClipperLib::ClipperBase *this)
{
  *this = &unk_1EF23C198;
  ClipperLib::ClipperBase::Clear(this);
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 33) = v2;
    operator delete(v2);
  }

  v3 = *(this + 27);
  v4 = *(this + 28);
  *(this + 31) = 0;
  v5 = v4 - v3;
  if (v5 >= 3)
  {
    do
    {
      operator delete(*v3);
      v4 = *(this + 28);
      v3 = (*(this + 27) + 8);
      *(this + 27) = v3;
      v5 = v4 - v3;
    }

    while (v5 > 2);
  }

  if (v5 == 1)
  {
    v6 = 32;
    goto LABEL_9;
  }

  if (v5 == 2)
  {
    v6 = 64;
LABEL_9:
    *(this + 30) = v6;
  }

  if (v3 != v4)
  {
    do
    {
      v7 = *v3++;
      operator delete(v7);
    }

    while (v3 != v4);
    v9 = *(this + 27);
    v8 = *(this + 28);
    if (v8 != v9)
    {
      *(this + 28) = v8 + ((v9 - v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v10 = *(this + 26);
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(this + 21);
  v12 = *(this + 22);
  *(this + 25) = 0;
  v13 = v12 - v11;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v11);
      v12 = *(this + 22);
      v11 = (*(this + 21) + 8);
      *(this + 21) = v11;
      v13 = v12 - v11;
    }

    while (v13 > 2);
  }

  if (v13 == 1)
  {
    v14 = 51;
    goto LABEL_22;
  }

  if (v13 == 2)
  {
    v14 = 102;
LABEL_22:
    *(this + 24) = v14;
  }

  if (v11 != v12)
  {
    do
    {
      v15 = *v11++;
      operator delete(v15);
    }

    while (v11 != v12);
    v17 = *(this + 21);
    v16 = *(this + 22);
    if (v16 != v17)
    {
      *(this + 22) = v16 + ((v17 - v16 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v18 = *(this + 20);
  if (v18)
  {
    operator delete(v18);
  }

  v19 = *(this + 15);
  v20 = *(this + 16);
  *(this + 19) = 0;
  v21 = v20 - v19;
  if (v21 >= 3)
  {
    do
    {
      operator delete(*v19);
      v20 = *(this + 16);
      v19 = (*(this + 15) + 8);
      *(this + 15) = v19;
      v21 = v20 - v19;
    }

    while (v21 > 2);
  }

  if (v21 == 1)
  {
    v22 = 28;
    goto LABEL_35;
  }

  if (v21 == 2)
  {
    v22 = 56;
LABEL_35:
    *(this + 18) = v22;
  }

  if (v19 != v20)
  {
    do
    {
      v23 = *v19++;
      operator delete(v23);
    }

    while (v19 != v20);
    v25 = *(this + 15);
    v24 = *(this + 16);
    if (v24 != v25)
    {
      *(this + 16) = v24 + ((v25 - v24 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v26 = *(this + 14);
  if (v26)
  {
    operator delete(v26);
  }

  v27 = *(this + 10);
  if (v27)
  {
    *(this + 11) = v27;
    operator delete(v27);
  }

  v28 = *(this + 6);
  if (v28)
  {
    *(this + 7) = v28;
    operator delete(v28);
  }

  v29 = *(this + 2);
  if (v29)
  {
    *(this + 3) = v29;
    operator delete(v29);
  }
}

{
  ClipperLib::ClipperBase::~ClipperBase(this);

  JUMPOUT(0x1865EE610);
}

CGFloat CGPathOutputFiltering::commit_pending_line_point_if_needed(CGPathOutputFiltering *this)
{
  result = *(this + 1);
  v3 = *(this + 2);
  v1 = (this + 8);
  v4 = fabs(v3) == INFINITY;
  if (fabs(result) != INFINITY || !v4)
  {
    CGPathAddLineToPoint(*this, 0, result, v3);
    result = *&cgpoint_null;
    *v1 = cgpoint_null;
  }

  return result;
}

uint64_t *CGPathRandomAccessSubpath::append_range_to_path(uint64_t *result, int a2, int a3, uint64_t a4, uint64_t a5, __n128 a6, __n128 a7, CGFloat a8, CGFloat a9)
{
  v15 = result;
  v47 = *MEMORY[0x1E69E9840];
  v16 = *result;
  v17 = (result[1] - *result) >> 4;
  v18 = v17;
  if (v17 <= a7.n128_f64[0])
  {
    v19 = a7.n128_f64[0] - v17;
  }

  else
  {
    v19 = a7.n128_f64[0];
  }

  if (v18 <= a6.n128_f64[0])
  {
    a6.n128_f64[0] = a6.n128_f64[0] - v18;
  }

  v20 = a6.n128_f64[0];
  v21 = a6.n128_f64[0];
  v22 = v19;
  if (v19 == a6.n128_f64[0] && a6.n128_f64[0] == v21)
  {

    return CGPathRandomAccessSubpath::append_sections_to_path(result, a6.n128_f64[0], v19, a2, a3, a4, a5);
  }

  else if (a6.n128_f64[0] < v19 && v20 == v22)
  {
    if (v17 <= v20)
    {
      goto LABEL_59;
    }

    v29 = v16 + 16 * v20;
    if (*(v29 + 8) == 1)
    {
      v30 = *v29;
      v31 = result[3];
      if (v30 < (result[4] - v31) >> 4)
      {
        v32 = cubic_curve_between((v31 + 16 * v30), a6.n128_f64[0] - v21, v19 - v21, v44);
        v33 = 3;
        if (a3)
        {
          v33 = 0;
        }

        v44[v33].x = a8;
        v34 = 56;
        if (a3)
        {
          v34 = 8;
        }

        *(&v44[0].x + v34) = a9;
        return (*(a5 + 16))(a5, v44, v32);
      }

LABEL_59:
      __break(1u);
    }

    if ((a2 & 1) == 0)
    {
      v35 = *(a4 + 16);
      a6.n128_f64[0] = a8;
      a7.n128_f64[0] = a9;

      return v35(a4, a6, a7);
    }
  }

  else
  {
    if (v17 <= v20)
    {
      goto LABEL_59;
    }

    v25 = v16 + 16 * v20;
    if (*(v25 + 8) == 1)
    {
      v26 = *v25;
      v27 = result[3];
      if (v26 >= (result[4] - v27) >> 4)
      {
        goto LABEL_59;
      }

      v28 = cubic_curve_between((v27 + 16 * v26), a6.n128_f64[0] - v21, 1.0, v44);
      if (a3)
      {
        v44[0].x = a8;
        v44[0].y = a9;
      }

      result = (*(a5 + 16))(a5, v44, v28);
    }

    else if (a3)
    {
      if ((a2 & 1) == 0)
      {
        a6.n128_f64[0] = a8;
        a7.n128_f64[0] = a9;
        result = (*(a4 + 16))(a4, a6, a7);
      }
    }

    else
    {
      v36 = (result[3] + 16 * ((*v25 + 1) % ((result[4] - result[3]) >> 4)));
      a6.n128_u64[0] = *v36;
      a7.n128_u64[0] = v36[1];
      result = (*(a4 + 16))(a4, a6, a7);
    }

    if ((v20 + 1) % ((v15[1] - *v15) >> 4) != v22)
    {
      if (a2)
      {
        v37 = (a3 & 1) == 0 && v19 == v22;
      }

      else
      {
        v37 = 0;
      }

      result = CGPathRandomAccessSubpath::append_sections_to_path(v15, v20 + 1, v19, v37, a3, a4, a5);
    }

    if (v19 != v22)
    {
      if (v22 >= ((v15[1] - *v15) >> 4))
      {
        goto LABEL_59;
      }

      v38 = *v15 + 16 * v22;
      if (*(v38 + 8) == 1)
      {
        v39 = *v38;
        v40 = v15[3];
        if (v39 < (v15[4] - v40) >> 4)
        {
          v32 = cubic_curve_between((v40 + 16 * v39), 0.0, v19 - v22, v44);
          if ((a3 & 1) == 0)
          {
            v45 = a8;
            v46 = a9;
          }

          return (*(a5 + 16))(a5, v44, v32);
        }

        goto LABEL_59;
      }

      if (a3)
      {
        v41 = *v38;
        v42 = v15[3];
        if (v41 >= (v15[4] - v42) >> 4)
        {
          goto LABEL_59;
        }

        v43 = (v42 + 16 * v41);
        a6.n128_u64[0] = *v43;
        a7.n128_u64[0] = v43[1];
        return (*(a4 + 16))(a4, a6, a7);
      }

      else if ((a2 & 1) == 0)
      {
        a6.n128_f64[0] = a8;
        a7.n128_f64[0] = a9;
        return (*(a4 + 16))(a4, a6, a7);
      }
    }
  }

  return result;
}

void ___ZNK25CGPathRandomAccessSubpath20append_range_to_pathEddbb7CGPoint17CGAffineTransformR21CGPathOutputFiltering_block_invoke_2(uint64_t a1, double *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  CGPathOutputFiltering::commit_pending_line_point_if_needed(v2);
  v9 = *v2;

  CGPathAddCurveToPoint(v9, 0, v3, v4, v5, v6, v7, v8);
}

void std::__destroy_at[abi:fe200100]<CGPathRandomAccessSubpath,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

void std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:fe200100](void ***a1)
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
        v4 -= 56;
        std::__destroy_at[abi:fe200100]<CGPathRandomAccessSubpath,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

float64x2_t cubic_curve_between(float64x2_t *a1, double a2, double a3, float64x2_t *a4)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = vmlaq_n_f64(vmulq_n_f64(v5, a2), v4, 1.0 - a2);
  *a4 = vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(a1[3], a2), v5, 1.0 - a2), a2), v6, 1.0 - a2), a2), vmlaq_n_f64(vmulq_n_f64(v6, a2), vmlaq_n_f64(vmulq_n_f64(v4, a2), *a1, 1.0 - a2), 1.0 - a2), 1.0 - a2);
  v7 = a1[1];
  v8 = a1[2];
  v9 = vmlaq_n_f64(vmulq_n_f64(v8, a3), v7, 1.0 - a3);
  a4[1] = vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(a1[3], a3), v8, 1.0 - a3), a2), v9, 1.0 - a2), a2), vmlaq_n_f64(vmulq_n_f64(v9, a2), vmlaq_n_f64(vmulq_n_f64(v7, a3), *a1, 1.0 - a3), 1.0 - a2), 1.0 - a2);
  v10 = a1[1];
  v11 = a1[2];
  v12 = vmlaq_n_f64(vmulq_n_f64(v11, a3), v10, 1.0 - a3);
  a4[2] = vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(a1[3], a3), v11, 1.0 - a3), a3), v12, 1.0 - a3), a2), vmlaq_n_f64(vmulq_n_f64(v12, a3), vmlaq_n_f64(vmulq_n_f64(v10, a3), *a1, 1.0 - a3), 1.0 - a3), 1.0 - a2);
  v13 = a1[1];
  v14 = a1[2];
  v15 = vmlaq_n_f64(vmulq_n_f64(v14, a3), v13, 1.0 - a3);
  result = vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(a1[3], a3), v14, 1.0 - a3), a3), v15, 1.0 - a3), a3), vmlaq_n_f64(vmulq_n_f64(v15, a3), vmlaq_n_f64(vmulq_n_f64(v13, a3), *a1, 1.0 - a3), 1.0 - a3), 1.0 - a3);
  a4[3] = result;
  return result;
}

void handle_invalid_context(const char *a1, const void *a2)
{
  if (handle_invalid_context_predicate != -1)
  {
    dispatch_once(&handle_invalid_context_predicate, &__block_literal_global_20148);
  }

  if (handle_invalid_context_show_log)
  {
    v4 = CGBacktraceCreate(0);
    CGPostError("%s: invalid context %p. Backtrace:\n%s\n", a1, a2, v4);

    free(v4);
  }

  else
  {
    CGPostError("%s: invalid context %p. If you want to see the backtrace, please set CG_CONTEXT_SHOW_BACKTRACE environmental variable.\n", a1, a2);
  }
}

void subImageProviderReleaseInfo(uint64_t a1)
{
  v1 = *(a1 + 152);
  if (v1)
  {
    CFRelease(v1);
  }
}

void indexed_finalize(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    CGColorSpaceRelease(*v1);
    v2 = *(v1 + 16);

    free(v2);
  }
}

const void *CGPDFGStateGetMappedStrokeColor(uint64_t a1)
{
  result = CGPDFGStateGetStrokeColor(a1);
  if (*(a1 + 72))
  {

    return map_color(a1, result);
  }

  return result;
}

void __CGColorSpaceCreateExtendedDisplayP3_block_invoke()
{
  CGColorSpaceCreateExtendedDisplayP3_space = create_singleton(color_space_state_create_extended_display_p3);
  CGColorSpaceSetProperty(CGColorSpaceCreateExtendedDisplayP3_space, @"kCGColorSpaceStandardRangeOriginal", @"kCGColorSpaceDisplayP3");
  CGColorSpaceSetProperty(CGColorSpaceCreateExtendedDisplayP3_space, @"kCGColorSpaceLinearDerivative", @"kCGColorSpaceExtendedLinearDisplayP3");
  CGColorSpaceSetProperty(CGColorSpaceCreateExtendedDisplayP3_space, @"kCGColorSpaceExtendedDerivative", CGColorSpaceCreateExtendedDisplayP3_space);
  v0 = CGColorSpaceCreateExtendedDisplayP3_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", @"kCGColorSpaceExtendedLinearDisplayP3");
}

uint64_t (*__color_space_state_create_extended_display_p3_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateWithName");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1730;
  }

  color_space_state_create_extended_display_p3_f = v1;
  return result;
}

uint64_t *__color_space_state_create_extended_display_p3_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncDisplayP3Profile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_extended_display_p3_s = v1;
  return result;
}

char *color_space_state_create_extended_display_p3()
{
  if (color_space_state_create_extended_display_p3_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_extended_display_p3_cglibrarypredicate, &__block_literal_global_46);
  }

  v0 = color_space_state_create_extended_display_p3_f;
  if (color_space_state_create_extended_display_p3_cglibrarypredicate_47 != -1)
  {
    dispatch_once(&color_space_state_create_extended_display_p3_cglibrarypredicate_47, &__block_literal_global_50_1752);
  }

  v1 = v0(color_space_state_create_extended_display_p3_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 1);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceExtendedDisplayP3";
    *(icc_with_profile + 5) = 8;
    *(*(icc_with_profile + 12) + 40) = @"Display P3 Extended";
  }

  return icc_with_profile;
}

void CGPDFGStateSynchronizeStroke(uint64_t a1, CGContextRef c)
{
  if (a1)
  {
    v4 = *(a1 + 160);
    if (v4 == 0.0)
    {
      v4 = -1.0905473e16;
    }

    CGContextSetLineWidth(c, v4);
    CGContextSetLineCap(c, *(a1 + 168));
    CGContextSetLineJoin(c, *(a1 + 172));
    CGContextSetMiterLimit(c, *(a1 + 176));
    CGContextSetStrokeAdjust(c, *(a1 + 196));
    v5 = *(a1 + 184);
    if (v5)
    {
      v6 = *(v5 + 8);
      v7 = *(v5 + 16);
      v8 = (v5 + 24);
      v9 = c;
      goto LABEL_8;
    }
  }

  else
  {
    CGContextSetLineWidth(c, 1.0);
    CGContextSetLineCap(c, kCGLineCapButt);
    CGContextSetLineJoin(c, kCGLineJoinMiter);
    CGContextSetMiterLimit(c, 10.0);
    CGContextSetStrokeAdjust(c, 0);
  }

  v6 = 0.0;
  v9 = c;
  v8 = 0;
  v7 = 0;
LABEL_8:

  CGContextSetLineDash(v9, v6, v8, v7);
}

float64x2_t CGPDFGStateConcatCTM(float64x2_t *a1, double *a2)
{
  if (a1)
  {
    v2 = a1[1];
    result = vmlaq_n_f64(vmulq_n_f64(v2, a2[3]), *a1, a2[2]);
    v4 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(v2, a2[5]), *a1, a2[4]));
    *a1 = vmlaq_n_f64(vmulq_n_f64(v2, a2[1]), *a1, *a2);
    a1[1] = result;
    a1[2] = v4;
  }

  return result;
}

double CGContextSetStrokeAdjust(uint64_t a1, int a2)
{
  v2 = a2;
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v3 = *(a1 + 96);
    if (*(*(v3 + 128) + 1) != a2)
    {
      maybe_copy_stroke_state(*(a1 + 96));
      *(*(v3 + 128) + 1) = v2;
    }
  }

  else
  {

    handle_invalid_context("CGContextSetStrokeAdjust", a1);
  }

  return result;
}

uint64_t __CGImageTextureDataGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGImageTextureDataGetTypeID_class);
  CGImageTextureDataGetTypeID_texture_data_type_id = result;
  return result;
}

void CGContextSetMiterLimit(CGContextRef c, CGFloat limit)
{
  if (c && *(c + 4) == 1129601108)
  {
    if (limit >= 1.0)
    {
      v3 = limit;
    }

    else
    {
      v3 = 1.0;
    }

    v4 = *(c + 12);
    if (*(*(v4 + 128) + 16) != v3)
    {
      maybe_copy_stroke_state(*(c + 12));
      *(*(v4 + 128) + 16) = v3;
    }
  }

  else
  {

    handle_invalid_context("CGContextSetMiterLimit", c);
  }
}

uint64_t CGPathIsRectWithTransform(char *cf, CGRect *a2, CGAffineTransform *a3)
{
  if (!cf)
  {
    return 0;
  }

  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v6 = CFGetTypeID(cf);
    if (v6 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  return CG::Path::is_rect((cf + 16), a2, a3);
}

CGColorRef CGColorRetain(CGColorRef color)
{
  if (color)
  {
    CFRetain(color);
  }

  return color;
}

CGColorRef CGColorCreateGenericGray(CGFloat gray, CGFloat alpha)
{
  v7 = *MEMORY[0x1E69E9840];
  components = gray;
  v6 = alpha;
  v2 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericGray");
  v3 = CGColorCreate(v2, &components);
  CGColorSpaceRelease(v2);
  if (!v3)
  {
    CGPostError("Color creation failed for generic gray colorspace %p, {%f, %f}", v2, components, v6);
  }

  return v3;
}

uint64_t CGColorSpaceCreateGenericGray()
{
  if (CGColorSpaceCreateGenericGray_predicate[0] != -1)
  {
    dispatch_once(CGColorSpaceCreateGenericGray_predicate, &__block_literal_global_182);
  }

  v0 = CGColorSpaceCreateGenericGray_space;
  if (CGColorSpaceCreateGenericGray_space)
  {
    CFRetain(CGColorSpaceCreateGenericGray_space);
  }

  return v0;
}

uint64_t __CGColorSpaceCreateGenericGray_block_invoke()
{
  result = create_singleton(color_space_state_create_generic_gray);
  CGColorSpaceCreateGenericGray_space = result;
  return result;
}

char *color_space_state_create_generic_gray()
{
  if (color_space_state_create_generic_gray_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_generic_gray_cglibrarypredicate, &__block_literal_global_1720);
  }

  v0 = color_space_state_create_generic_gray_f;
  if (color_space_state_create_generic_gray_cglibrarypredicate_2 != -1)
  {
    dispatch_once(&color_space_state_create_generic_gray_cglibrarypredicate_2, &__block_literal_global_5);
  }

  v1 = v0(color_space_state_create_generic_gray_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceGenericGray";
    *(*(icc_with_profile + 12) + 40) = @"Generic Gray Profile";
  }

  return icc_with_profile;
}

uint64_t (*__color_space_state_create_generic_gray_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateWithName");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1730;
  }

  color_space_state_create_generic_gray_f = v1;
  return result;
}

uint64_t *__color_space_state_create_generic_gray_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncGenericGrayProfile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_generic_gray_s = v1;
  return result;
}

void colorsync_transform_data_value_release(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void CGvImageConverterDeallocate(char *a1)
{
  v2 = *a1;
  if (v2)
  {
    vImageConverter_Release(v2);
  }

  if (!pthread_mutex_destroy((a1 + 8)))
  {
    pthread_cond_destroy((a1 + 72));
  }

  free(a1);
}

void A8_image_mark_image(uint64_t a1, uint64_t a2, int a3, int a4, void (*a5)(uint64_t, _DWORD *))
{
  v8 = (*(a2 + 184) * 255.0);
  v51[0] = a3;
  v51[1] = a4;
  v52 = (v8 + 0.5);
  v9 = *(a1 + 28);
  v54 = v9;
  v10 = *(a2 + 120);
  v11 = *(a2 + 20);
  v12 = HIBYTE(v11);
  v13 = BYTE2(v11);
  if (v10)
  {
    v14 = *(a2 + 24);
    v15 = (a2 + 104);
    v16 = (a2 + 72);
    v17 = (a2 + 88);
    v18 = v12;
  }

  else
  {
    v14 = *(a2 + 8) >> 25;
    v15 = (a2 + 96);
    v16 = (a2 + 64);
    v17 = (a2 + 80);
    v10 = *(a2 + 112);
    v18 = v13;
  }

  v19 = *v17;
  v20 = *v16;
  v21 = *v15;
  v22 = v18;
  v57 = v18;
  v55 = v21;
  v65 = v14;
  v50 = v19;
  v63 = v19;
  v61 = v20;
  v59 = v10;
  v23 = *(a2 + 128);
  if (v23)
  {
    v24 = *(a2 + 8) >> 25;
    v25 = (a2 + 96);
    v26 = (a2 + 64);
    v27 = (a2 + 80);
    v12 = v13;
  }

  else
  {
    v24 = *(a2 + 24);
    v25 = (a2 + 104);
    v26 = (a2 + 72);
    v27 = (a2 + 88);
    v23 = *(a2 + 136);
  }

  v28 = *v27;
  v29 = *v26;
  v30 = *v25;
  v58 = v12;
  v56 = v30;
  v66 = v24;
  v64 = v28;
  v62 = v29;
  v60 = v23;
  v31 = *(a1 + 4);
  if ((v31 & 0x80000000) == 0)
  {
    v32 = malloc_type_malloc(16 * v31, 0x7C9B548BuLL);
    v67 = v32;
    if (v32)
    {
      if (*(a2 + 176))
      {
        if (v31)
        {
          v34 = v32 + 1;
          v35 = v50 - v21;
          do
          {
            if (((v21 - v20) | v35) < 0)
            {
              v39 = 0;
            }

            else
            {
              v36 = ((v21 & ~(-1 << v22)) >> (v22 - 4)) & 0xF;
              v37 = weights_21890[v36];
              if (v36 - 7 >= 9)
              {
                v38 = -v14;
              }

              else
              {
                v38 = v14;
              }

              v39 = v37 & 0xF | (16 * v38);
            }

            *(v34 - 1) = v14 * (v21 >> v22);
            *v34 = v39;
            v34 += 2;
            v21 += v10;
            v35 -= v10;
            --v31;
          }

          while (v31);
        }
      }

      else if (v31)
      {
        v40 = v32 + 1;
        do
        {
          *(v40 - 1) = v14 * (v21 >> v22);
          *v40 = 0;
          v40 += 2;
          v21 += v10;
          --v31;
        }

        while (v31);
      }

      v41 = v32;
      v42 = *(a1 + 4);
      v43 = *(a1 + 8);
      v68 = v43;
      v69 = v42;
      v44 = *(a1 + 136);
      if (v44)
      {
        v45 = *(a1 + 104);
        v70[0] = *(a1 + 108);
        v70[1] = v45;
        shape_enum_clip_alloc(v32, v33, v44, 1, 1, 1, v45, v70[0], v42, v43);
        v47 = v46;
        if (v46)
        {
          goto LABEL_27;
        }
      }

      v48 = 0;
      v49 = 0;
      v47 = 0;
      *v70 = 0;
      while (1)
      {
        v53 = *(a1 + 40) + v9 * (*(a1 + 16) + v49) + *(a1 + 12) + v48;
        a5(a2, v51);
        if (!v47)
        {
          break;
        }

LABEL_27:
        if (!shape_enum_clip_next(v47, &v70[1], v70, &v69, &v68))
        {
          free(v47);
          break;
        }

        v49 = v70[0];
        v48 = v70[1];
        v9 = v54;
      }

      free(v41);
    }
  }
}

uint64_t A8_image_mark_rgb32(uint64_t result, int *a2, int a3, int a4, unsigned int a5, int a6)
{
  v6 = *(a2 + 8);
  v7 = a2[1];
  v68 = *a2;
  v8 = *(result + 32);
  if (*(result + 40))
  {
    v9 = 0;
  }

  else
  {
    v9 = 255;
  }

  v10 = *(a2 + 2);
  v67 = *(a2 + 3) - a5;
  v11 = *(a2 + 15);
  v12 = *(a2 + 16);
  v13 = *(a2 + 7);
  v14 = *(a2 + 9);
  v15 = *(a2 + 5) + v14 * a4;
  v16 = (v8 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * (*(result + 256) - 1)) >> 3));
  if (*(result + 176))
  {
    v66 = *(a2 + 11);
    v65 = *(a2 + 13);
    v64 = v12 + 16 * a3 + 8;
    do
    {
      if (((v65 - v15) | (v15 - v66)) < 0)
      {
        v19 = 0;
        v18 = 0;
      }

      else
      {
        v17 = ((v15 & ~(-1 << v13)) >> (v13 - 4)) & 0xF;
        if (v17 - 7 >= 9)
        {
          v18 = -v11;
        }

        else
        {
          v18 = v11;
        }

        v19 = weights_21890[v17] & 0xF;
      }

      v20 = *(result + 32) + (v15 >> v13) * v11;
      if (v68 == 1)
      {
        if (a5 >= 1)
        {
          v21 = v64;
          v22 = a5;
          do
          {
            v23 = *(v21 - 1);
            v24 = *v21;
            v25 = v20 + v23;
            if (v16 >= v20 + v23)
            {
              v26 = (v20 + v23);
            }

            else
            {
              v26 = v16;
            }

            if (v8 > v26)
            {
              v26 = v8;
            }

            v27 = *v26;
            if ((v24 & 0xF) != 0)
            {
              v28 = (v25 + (v24 >> 4));
              if (v16 < v28)
              {
                v28 = v16;
              }

              if (v8 > v28)
              {
                v28 = v8;
              }

              v29 = *v28;
              if (v19)
              {
                v30 = (v25 + v18);
                if (v16 >= v30)
                {
                  v31 = v30;
                }

                else
                {
                  v31 = v16;
                }

                if (v8 > v31)
                {
                  v31 = v8;
                }

                v32 = *v31;
                v33 = (v30 + (v24 >> 4));
                if (v16 < v33)
                {
                  v33 = v16;
                }

                if (v8 > v33)
                {
                  v33 = v8;
                }

                v34 = BLEND8_21892[v19];
                v27 = v27 - ((v34 & v27) >> v19) + ((v34 & v32) >> v19);
                v29 = v29 - ((v34 & v29) >> v19) + ((v34 & *v33) >> v19);
              }

              v27 = v27 - ((BLEND8_21892[*v21 & 0xF] & v27) >> (*v21 & 0xF)) + ((BLEND8_21892[*v21 & 0xF] & v29) >> (*v21 & 0xF));
            }

            else if (v19)
            {
              v35 = (v25 + v18);
              if (v16 < v25 + v18)
              {
                v35 = v16;
              }

              if (v8 > v35)
              {
                v35 = v8;
              }

              v27 = v27 - ((BLEND8_21892[v19] & v27) >> v19) + ((BLEND8_21892[v19] & *v35) >> v19);
            }

            v36 = __ROL4__(v27, v7) | v9;
            if (v6 != 255)
            {
              v36 = (v36 * v6 + ((v36 * v6) >> 8) + 1) >> 8;
            }

            v21 += 2;
            *v10++ = v36;
            --v22;
          }

          while (v22);
        }
      }

      else if (a5 >= 1)
      {
        v38 = v64;
        v37 = a5;
        do
        {
          v39 = *(v38 - 1);
          v40 = *v38;
          v41 = v20 + v39;
          if (v16 >= v20 + v39)
          {
            v42 = (v20 + v39);
          }

          else
          {
            v42 = v16;
          }

          if (v8 > v42)
          {
            v42 = v8;
          }

          v43 = *v42;
          if ((v40 & 0xF) != 0)
          {
            v44 = (v41 + (v40 >> 4));
            if (v16 < v44)
            {
              v44 = v16;
            }

            if (v8 > v44)
            {
              v44 = v8;
            }

            v45 = *v44;
            if (v19)
            {
              if (v16 >= v41 + v18)
              {
                v46 = (v41 + v18);
              }

              else
              {
                v46 = v16;
              }

              if (v8 > v46)
              {
                v46 = v8;
              }

              v47 = *v46;
              v48 = (v41 + v18 + (v40 >> 4));
              if (v16 < v48)
              {
                v48 = v16;
              }

              if (v8 > v48)
              {
                v48 = v8;
              }

              v49 = BLEND8_21892[v19];
              v43 = v43 - ((v49 & v43) >> v19) + ((v49 & v47) >> v19);
              v45 = v45 - ((v49 & v45) >> v19) + ((v49 & *v48) >> v19);
            }

            v43 = v43 - ((BLEND8_21892[*v38 & 0xF] & v43) >> (*v38 & 0xF)) + ((BLEND8_21892[*v38 & 0xF] & v45) >> (*v38 & 0xF));
          }

          else if (v19)
          {
            v50 = (v41 + v18);
            if (v16 < v41 + v18)
            {
              v50 = v16;
            }

            if (v8 > v50)
            {
              v50 = v8;
            }

            v43 = v43 - ((BLEND8_21892[v19] & v43) >> v19) + ((BLEND8_21892[v19] & *v50) >> v19);
          }

          v51 = __ROL4__(v43, v7) | v9;
          if (v6 != 255)
          {
            v51 = (v51 * v6 + ((v51 * v6) >> 8) + 1) >> 8;
          }

          if (v51)
          {
            if (v51 != 255)
            {
              v51 += (~v51 * *v10 + ((~v51 * *v10) >> 8) + 1) >> 8;
            }

            *v10 = v51;
          }

          v38 += 2;
          ++v10;
          --v37;
        }

        while (v37);
      }

      v10 += v67;
      v15 += v14;
      --a6;
    }

    while (a6);
  }

  else
  {
    v52 = (v12 + 16 * a3);
    do
    {
      v53 = *(result + 32) + (v15 >> v13) * v11;
      if (v68 == 1)
      {
        if (a5 >= 1)
        {
          v54 = v52;
          v55 = a5;
          do
          {
            v56 = *v54;
            v54 += 2;
            v57 = (v53 + v56);
            if (v16 < v53 + v56)
            {
              v57 = v16;
            }

            if (*(result + 32) > v57)
            {
              v57 = *(result + 32);
            }

            v58 = __ROL4__(*v57, v7) | v9;
            if (v6 != 255)
            {
              v58 = (v58 * v6 + ((v58 * v6) >> 8) + 1) >> 8;
            }

            *v10++ = v58;
            --v55;
          }

          while (v55);
        }
      }

      else
      {
        v59 = v52;
        v60 = a5;
        if (a5 >= 1)
        {
          do
          {
            v61 = *v59;
            v59 += 2;
            v62 = (v53 + v61);
            if (v16 < v53 + v61)
            {
              v62 = v16;
            }

            if (*(result + 32) > v62)
            {
              v62 = *(result + 32);
            }

            v63 = __ROL4__(*v62, v7) | v9;
            if (v6 != 255)
            {
              v63 = (v63 * v6 + ((v63 * v6) >> 8) + 1) >> 8;
            }

            if (v63)
            {
              if (v63 != 255)
              {
                v63 += (~v63 * *v10 + ((~v63 * *v10) >> 8) + 1) >> 8;
              }

              *v10 = v63;
            }

            ++v10;
            --v60;
          }

          while (v60);
        }
      }

      v10 += v67;
      v15 += v14;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t argb32_image_mark_argb32(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v7 = *(a2 + 8);
  v87 = *a2;
  v8 = *(result + 32);
  if (*(result + 40))
  {
    v9 = 0;
  }

  else
  {
    v9 = -16777216;
  }

  v10 = *(a2 + 2);
  v86 = *(a2 + 3) - a5;
  v12 = *(a2 + 15);
  v11 = *(a2 + 16);
  v13 = *(a2 + 7);
  v83 = *(a2 + 9);
  v14 = *(a2 + 5) + v83 * a4;
  v15 = v8 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v93 = result;
  v88 = a5;
  v84 = v13;
  v85 = v12;
  if (*(result + 176))
  {
    v82 = *(a2 + 11);
    v80 = ~(-1 << v13);
    v81 = *(a2 + 13);
    v79 = v13 - 4;
    v16 = (v15 - 4);
    v77 = a5;
    v78 = -v12;
    v76 = v11 + 16 * a3 + 8;
    while (1)
    {
      v91 = a6;
      if (((v81 - v14) | (v14 - v82)) < 0)
      {
        v19 = 0;
        v18 = 0;
      }

      else
      {
        v17 = ((v14 & v80) >> v79) & 0xF;
        v18 = (v17 - 7) >= 9 ? v78 : v12;
        v19 = weights_21890[v17] & 0xF;
      }

      v20 = *(v93 + 32) + (v14 >> v13) * v12;
      v89 = v14;
      if (v87 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v21 = v76;
        v22 = v77;
        while (1)
        {
          v23 = *(v21 - 1);
          v24 = *v21;
          v25 = v20 + v23;
          if (v16 >= v20 + v23)
          {
            v26 = (v20 + v23);
          }

          else
          {
            v26 = v16;
          }

          if (v26 < v8)
          {
            v26 = v8;
          }

          v27 = *v26;
          v28 = v24 & 0xF;
          if ((v24 & 0xF) != 0)
          {
            break;
          }

          if (v19)
          {
            v39 = (v25 + v18);
            if (v16 < v25 + v18)
            {
              v39 = v16;
            }

            if (v39 < v8)
            {
              v39 = v8;
            }

            v40 = BLEND8_21892[v19];
            v37 = v27 - ((v40 & v27) >> v19);
            v38 = (v40 & *v39) >> v19;
            goto LABEL_43;
          }

LABEL_44:
          result = v27 | v9;
          if (v7 != 255)
          {
            result = PDM_15068(result, v7);
          }

          v21 += 2;
          *v10++ = result;
          if (!--v22)
          {
            goto LABEL_86;
          }
        }

        v29 = (v25 + (v24 >> 4));
        if (v16 < v29)
        {
          v29 = v16;
        }

        if (v29 < v8)
        {
          v29 = v8;
        }

        v30 = *v29;
        if (v19)
        {
          v31 = (v25 + v18);
          if (v16 >= v31)
          {
            v32 = v31;
          }

          else
          {
            v32 = v16;
          }

          if (v32 < v8)
          {
            v32 = v8;
          }

          v33 = *v32;
          v34 = (v31 + (v24 >> 4));
          if (v16 < v34)
          {
            v34 = v16;
          }

          if (v34 < v8)
          {
            v34 = v8;
          }

          v35 = BLEND8_21892[v19];
          v27 = v27 - ((v35 & v27) >> v19) + ((v35 & v33) >> v19);
          v30 = v30 - ((v35 & v30) >> v19) + ((v35 & *v34) >> v19);
        }

        v36 = BLEND8_21892[*v21 & 0xF];
        v37 = v27 - ((v36 & v27) >> v28);
        v38 = (v36 & v30) >> v28;
LABEL_43:
        v27 = v37 + v38;
        goto LABEL_44;
      }

LABEL_86:
      v12 = v85;
      v10 += v86;
      LOBYTE(v13) = v84;
      v14 = v89 + v83;
      a6 = v91 - 1;
      a5 = v88;
      if (v91 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_86;
    }

    v41 = v76;
    v42 = v77;
    while (1)
    {
      v43 = *(v41 - 1);
      v44 = *v41;
      v45 = v20 + v43;
      if (v16 >= v20 + v43)
      {
        v46 = (v20 + v43);
      }

      else
      {
        v46 = v16;
      }

      if (v46 < v8)
      {
        v46 = v8;
      }

      v47 = *v46;
      v48 = v44 & 0xF;
      if ((v44 & 0xF) != 0)
      {
        break;
      }

      if (v19)
      {
        v59 = (v45 + v18);
        if (v16 < v45 + v18)
        {
          v59 = v16;
        }

        if (v59 < v8)
        {
          v59 = v8;
        }

        v60 = BLEND8_21892[v19];
        v57 = v47 - ((v60 & v47) >> v19);
        v58 = (v60 & *v59) >> v19;
        goto LABEL_78;
      }

LABEL_79:
      v61 = v47 | v9;
      if (v7 != 255)
      {
        result = PDM_15068(v47 | v9, v7);
        v61 = result;
      }

      if (HIBYTE(v61))
      {
        if (HIBYTE(v61) == 255)
        {
          *v10 = v61;
        }

        else
        {
          result = DplusDM_15070(v10, v61, *v10, ~v61 >> 24);
        }
      }

      v41 += 2;
      ++v10;
      if (!--v42)
      {
        goto LABEL_86;
      }
    }

    v49 = (v45 + (v44 >> 4));
    if (v16 < v49)
    {
      v49 = v16;
    }

    if (v49 < v8)
    {
      v49 = v8;
    }

    v50 = *v49;
    if (v19)
    {
      v51 = (v45 + v18);
      if (v16 >= v51)
      {
        v52 = v51;
      }

      else
      {
        v52 = v16;
      }

      if (v52 < v8)
      {
        v52 = v8;
      }

      v53 = *v52;
      v54 = (v51 + (v44 >> 4));
      if (v16 < v54)
      {
        v54 = v16;
      }

      if (v54 < v8)
      {
        v54 = v8;
      }

      v55 = BLEND8_21892[v19];
      v47 = v47 - ((v55 & v47) >> v19) + ((v55 & v53) >> v19);
      v50 = v50 - ((v55 & v50) >> v19) + ((v55 & *v54) >> v19);
    }

    v56 = BLEND8_21892[*v41 & 0xF];
    v57 = v47 - ((v56 & v47) >> v48);
    v58 = (v56 & v50) >> v48;
LABEL_78:
    v47 = v57 + v58;
    goto LABEL_79;
  }

  v92 = (v11 + 16 * a3);
  v62 = v15 - 4;
  v90 = a5;
  do
  {
    v63 = *(v93 + 32);
    v64 = &v63[(v14 >> v13) * v12];
    v65 = v14;
    if (v87 == 1)
    {
      if (a5 >= 1)
      {
        v66 = v92;
        v67 = v90;
        do
        {
          v68 = *v66;
          v66 += 2;
          v69 = &v64[v68];
          if (v62 < &v64[v68])
          {
            v69 = v62;
          }

          if (v69 < v63)
          {
            v69 = v63;
          }

          result = *v69 | v9;
          if (v7 != 255)
          {
            result = PDM_15068(result, v7);
          }

          *v10++ = result;
          --v67;
        }

        while (v67);
      }
    }

    else
    {
      v70 = v92;
      v71 = v90;
      if (a5 >= 1)
      {
        do
        {
          v72 = *v70;
          v70 += 2;
          v73 = &v64[v72];
          if (v62 < &v64[v72])
          {
            v73 = v62;
          }

          if (v73 < *(v93 + 32))
          {
            v73 = *(v93 + 32);
          }

          v74 = *v73;
          v75 = v74 | v9;
          if (v7 != 255)
          {
            result = PDM_15068(v74 | v9, v7);
            v75 = result;
          }

          if (HIBYTE(v75))
          {
            if (HIBYTE(v75) == 255)
            {
              *v10 = v75;
            }

            else
            {
              result = DplusDM_15070(v10, v75, *v10, ~v75 >> 24);
            }
          }

          ++v10;
          --v71;
        }

        while (v71);
      }
    }

    v12 = v85;
    v10 += v86;
    LOBYTE(v13) = v84;
    v14 = v65 + v83;
    --a6;
    a5 = v88;
  }

  while (a6);
  return result;
}

CGAffineTransform *__cdecl CGAffineTransformMakeRotation(CGAffineTransform *__return_ptr retstr, CGFloat angle)
{
  v4 = __sincos_stret(angle);
  retstr->a = v4.__cosval;
  retstr->b = v4.__sinval;
  retstr->c = -v4.__sinval;
  retstr->d = v4.__cosval;
  retstr->tx = 0.0;
  retstr->ty = 0.0;
  return result;
}

void GRAYA8_shade_radial_Gray(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a4;
  v5 = *(a1 + 400);
  v6 = *(a1 + 280);
  v7 = *(a1 + 284);
  v8 = *(*(a1 + 272) + 4);
  v9 = v8 * a2;
  v10 = v8 * a3;
  v11 = *(a1 + 296) + ((*(a1 + 288) * v10) + (v6 * v9));
  v12 = *(a1 + 300) + ((v10 * *(a1 + 292)) + (v7 * v9));
  v85 = *(a1 + 344);
  v86 = *(a1 + 336);
  v87 = *(a1 + 304);
  v13 = *(a1 + 308);
  v14 = *(a1 + 324);
  v15 = v5[2];
  v16 = v5[5];
  v82 = v5[4];
  v17 = v5[7];
  v18 = *(a1 + 144);
  v19 = *(a1 + 152);
  v20 = *(a1 + 384);
  if (*(a1 + 392))
  {
    v21 = *(a1 + 392);
  }

  else
  {
    v21 = *(a1 + 272);
  }

  v22 = *(a1 + 40);
  v89 = *(a1 + 32);
  if (v22)
  {
    v23 = *(a1 + 40);
  }

  else
  {
    v23 = *(a1 + 272);
  }

  if (v15 != 0.0 || v17 != 0.0 || v7 != 0.0)
  {
    v28 = *(a1 + 320);
    v83 = v5[3];
    v29 = -v5[6];
    v80 = v13 - v87;
    v81 = v5[8];
    while (1)
    {
      v30 = v29 + ((v11 + v11) * v15);
      v31 = ((v12 * v12) + (v11 * v11)) - v17;
      if (v16 == 0.0)
      {
        v38 = v31 / v30;
      }

      else
      {
        v32 = ((v16 * -4.0) * v31) + (v30 * v30);
        if (v32 < 0.0)
        {
          goto LABEL_51;
        }

        v33 = sqrtf(v32);
        v34 = v81 * (v30 - v33);
        v35 = v30 + v33;
        v36 = v81 * v35;
        v37 = (v81 * v35) <= v34;
        if ((v81 * v35) <= v34)
        {
          v38 = v81 * v35;
        }

        else
        {
          v38 = v34;
        }

        if (v37)
        {
          v36 = v34;
        }

        if (v36 < 0.0)
        {
          v39 = v36 < v83;
LABEL_33:
          v40 = v28;
          if (v39)
          {
            goto LABEL_51;
          }

LABEL_34:
          if ((v40 & 0x80000000) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_51;
        }

        if (v36 <= 1.0)
        {
          v41 = v87 + (v36 * v80);
          goto LABEL_45;
        }

        if ((v14 & 0x80000000) == 0)
        {
          v40 = v14;
          if (v36 <= v82)
          {
LABEL_46:
            v42 = v40;
            if (!v22)
            {
              v42 = 0;
            }

            v43 = *(v23 + 4 * v42);
            v44 = *(v89 + 4 * v40);
            if (v22)
            {
              v44 = v43 * v44;
            }

            goto LABEL_53;
          }
        }
      }

      if (v38 < 0.0)
      {
        v39 = v38 < v83;
        goto LABEL_33;
      }

      if (v38 > 1.0)
      {
        v40 = v14;
        if (v38 > v82)
        {
          goto LABEL_51;
        }

        goto LABEL_34;
      }

      v41 = v87 + (v38 * v80);
LABEL_45:
      v40 = (v85 * (v41 - v86));
      if ((v40 & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

LABEL_51:
      if (!v20)
      {
        v45 = 0;
        goto LABEL_55;
      }

      v43 = *v21;
      v44 = *v21 * *v20;
LABEL_53:
      SHADE(v19, v44, v43);
      v45 = -1;
LABEL_55:
      v11 = v6 + v11;
      v12 = v7 + v12;
      v19 += 2;
      *v18++ = v45;
      if (!--v4)
      {
        return;
      }
    }
  }

  v24 = v12 * v12;
  v25 = -v16;
  if ((v12 * v12) <= -v16)
  {
    v88 = fabsf(v5[8]);
    v46 = v16 * -4.0;
    v47 = v13 - v87;
    if (v22)
    {
      v48 = *(a1 + 324);
    }

    else
    {
      v48 = 0;
    }

    v84 = v48;
    v49 = a4 + 2;
    v50 = 1.0;
    while (1)
    {
      v51 = v24 + (v11 * v11);
      v52 = v6 + v11;
      v53 = v24 + (v52 * v52);
      if (v51 <= v25 || v53 <= v25)
      {
        v55 = v88 * sqrtf(v46 * v51);
        v56 = v88 * sqrtf(v46 * v53);
        v57 = (v85 * ((v87 + (v55 * v47)) - v86));
        v58 = (v85 * ((v87 + (v56 * v47)) - v86));
        if (v55 > v50 || v56 > v50)
        {
          if (v55 <= v50)
          {
            if ((v57 & 0x80000000) != 0)
            {
              goto LABEL_98;
            }

            if (v22)
            {
              v60 = (v85 * ((v87 + (v55 * v47)) - v86));
            }

            else
            {
              v60 = 0;
            }
          }

          else if (v55 > v82 || (v60 = v84, v57 = v14, (v14 & 0x80000000) != 0))
          {
LABEL_98:
            if (v20)
            {
              v71 = *v21;
              v72 = *v21 * *v20;
              goto LABEL_100;
            }

            v70 = 0;
LABEL_101:
            if (v56 <= v50)
            {
              if ((v58 & 0x80000000) != 0)
              {
                goto LABEL_112;
              }

              if (v22)
              {
                v73 = (v85 * ((v87 + (v56 * v47)) - v86));
              }

              else
              {
                v73 = 0;
              }
            }

            else if (v56 > v82 || (v73 = v84, v58 = v14, (v14 & 0x80000000) != 0))
            {
LABEL_112:
              if (!v20)
              {
                v69 = 0;
                goto LABEL_118;
              }

              v74 = *v21;
              v75 = *v21 * *v20;
              goto LABEL_114;
            }

            v74 = *(v23 + 4 * v73);
            v75 = *(v89 + 4 * v58);
            if (v22)
            {
              v75 = v74 * v75;
            }

LABEL_114:
            SHADE(v19 + 2, v75, v74);
            v69 = -1;
            goto LABEL_118;
          }

          v71 = *(v23 + 4 * v60);
          v72 = *(v89 + 4 * v57);
          if (v22)
          {
            v72 = v71 * v72;
          }

LABEL_100:
          SHADE(v19, v72, v71);
          v70 = -1;
          goto LABEL_101;
        }

        v63 = v57;
        if (!v22)
        {
          v63 = 0;
        }

        v64 = *(v23 + 4 * v63);
        v65 = *(v89 + 4 * v57);
        v66 = v58;
        if (v22)
        {
          v65 = v64 * v65;
        }

        else
        {
          v66 = 0;
        }

        v61 = *(v23 + 4 * v66);
        if (v22)
        {
          v62 = v61 * *(v89 + 4 * v58);
        }

        else
        {
          v62 = *(v89 + 4 * v58);
        }

        v67 = v19;
      }

      else
      {
        if ((v14 & 0x80000000) != 0)
        {
          if (!v20)
          {
            v69 = 0;
            v70 = 0;
            goto LABEL_118;
          }

          v61 = *v21;
          v62 = *v21 * *v20;
        }

        else
        {
          v61 = *(v23 + 4 * v84);
          if (v22)
          {
            v62 = v61 * *(v89 + 4 * v14);
          }

          else
          {
            v62 = *(v89 + 4 * v14);
          }
        }

        v67 = v19;
        v65 = v62;
        v64 = v61;
      }

      SHADE(v67, v65, v64);
      v68 = v62;
      v50 = 1.0;
      SHADE(v19 + 2, v68, v61);
      v69 = -1;
      v70 = -1;
LABEL_118:
      v11 = v6 + v52;
      v19 += 4;
      *v18 = v70;
      v18[1] = v69;
      v18 += 2;
      v49 -= 2;
      if (v49 <= 2)
      {
        return;
      }
    }
  }

  if (v20 || (v14 & 0x80000000) == 0)
  {
    if ((v14 & 0x80000000) != 0)
    {
      v77 = *v21;
      v78 = *v21 * *v20;
    }

    else
    {
      if (v22)
      {
        v76 = *(a1 + 324);
      }

      else
      {
        v76 = 0;
      }

      v77 = *(v23 + 4 * v76);
      if (v22)
      {
        v78 = v77 * *(v89 + 4 * v14);
      }

      else
      {
        v78 = *(v89 + 4 * v14);
      }
    }

    v79 = a4 + 4;
    do
    {
      SHADE(v19, v78, v77);
      SHADE(v19 + 2, v78, v77);
      SHADE(v19 + 4, v78, v77);
      SHADE(v19 + 6, v78, v77);
      *v18 = -1;
      v18 += 4;
      v79 -= 4;
      v19 += 8;
    }

    while (v79 > 4);
  }

  else
  {
    if (a4 >= 4)
    {
      v26 = 4;
    }

    else
    {
      v26 = a4;
    }

    v27 = *(a1 + 144);

    bzero(v27, ((a4 - v26 + 3) & 0xFFFFFFFC) + 4);
  }
}

void CGContextDrawRadialGradient(CGContextRef c, CGGradientRef gradient, CGPoint startCenter, CGFloat startRadius, CGPoint endCenter, CGFloat endRadius, CGGradientDrawingOptions options)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      if (gradient)
      {
        v9 = options;
        y = endCenter.y;
        x = endCenter.x;
        v14 = startCenter.y;
        v15 = startCenter.x;
        v16 = CFGetTypeID(gradient);
        if (kCGGradientInterpolatesPremultiplied_block_invoke_once[0] != -1)
        {
          v21 = v16;
          dispatch_once(kCGGradientInterpolatesPremultiplied_block_invoke_once, &__block_literal_global_18_14085);
          v16 = v21;
        }

        if (v16 == CGGradientGetTypeID_gradient_type_id)
        {
          v17 = *(c + 5);
          if (v17)
          {
            v18 = *(v17 + 112);
            if (!v18 || v18(v15, v14, startRadius, x, y, endRadius) == 1006)
            {
              RadialWithGradient = CGShadingCreateRadialWithGradient(gradient, v9 & 1, (v9 & 2) != 0, v15, v14, startRadius, x, y, endRadius);
              CGContextDrawShading(c, RadialWithGradient);
              if (RadialWithGradient)
              {

                CFRelease(RadialWithGradient);
              }
            }
          }
        }
      }

      return;
    }

    v20 = c;
  }

  else
  {
    v20 = 0;
  }

  handle_invalid_context("CGContextDrawRadialGradient", v20);
}

uint64_t CGShadingCreateRadialInternal(void *a1, uint64_t *a2, const CGRect *a3, double *a4, void *a5, char a6, char a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  Empty = 0;
  if (a1 && a5)
  {
    v16 = *(a1[3] + 48);
    v17 = a5[6];
    if (v17 == v16 || v17 == v16 + 1)
    {
      if (vabdd_f64(a10, a13) >= 0.000001)
      {
        v26 = a13;
      }

      else
      {
        v26 = a13 + 0.000001;
      }

      Empty = CGShadingCreateEmpty(2, a1, a2, a3);
      *(Empty + 128) = a8;
      *(Empty + 136) = a9;
      *(Empty + 144) = fabs(a10);
      *(Empty + 152) = a6;
      *(Empty + 160) = a11;
      *(Empty + 168) = a12;
      *(Empty + 176) = fabs(v26);
      *(Empty + 184) = a7;
      CFRetain(a5);
      *(Empty + 208) = a5;
      if (a4)
      {
        *(Empty + 192) = *a4;
        v27 = a4[1];
      }

      else
      {
        *(Empty + 192) = 0;
        v27 = 1.0;
      }

      *(Empty + 200) = v27;
    }

    else
    {
      return 0;
    }
  }

  return Empty;
}

BOOL CGRectContainsPoint(CGRect rect, CGPoint point)
{
  x = point.x;
  if (rect.origin.x == INFINITY || rect.origin.y == INFINITY)
  {
    return 0;
  }

  y = point.y;
  if (rect.size.width < 0.0 || rect.size.height < 0.0)
  {
    rect = CGRectStandardize(rect);
  }

  result = 0;
  if (x >= rect.origin.x && x < rect.origin.x + rect.size.width && y >= rect.origin.y)
  {
    return y < rect.origin.y + rect.size.height;
  }

  return result;
}

CGSize CGSizeApplyAffineTransform(CGSize size, CGAffineTransform *t)
{
  v2 = vmlaq_n_f64(vmulq_n_f64(*&t->c, size.height), *&t->a, size.width);
  v3 = v2.f64[1];
  v4 = v2.f64[0];
  result.height = v3;
  result.width = v4;
  return result;
}

CGPatternRef CGColorGetPattern(CGColorRef color)
{
  if (color < 1)
  {
    return 0;
  }

  else
  {
    return *(color + 4);
  }
}

uint64_t CGFontDBPurgeFont(uint64_t result, const void *a2)
{
  if (result)
  {
    v3 = result;
    pthread_mutex_lock((result + 32));
    purge_font_locked(v3, a2);

    return pthread_mutex_unlock((v3 + 32));
  }

  return result;
}

void purge_font_locked(uint64_t a1, const void *a2)
{
  v24[2] = *MEMORY[0x1E69E9840];
  Count = CFDictionaryGetCount(*(a1 + 8));
  v5 = MEMORY[0x1EEE9AC00](16 * Count);
  v8 = (&v24[-2] - v6 - 7);
  if (v7 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v9 = (&v24[-2] - v6 - 7);
  }

  else
  {
    v9 = 0;
  }

  if (v7 - 0x1FFFFFFFFFFFFFFFLL >= 0xE00000000000007ALL)
  {
    v9 = malloc_type_malloc(v5, 0xA00F367BuLL);
  }

  if (!v9)
  {
    return;
  }

  v10 = &v9[Count];
  CFDictionaryGetKeysAndValues(*(a1 + 8), v9, v10);
  if (!a2)
  {
    Mutable = CFDictionaryCreateMutable(0, Count, 0, 0);
    if (Count < 1)
    {
LABEL_27:
      CFRelease(Mutable);
      goto LABEL_33;
    }

    v16 = 0;
    while (1)
    {
      v17 = CFGetRetainCount(v10[v16]);
      if (v17 == 2)
      {
        break;
      }

      if (v17 == 1)
      {
        v18 = *(a1 + 8);
        v19 = v9[v16];
LABEL_23:
        CFDictionaryRemoveValue(v18, v19);
      }

LABEL_24:
      v16 = v16 + 1;
      if (Count == v16)
      {
        goto LABEL_27;
      }
    }

    if (!CFDictionaryContainsKey(Mutable, v10[v16]))
    {
      CFDictionarySetValue(Mutable, v10[v16], v16);
      goto LABEL_24;
    }

    CFDictionaryRemoveValue(*(a1 + 8), v9[v16]);
    Value = CFDictionaryGetValue(Mutable, v10[v16]);
    CFDictionaryRemoveValue(*(a1 + 8), v9[Value]);
    v19 = v10[v16];
    v18 = Mutable;
    goto LABEL_23;
  }

  v11 = CFGetRetainCount(a2);
  if (v11 > 2 || Count < 1)
  {
    goto LABEL_33;
  }

  v12 = v11;
  v13 = 0;
  v14 = 0;
  while (v10[v13] != a2)
  {
LABEL_14:
    if (Count == ++v13)
    {
      goto LABEL_29;
    }
  }

  v24[v14] = v13;
  if (v14 != 1)
  {
    v14 = 1;
    goto LABEL_14;
  }

  v14 = 2;
LABEL_29:
  if (v11 == v14 && v14 >= 1)
  {
    v21 = v24;
    do
    {
      v22 = *v21++;
      CFDictionaryRemoveValue(*(a1 + 8), v9[v22]);
      --v12;
    }

    while (v12);
  }

LABEL_33:
  if (v9 != v8)
  {
    free(v9);
  }
}

int CGFontGetDescent(CGFontRef font)
{
  font_info = get_font_info(font);
  if (font_info)
  {
    LODWORD(font_info) = font_info[4];
  }

  return font_info;
}

int CGFontGetAscent(CGFontRef font)
{
  font_info = get_font_info(font);
  if (font_info)
  {
    LODWORD(font_info) = font_info[3];
  }

  return font_info;
}

CFTypeRef pathCreateCopyByClippingWithPath(int a1, CGPathRef path, int a3, const void *a4, int a5)
{
  if (!path)
  {
    return 0;
  }

  if (CGPathDisableTypeValidation)
  {
    if (!a4)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v10 = CFGetTypeID(path);
  TypeID = CGPathGetTypeID();
  v12 = 0;
  if (a4 && v10 == TypeID)
  {
    if ((CGPathDisableTypeValidation & 1) == 0)
    {
      v13 = CFGetTypeID(a4);
      if (v13 != CGPathGetTypeID())
      {
        return 0;
      }
    }

LABEL_9:
    memset(v20, 0, sizeof(v20));
    memset(v19, 0, sizeof(v19));
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    clip<std::vector<std::vector<ClipperLib::IntPoint>>>(&v16, a1, path, a3, a4, a5, 1, v20, v19);
    v15[0] = v16;
    v15[1] = v17;
    v15[2] = v18;
    v12 = CGPathRandomAccess::new_cgpath_from_clipper(v20, v19, v15);
    *&v16 = v19;
    std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:fe200100](&v16);
    *&v16 = v20;
    std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:fe200100](&v16);
  }

  return v12;
}

void sub_183F6AB8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  a17 = &a23;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:fe200100](&a17);
  a17 = (v23 - 88);
  std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:fe200100](&a17);
  _Unwind_Resume(a1);
}

CGPathRef CGPathCreateWithRoundedRect(CGRect rect, CGFloat cornerWidth, CGFloat cornerHeight, const CGAffineTransform *transform)
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (cornerWidth >= 0.0)
  {
    v10 = cornerWidth;
  }

  else
  {
    v10 = 0.0;
  }

  if (cornerHeight >= 0.0)
  {
    v11 = cornerHeight;
  }

  else
  {
    v11 = 0.0;
  }

  if (rect.size.width < 0.0 || rect.size.height < 0.0)
  {
    v22 = CGRectStandardize(rect);
    if (v10 > v22.size.width * 0.5)
    {
      v10 = v22.size.width * 0.5;
    }

    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    rect = CGRectStandardize(v23);
  }

  else if (v10 > rect.size.width * 0.5)
  {
    v10 = rect.size.width * 0.5;
  }

  if (v11 > rect.size.height * 0.5)
  {
    v11 = rect.size.height * 0.5;
  }

  {
    return 0;
  }

  if (v10 != 0.0 && v11 != 0.0)
  {
    TypeID = CGPathGetTypeID();
    Instance = CGTypeCreateInstance(TypeID, 88);
    if (Instance)
    {
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v19 = CGRectStandardize(v24);
      v21.width = v10;
      v21.height = v11;
      CG::Path::append_rounded_rect((Instance + 16), &v19, v21, transform);
    }

    return Instance;
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;

  return CGPathCreateWithRect(*&v15, transform);
}

void CG::Path::append_rounded_rect(CG::Path *this, const CGRect *a2, CGSize a3, const CGAffineTransform *a4)
{
  if (*this)
  {
    height = a3.height;
    width = a3.width;
    CG::Path::reserve_space(this, 18, 10);
    v8 = height;
    x = a2->origin.x;
    y = a2->origin.y;
    v33.c = 0.0;
    v33.d = 1.0;
    v33.tx = x;
    v33.ty = y;
    v11 = vmulq_n_f64(0x3FF0000000000000uLL, width);
    v12 = vmulq_n_f64(*&v33.c, height);
    *&v33.a = v11;
    *&v33.c = v12;
    if (a4)
    {
      v13 = *&a4->c;
      v14 = vmlaq_n_f64(vmulq_laneq_f64(v13, v11, 1), *&a4->a, v11.f64[0]);
      v15 = vmlaq_n_f64(vmulq_laneq_f64(v13, v12, 1), *&a4->a, v12.f64[0]);
      v16 = vaddq_f64(*&a4->tx, vmlaq_n_f64(vmulq_n_f64(v13, v33.ty), *&a4->a, v33.tx));
      *&v33.a = v14;
      *&v33.c = v15;
      *&v33.tx = v16;
    }

    v18 = a2->size.width;
    v17 = a2->size.height;
    if (v18 < 0.0 || v17 < 0.0)
    {
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = a2->size.width;
      v34.size.height = a2->size.height;
      v35 = CGRectStandardize(v34);
      v30 = v35.size.width / width;
      v35.origin.x = x;
      v35.origin.y = y;
      v35.size.width = v18;
      v35.size.height = v17;
      v36 = CGRectStandardize(v35);
      v8 = height;
      v17 = v36.size.height;
    }

    else
    {
      v30 = v18 / width;
    }

    v25 = v17 / v8;
    v28 = v17 / v8 * 0.5;
    v26.n128_f64[0] = v30;
    v26.n128_f64[1] = v28;
    CG::Path::move_to_point(this, &v33, v7, v26);
    v32.x = v30;
    v32.y = v25;
    v31.x = v30 * 0.5;
    v31.y = v25;
    CG::Path::add_arc_to_point(this, &v32, &v31, 1.0, &v33);
    v32.x = 0.0;
    v32.y = v25;
    v31.x = 0.0;
    v31.y = v28;
    CG::Path::add_arc_to_point(this, &v32, &v31, 1.0, &v33);
    v32.x = 0.0;
    v32.y = 0.0;
    v31.x = v30 * 0.5;
    v31.y = 0.0;
    CG::Path::add_arc_to_point(this, &v32, &v31, 1.0, &v33);
    v31.y = v28;
    v32.x = v30;
    v32.y = 0.0;
    v31.x = v30;
    CG::Path::add_arc_to_point(this, &v32, &v31, 1.0, &v33);
    CG::Path::close_subpath(this);
  }

  else
  {
    origin = a2->origin;
    size = a2->size;
    v21 = a3.height;
    v22 = vdivq_f64(a3, size);
    *this = 2;
    if (a4)
    {
      v23 = *&a4->c;
      v24 = vmlaq_n_f64(vmulq_f64(v23, 0), *&a4->a, size.width);
      size = vmlaq_f64(vmulq_laneq_f64(v23, size, 1), 0, *&a4->a);
      origin = vaddq_f64(*&a4->tx, vmlaq_n_f64(vmulq_laneq_f64(v23, origin, 1), *&a4->a, origin.x));
    }

    else
    {
      v24 = *&size.width;
      size.width = 0.0;
    }

    *(this + 8) = v24;
    *(this + 24) = size;
    *(this + 40) = origin;
    *(this + 56) = v22;
  }
}

uint64_t sub_183F6AFC8(uint64_t a1, unsigned __int8 *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  result = a3(v3, a1, *a2);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for CGContentToneMappingInfo.EXRGammaOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void std::vector<BOOL>::emplace_back[abi:fe200100]<BOOL>(uint64_t *result, char a2)
{
  v4 = result[1];
  v5 = result[2];
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      goto LABEL_15;
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(result, v7);
    v4 = result[1];
  }

  result[1] = v4 + 1;
  if (v4 == -1 || ((v8 = *result, v9 = v4 >> 6, v10 = 1 << v4, (a2 & 1) == 0) ? (v11 = *(v8 + 8 * v9) & ~v10) : (v11 = *(v8 + 8 * v9) | v10), *(v8 + 8 * v9) = v11, !result[1]))
  {
    __break(1u);
LABEL_15:
    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }
}

void std::vector<BOOL>::reserve(uint64_t *a1, unint64_t a2)
{
  if (a2 > a1[2] << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(((a2 - 1) >> 6) + 1);
    }

    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }
}

void ___ZNK25CGPathRandomAccessSubpath20append_range_to_pathEddbb7CGPoint17CGAffineTransformR21CGPathOutputFiltering_block_invoke_5(uint64_t a1, double a2, double a3)
{
  std::vector<BOOL>::emplace_back[abi:fe200100]<BOOL>((*(*(a1 + 32) + 8) + 40), 0);
  v6 = *(*(a1 + 40) + 8);
  v8 = v6[6];
  v7 = v6[7];
  if (v8 >= v7)
  {
    v10 = v6[5];
    v11 = v8 - v10;
    v12 = (v8 - v10) >> 4;
    v13 = v12 + 1;
    if ((v12 + 1) >> 60)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v14 = v7 - v10;
    if (v14 >> 3 > v13)
    {
      v13 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<CFRange>>(v15);
    }

    v16 = (16 * v12);
    *v16 = a2;
    v16[1] = a3;
    v9 = 16 * v12 + 16;
    memcpy(0, v10, v11);
    v17 = v6[5];
    v6[5] = 0;
    v6[6] = v9;
    v6[7] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v8 = a2;
    v8[1] = a3;
    v9 = (v8 + 2);
  }

  v6[6] = v9;
}

void ___ZNK25CGPathRandomAccessSubpath20append_range_to_pathEddbb7CGPoint17CGAffineTransformR21CGPathOutputFiltering_block_invoke_2_7(uint64_t a1, __int128 *a2)
{
  std::vector<BOOL>::emplace_back[abi:fe200100]<BOOL>((*(*(a1 + 32) + 8) + 40), 1);
  v4 = *(*(a1 + 40) + 8);
  v6 = v4[6];
  v5 = v4[7];
  if (v5 - v6 >= 64)
  {
    v12 = 64;
    do
    {
      v13 = *a2++;
      *v6++ = v13;
      v12 -= 16;
    }

    while (v12);
    v4[6] = v6;
  }

  else
  {
    v7 = v4[5];
    v8 = (v6 - v7) >> 4;
    if ((v8 + 4) >> 60)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v9 = v5 - v7;
    v10 = v9 >> 3;
    if (v9 >> 3 <= (v8 + 4))
    {
      v10 = v8 + 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<CFRange>>(v11);
    }

    v14 = 0;
    v15 = 16 * v8;
    do
    {
      *(v15 + v14 * 16) = a2[v14];
      ++v14;
    }

    while (v14 != 4);
    memcpy((v15 + 64), v6, v4[6] - v6);
    v16 = v4[5];
    v17 = v15 + 64 + v4[6] - v6;
    v4[6] = v6;
    v18 = v6 - v16;
    v19 = (v15 - (v6 - v16));
    memcpy(v19, v16, v18);
    v20 = v4[5];
    v4[5] = v19;
    v4[6] = v17;
    v4[7] = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }
}

CGPathRef CGPathCreateWithContinuousRoundedRect(CGAffineTransform *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v35 = CGRectStandardize(*&a2);
  x = v35.origin.x;
  y = v35.origin.y;
  width = v35.size.width;
  height = v35.size.height;
  v32 = v35;
  if (a6 >= 0.0)
  {
    v15 = a6;
  }

  else
  {
    v15 = 0.0;
  }

  if (a7 >= 0.0)
  {
    v16 = a7;
  }

  else
  {
    v16 = 0.0;
  }

  if (v35.size.width < 0.0 || v35.size.height < 0.0)
  {
    v36 = CGRectStandardize(v35);
    v17 = v36.size.width * 0.5;
    if (v15 <= v36.size.width * 0.5)
    {
      v18 = v15;
    }

    else
    {
      v18 = v36.size.width * 0.5;
    }

    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v35 = CGRectStandardize(v37);
  }

  else
  {
    v17 = v35.size.width * 0.5;
    if (v15 <= v35.size.width * 0.5)
    {
      v18 = v15;
    }

    else
    {
      v18 = v35.size.width * 0.5;
    }
  }

  if (v16 > v35.size.height * 0.5)
  {
    v16 = v35.size.height * 0.5;
  }

  if (v18 == 0.0 || v16 == 0.0)
  {
    v23 = x;
    v24 = y;
    v25 = width;
    v26 = height;

    return CGPathCreateWithRect(*&v23, a1);
  }

  else if (v18 == v17 && v16 == v35.size.height * 0.5)
  {
    v28 = x;
    v29 = y;
    v30 = width;
    v31 = height;

    return CGPathCreateWithEllipseInRect(*&v28, a1);
  }

  else
  {
    {
      return 0;
    }

    TypeID = CGPathGetTypeID();
    Instance = CGTypeCreateInstance(TypeID, 128);
    v22 = Instance;
    if (Instance)
    {
      v34.width = v18;
      v34.height = v16;
      CG::Path::append_continuous_rounded_rect((Instance + 16), &v32, v34, a1);
    }

    return v22;
  }
}

void CG::Path::append_continuous_rounded_rect(CG::Path *this, const CGRect *a2, CGSize a3, float64x2_t *a4)
{
  height = a3.height;
  width = a3.width;
  v119 = *MEMORY[0x1E69E9840];
  CG::Path::reserve_space(this, 41, 17);
  v8 = 0;
  x = a2->origin.x;
  y = a2->origin.y;
  size = a2->size;
  __asm { FMOV            V1.2D, #0.5 }

  v17.f64[0] = width;
  v17.f64[1] = height;
  v18 = vdivq_f64(vaddq_f64(vdivq_f64(vmulq_f64(size, _Q1), v17), vdupq_n_s64(0xBFF87564302B40F6)), vdupq_n_s64(0xBFE0EAC8605681ECLL));
  __asm { FMOV            V2.2D, #1.0 }

  v20 = vbslq_s8(vcgtq_f64(v18, _Q2), _Q2, v18);
  v21 = vmovn_s64(vcltzq_f64(v20));
  v22 = v20.f64[1];
  if (v21.i8[4])
  {
    v22 = 0.0;
  }

  if (v21.i8[0])
  {
    v20.f64[0] = 0.0;
  }

  v23 = vdupq_lane_s64(COERCE__INT64(1.0 - v20.f64[0]), 0);
  v24 = vdupq_lane_s64(COERCE__INT64(1.0 - v22), 0);
  do
  {
    v25 = CG::Path::append_continuous_rounded_rect(CGRect const&,CGSize,CGAffineTransform const*)::continuous[v8];
    v26 = CG::Path::append_continuous_rounded_rect(CGRect const&,CGSize,CGAffineTransform const*)::circular[v8];
    *(&v109 + v8 * 16) = vmlaq_f64(vmulq_n_f64(v26, v20.f64[0]), v23, v25);
    *(&v99 + v8 * 16) = vmlaq_f64(vmulq_n_f64(v26, v22), v24, v25);
    ++v8;
  }

  while (v8 != 5);
  v27 = y + size.height;
  v28 = x + size.width;
  v90 = v108;
  v94 = v99;
  v29.n128_f64[0] = x + width * v108;
  v88 = y + height * v99;
  v29.n128_f64[1] = v88;
  CG::Path::move_to_point(this, a4, v7, v29);
  v81 = v107;
  v75 = v106;
  v30.f64[0] = x + width * v107;
  v92 = v100;
  v93 = v101;
  v80 = y + height * v100;
  v30.f64[1] = v80;
  v77 = y + height * v101;
  v98.x = x + width * v106;
  v98.y = v77;
  v74 = v105;
  v89 = v102;
  v73 = y + height * v102;
  v97.x = x + width * v105;
  v97.y = v73;
  CG::Path::add_curve_to_point(this, &v98, &v97, a4, v31, v30);
  v87 = v103;
  v32.f64[0] = x + width * v104;
  v83 = v104;
  v69 = y + height * v103;
  v32.f64[1] = v69;
  v66 = v112;
  v67 = v113;
  v98.x = x + width * v113;
  v98.y = y + height * v104;
  v85 = v115;
  v33 = y + height * v115;
  v97.x = x + width * v112;
  v97.y = v33;
  CG::Path::add_curve_to_point(this, &v98, &v97, a4, v34, v32);
  v35 = v110;
  v36 = v111;
  v84 = v116;
  v37.f64[0] = x + width * v111;
  v65 = y + height * v116;
  v37.f64[1] = v65;
  v38 = v109;
  v78 = v118;
  v79 = v117;
  v98.x = x + width * v110;
  v98.y = y + height * v117;
  v86 = x + width * v109;
  v70 = v98.y;
  v71 = y + height * v118;
  v97.x = v86;
  v97.y = v71;
  CG::Path::add_curve_to_point(this, &v98, &v97, a4, v39, v37);
  v40.f64[0] = v28 - width * v38;
  v40.f64[1] = v71;
  CG::Path::add_line_to_point(this, a4, v41, v40);
  v42.f64[0] = v28 - width * v35;
  v72 = v42.f64[0];
  v42.f64[1] = v70;
  v97.y = v33;
  v98.x = v28 - width * v36;
  v98.y = v65;
  v97.x = v28 - width * v66;
  CG::Path::add_curve_to_point(this, &v98, &v97, a4, v43, v42);
  v68 = v28 - width * v67;
  v44 = v114;
  v45.f64[0] = v68;
  v45.f64[1] = y + height * v114;
  v98.x = v28 - width * v114;
  v98.y = v69;
  v97.x = v28 - width * v74;
  v97.y = v73;
  CG::Path::add_curve_to_point(this, &v98, &v97, a4, v46, v45);
  v76 = v28 - width * v75;
  v47.f64[0] = v76;
  v47.f64[1] = v77;
  v82 = v28 - width * v81;
  v98.x = v82;
  v98.y = v80;
  v91 = v28 - width * v90;
  v97.x = v91;
  v97.y = v88;
  CG::Path::add_curve_to_point(this, &v98, &v97, a4, v48, v47);
  v49.f64[0] = v91;
  v49.f64[1] = v27 - height * v94;
  CG::Path::add_line_to_point(this, a4, v50, v49);
  v51.f64[0] = v82;
  v51.f64[1] = v27 - height * v92;
  v98.x = v76;
  v98.y = v27 - height * v93;
  v97.x = v28 - width * v74;
  v97.y = v27 - height * v89;
  CG::Path::add_curve_to_point(this, &v98, &v97, a4, v52, v51);
  v53.f64[0] = v28 - width * v83;
  v53.f64[1] = v27 - height * v87;
  v98.x = v68;
  v98.y = v27 - height * v83;
  v97.x = v28 - width * v66;
  v97.y = v27 - height * v85;
  CG::Path::add_curve_to_point(this, &v98, &v97, a4, v54, v53);
  v55.f64[0] = v28 - width * v36;
  v55.f64[1] = v27 - height * v84;
  v98.x = v72;
  v98.y = v27 - height * v79;
  v97.x = v28 - width * v38;
  v97.y = v27 - height * v78;
  CG::Path::add_curve_to_point(this, &v98, &v97, a4, v56, v55);
  v57.f64[0] = v86;
  v57.f64[1] = v27 - height * v78;
  CG::Path::add_line_to_point(this, a4, v58, v57);
  v59.f64[0] = x + width * v110;
  v59.f64[1] = v27 - height * v117;
  v98.x = x + width * v111;
  v98.y = v27 - height * v116;
  v97.x = x + width * v112;
  v97.y = v27 - height * v115;
  CG::Path::add_curve_to_point(this, &v98, &v97, a4, v60, v59);
  v61.f64[0] = x + width * v113;
  v61.f64[1] = v27 - height * v44;
  v98.x = x + width * v44;
  v98.y = v27 - height * v103;
  v97.x = x + width * v105;
  v97.y = v27 - height * v102;
  CG::Path::add_curve_to_point(this, &v98, &v97, a4, v62, v61);
  v63.f64[0] = x + width * v106;
  v63.f64[1] = v27 - height * v101;
  v98.x = x + width * v107;
  v98.y = v27 - height * v100;
  v97.x = x + width * v108;
  v97.y = v27 - height * v99;
  CG::Path::add_curve_to_point(this, &v98, &v97, a4, v64, v63);

  CG::Path::close_subpath(this);
}

void std::__throw_bad_array_new_length[abi:fe200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t __CGColorConversionInfoIterateFunctionsWithCallbacks_block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    return 1;
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v4 + 16);
  v7 = *(v5 + 56);
  v9[1] = *(v5 + 40);
  v9[2] = v7;
  v10[0] = *(v5 + 72);
  *(v10 + 12) = *(v5 + 84);
  v9[0] = *(v5 + 24);
  return v6(v4, v9, a2, a3);
}

double CGColorNxMTransformGetTransform@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (CGColorNxMTransformGetTransform_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorNxMTransformGetTransform_cglibrarypredicate, &__block_literal_global_28);
  }

  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  CGColorNxMTransformGetTransform_f(&v6, a1);
  result = *&v6;
  v5 = v7;
  *a2 = v6;
  *(a2 + 16) = v5;
  *(a2 + 32) = v8;
  return result;
}

void argb32_mark_image_xrgb32(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v8 = a2;
  v10 = *(a1 + 28);
  v11 = *(a1 + 4);
  v12 = *(a1 + 8);
  v22 = v12;
  v23 = v11;
  v13 = *(a1 + 136);
  if (v13)
  {
    v14 = *(a1 + 104);
    LODWORD(i) = *(a1 + 108);
    HIDWORD(i) = v14;
    shape_enum_clip_alloc(a1, a2, v13, 1, 1, 1, v14, i, v11, v12);
    v16 = v15;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  v17 = 0;
  v18 = 0;
  v16 = 0;
  for (i = 0; ; v17 = HIDWORD(i))
  {
    v19 = *(a1 + 76);
    v20 = (*(a1 + 88) + v19 * (a4 + v18 * a5) + 4 * (v17 + a3));
    v21 = (*(a1 + 40) + (*(a1 + 16) + v18) * v10 + 4 * (*(a1 + 12) + v17));
    if (v8 == 2)
    {
      CGSBlend8888toRGBA8888(v20, v19 * a5, v21, v10, v23, v22, 0xC6u, *(a1 + 48) != 0);
      if (!v16)
      {
        return;
      }
    }

    else if (*(a1 + 96))
    {
      CGBlt_copyBytes(4 * v23, v22, v20, v21, v19 * a5, v10);
      if (!v16)
      {
        return;
      }
    }

    else
    {
      CGSConvertRGBX8888toRGBA8888(v20, v19 * a5, v21, v10, v23, v22);
      if (!v16)
      {
        return;
      }
    }

LABEL_9:
    if (!shape_enum_clip_next(v16, &i + 1, &i, &v23, &v22))
    {
      break;
    }

    v18 = i;
  }

  free(v16);
}

size_t CGBitmapContextGetHeight(CGContextRef context)
{
  if (context && *(context + 4) == 1129601108 && *(context + 6) == 4)
  {
    return *(*(context + 4) + 16);
  }

  handle_invalid_context("CGBitmapContextGetHeight", context);
  return 0;
}

void unsupported(uint64_t a1)
{
  if (unsupported_predicate != -1)
  {
    dispatch_once(&unsupported_predicate, &__block_literal_global_15369);
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*(v2 + 24) + 48) - 1;
  }

  else
  {
    v3 = -1;
  }

  if (unsupported_full_log)
  {
    if (v3 > 3)
    {
      v4 = "NULL colorspace";
    }

    else
    {
      v4 = off_1E6E31C08[v3];
    }

    CGPostError("\nCGBitmapContextCreate: unsupported parameter combination:\n \t%s \n\t%zu bits/component, %s\n \t%zu bytes/row\n\t%s\n\t%s\n\t%s\n\t%s\n%s\n", v4, *(a1 + 80));
  }

  else
  {
    CGPostError("\nCGBitmapContextCreate: unsupported parameter combination:\n\t%s | %zu bits/component, %s | %zu bytes/row.\n\t%s | %s | %s\nSet CGBITMAP_CONTEXT_LOG_ERRORS environmental variable to see more details.\n");
  }
}

void *list_sort_1(void *result, unint64_t a2)
{
  if (a2 >= 2)
  {
    v3 = a2 >> 1;
    v4 = result;
    v5 = (a2 >> 1) - 1;
    if (a2 >> 1 != 1)
    {
      v4 = result;
      do
      {
        v4 = v4[1];
        --v5;
      }

      while (v5);
    }

    v6 = v4[1];
    v4[1] = 0;
    v7 = list_sort_1(result, a2 >> 1);
    result = list_sort_1(v6, a2 - v3);
    v8 = *result;
    v9 = *v7;
    if (*result)
    {
      LODWORD(v8) = *(v8 + 4);
    }

    if (v9)
    {
      LODWORD(v9) = *(v9 + 4);
    }

    if (v8 <= v9)
    {
      v11 = v7[1];
      v10 = result;
      result = v7;
    }

    else
    {
      v10 = result[1];
      v11 = v7;
    }

    v12 = v11 != 0;
    if (v11 && v10)
    {
      v13 = result;
      do
      {
        v14 = *v10;
        if (*v10)
        {
          LODWORD(v14) = *(v14 + 4);
        }

        v15 = *v11;
        if (*v11)
        {
          LODWORD(v15) = *(v15 + 4);
        }

        if (v14 <= v15)
        {
          v13[1] = v11;
          v17 = v11[1];
          v16 = v10;
          v13 = v11;
        }

        else
        {
          v13[1] = v10;
          v16 = v10[1];
          v17 = v11;
          v13 = v10;
        }

        v12 = v17 != 0;
        if (!v17)
        {
          break;
        }

        v10 = v16;
        v11 = v17;
      }

      while (v16);
    }

    else
    {
      v17 = v11;
      v16 = v10;
      v13 = result;
    }

    if (v12)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    v13[1] = v18;
  }

  return result;
}

CGPathRef CGPathRetain(CGPathRef path)
{
  if (path)
  {
    CFRetain(path);
  }

  return path;
}

uint64_t getEnumTagSinglePayload for CGContentToneMappingInfo.EXRGammaOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void CGvImage_converter_data_key_release(CGColorSpaceRef *a1)
{
  if (a1)
  {
    CGColorSpaceRelease(a1[5]);
    CGColorSpaceRelease(a1[10]);

    free(a1);
  }
}

uint64_t rip_auto_context_begin_layer(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  if (!a1)
  {
    v15 = 120;
    pthread_mutex_lock(0x78);
    v14 = 0;
    goto LABEL_6;
  }

  v14 = *(a1 + 288);
  v15 = v14 + 120;
  pthread_mutex_lock((v14 + 120));
  if (!v14)
  {
LABEL_6:
    v16 = 0;
    goto LABEL_7;
  }

  v16 = *(v14 + 88);
  if (!v16)
  {
    v16 = *(v14 + 80);
  }

LABEL_7:
  rip_auto_context_update_content_info_from_GState(v14, a3);
  v17 = *(v14 + 112);
  v18 = *(a3 + 120);
  if (*(v18 + 48) >= v17)
  {
    v17 = *(v18 + 48);
  }

  *(v14 + 112) = v17;
  if (v16)
  {
    v19 = *(v16 + 40);
    if (v19)
    {
      v20 = *(v19 + 192);
      if (v20)
      {
        v20(a4, a5, a6, a7);
      }
    }

    FillColor = CGGStateGetFillColor(a3);
    v22 = FillColor;
    if (FillColor)
    {
      CFRetain(FillColor);
    }

    ConstantColor = CGColorGetConstantColor(@"kCGColorClear");
    CGGStateSetFillColor(a3, ConstantColor);
    v24 = *(v16 + 40);
    if (v24)
    {
      v25 = *(v24 + 64);
      if (v25)
      {
        v25(v24, a2, a3, 0);
      }
    }

    CGGStateSetFillColor(a3, v22);
    if (v22)
    {
      CFRelease(v22);
    }

    *(v14 + 105) |= rip_auto_context_contains_transparency(v14);
  }

  pthread_mutex_unlock(v15);
  return a1;
}

uint64_t rip_auto_context_end_layer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = 120;
    pthread_mutex_lock(0x78);
    v5 = 0;
    goto LABEL_6;
  }

  v5 = *(a1 + 288);
  v6 = v5 + 120;
  pthread_mutex_lock((v5 + 120));
  if (!v5)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = *(v5 + 88);
  if (!v7)
  {
    v7 = *(v5 + 80);
  }

LABEL_7:
  rip_auto_context_update_content_info_from_GState(v5, a3);
  v8 = *(v5 + 112);
  v9 = *(a3 + 120);
  if (*(v9 + 48) >= v8)
  {
    v8 = *(v9 + 48);
  }

  *(v5 + 112) = v8;
  if (v7)
  {
    v10 = *(v7 + 40);
    if (v10)
    {
      v11 = *(v10 + 200);
      if (v11)
      {
        v11();
      }
    }

    *(v5 + 105) |= rip_auto_context_contains_transparency(v5);
  }

  pthread_mutex_unlock(v6);
  return a1;
}

_DWORD *CGPathIsPrimitive(_DWORD *cf)
{
  if (cf)
  {
    v1 = cf;
    if ((CGPathDisableTypeValidation & 1) == 0)
    {
      v2 = CFGetTypeID(cf);
      if (v2 != CGPathGetTypeID())
      {
        return 0;
      }
    }

    v3 = v1[4];
    if (v3 <= 7)
    {
      return ((v3 - 1) < 7);
    }

    if (v3 != 8)
    {
      return 0;
    }

    v4 = v1[7];
    return (v4 == 16968 || v4 == 135752);
  }

  return cf;
}

uint64_t sub_183F6C68C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_183F6C6D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

void Region.formUnion(_:)(unint64_t a1)
{
  v3 = v1;
  v388[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v383 = *a1;
  v384 = v4;
  v385 = *(a1 + 32);
  v386 = *(a1 + 48);
  v5 = *v1;
  v6 = *&v383;
  v8 = v1 + 32;
  v7 = *(v1 + 32);
  v9 = *v1 & 0x7FF0000000000000;
  v10 = v9 != 0x7FF0000000000000;
  v11 = *v1 & 0xFFFFFFFFFFFFFLL;
  if (!v11)
  {
    v10 = 1;
  }

  v12 = v10 && *(v7 + 16) == 0;
  v13 = v1 + 16;
  v14 = *(v1 + 16);
  v15 = *(v1 + 8);
  v16 = v1 + 24;
  v17 = *(v1 + 24);
  v18 = *(&v383 + 1);
  v19 = *(&v384 + 1);
  v20 = *&v384;
  v21 = v383 & 0x7FF0000000000000;
  v22 = v383 & 0xFFFFFFFFFFFFFLL;
  if ((v383 & 0x7FF0000000000000) == 0x7FF0000000000000 && v22)
  {
    return;
  }

  v23 = *(v385 + 16);
  if (v21 == 0x7FF0000000000000)
  {
    if (v9 == 0x7FF0000000000000 && v11)
    {
      if (v22)
      {
        return;
      }

LABEL_10:
      sub_183F705CC(&v383, v3);
      sub_183F70628(&v383, &v379);
      return;
    }

    if (v22)
    {
      return;
    }
  }

  else if (!v10)
  {
    goto LABEL_10;
  }

  v376 = v8;
  v375 = v16;
  if (*(&v384 + 1) >= v14)
  {
    v373 = v13;
    if (v17 < *&v384)
    {
      v28 = *(v7 + 16);
      if (!v28)
      {
        v28 = 2;
      }

      v374 = v28;
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = 2;
      }

      v29 = *(a1 + 16);
      v379 = *a1;
      v380 = v29;
      v381 = *(a1 + 32);
      v382 = *(a1 + 48);
      v30 = sub_183FA4388(0, v24);
      v31 = v30;
      if (v5 <= *&v383)
      {
        v6 = v5;
      }

      if (*(&v383 + 1) >= v15)
      {
        if ((~*(&v383 + 1) & 0x7FF0000000000000) != 0)
        {
          v15 = *(&v383 + 1);
        }

        else if ((*(&v383 + 1) & 0xFFFFFFFFFFFFFLL) == 0)
        {
          v15 = *(&v383 + 1);
        }
      }

      v27 = v374;
      v370 = &v362;
      MEMORY[0x1EEE9AC00](v30);
      v35 = &v359;
      v361 = &v383;
      v70 = sub_183FA5A00();
      v71 = *(v3 + 40);
      v372 = (v3 + 40);
      v72 = *(v71 + 16);
      if (v27 - 1 < v72)
      {
        v40 = v71 + 32;
        v2 = *(v40 + 4 * (v27 - 1));
        if (v27 == 1)
        {
          v38 = 0;
        }

        else
        {
          if (v27 - 2 >= v72)
          {
            goto LABEL_559;
          }

          v38 = *(v40 + 4 * (v27 - 2));
        }

        v27 = v24 * v31;
        if ((v24 * v31) >> 64 == (v24 * v31) >> 63)
        {
          v369 = v72;
          v40 = v24 >> 60;
          if (v24 >> 60)
          {
            goto LABEL_561;
          }

          if ((8 * v24) < 1025)
          {
            goto LABEL_96;
          }

          goto LABEL_539;
        }

        goto LABEL_536;
      }

      goto LABEL_534;
    }

    if (v15 < *&v383)
    {
      v31 = *(v3 + 40);
      v371 = (v3 + 40);
      v32 = *(v3 + 48);
      v369 = (v3 + 48);
      *&v379 = v5;
      *(&v379 + 1) = v15;
      *&v380 = v14;
      *(&v380 + 1) = v17;
      *&v381 = v7;
      *(&v381 + 1) = v31;
      v382 = v32;
      v33 = sub_183FA42A4(v12, *&v384, *(&v384 + 1));
      v35 = v34;
      v13 = v31;
      v16 = v32;

      if (*(v385 + 16))
      {
        v39 = *(v385 + 16);
      }

      else
      {
        v39 = 2;
      }

      v40 = v35 - v33;
      if (__OFSUB__(v35, v33))
      {
        goto LABEL_557;
      }

      v41 = __OFADD__(v40, v39);
      v40 += v39;
      v370 = v40;
      if (v41)
      {
        goto LABEL_558;
      }

      v31 = *(v3 + 32);
      v16 = *(v3 + 40);
      v382 = *(v3 + 48);
      v13 = v33;
      v374 = sub_183FA4388(v33, v35);
      v2 = v382;

      v379 = v383;
      v380 = v384;
      v381 = v385;
      v382 = v386;
      v42 = sub_183FA4388(0, v39);
      v40 = v374;
      v27 = v374 + v42;
      if (__OFADD__(v374, v42))
      {
        goto LABEL_560;
      }

      v24 = &v362;
      MEMORY[0x1EEE9AC00](v42);
      v16 = v358;
      v359 = &v383;
      v360 = *&v13;
      v361 = v35;
      v43 = v3;
      v44 = sub_183FA5A00();
      v45 = *(v3 + 40);
      v46 = *(v45 + 16);
      LODWORD(v31) = v35 == v46;
      v36 = v13;
      if (v13)
      {
        v47 = v13 - 1;
        v40 = &v390;
        v13 = v370;
        if (__OFSUB__(v36, 1))
        {
          goto LABEL_580;
        }

        if (v47 >= v46)
        {
LABEL_581:
          __break(1u);
          goto LABEL_582;
        }

        v40 = v45 + 32;
        v38 = *(v45 + 32 + 4 * v47);
        if (v36 > 1)
        {
          if (v36 - 2 >= v46)
          {
LABEL_612:
            __break(1u);
            goto LABEL_613;
          }

          LODWORD(v31) = 0;
          v40 = *(v40 + 4 * (v36 - 2));
          if (!v35)
          {
            v48 = 0;
            goto LABEL_139;
          }

          goto LABEL_136;
        }

        LODWORD(v31) = 0;
      }

      else
      {
        v38 = 0;
        v13 = v370;
      }

      v48 = 0;
      v40 = 0;
      if (!v35)
      {
        goto LABEL_139;
      }

LABEL_136:
      v94 = v35 - 1;
      if (!__OFSUB__(v35, 1))
      {
        if (v94 < v46)
        {
          v48 = *(v45 + 4 * v94 + 32);
LABEL_139:
          v37 = v13 * v27;
          if ((v13 * v27) >> 64 != (v13 * v27) >> 63)
          {
            goto LABEL_564;
          }

          v27 = v371;
          if ((v13 & 0x8000000000000000) == 0)
          {
            if (!(v13 >> 60))
            {
              v372 = v48;
              v365 = v46;
              v368 = &v362;
              v374 = v36;
              if ((8 * v13) < 1025)
              {
                goto LABEL_143;
              }

              goto LABEL_565;
            }

            goto LABEL_595;
          }

LABEL_594:
          __break(1u);
LABEL_595:
          __break(1u);
          goto LABEL_596;
        }

LABEL_583:
        __break(1u);
LABEL_584:
        __break(1u);
        goto LABEL_585;
      }

LABEL_582:
      __break(1u);
      goto LABEL_583;
    }

    if (*(&v383 + 1) < v5)
    {
      v31 = *(v3 + 40);
      v371 = (v3 + 40);
      v59 = *(v3 + 48);
      v369 = (v3 + 48);
      *&v379 = v5;
      *(&v379 + 1) = v15;
      *&v380 = v14;
      *(&v380 + 1) = v17;
      *&v381 = v7;
      *(&v381 + 1) = v31;
      v382 = v59;
      v60 = sub_183FA42A4(v12, *&v384, *(&v384 + 1));
      v35 = v61;
      v13 = v31;
      v16 = v59;

      if (*(v385 + 16))
      {
        v62 = *(v385 + 16);
      }

      else
      {
        v62 = 2;
      }

      v40 = v35 - v60;
      if (__OFSUB__(v35, v60))
      {
        goto LABEL_590;
      }

      v41 = __OFADD__(v40, v62);
      v40 += v62;
      v370 = v40;
      if (v41)
      {
LABEL_591:
        __break(1u);
      }

      else
      {
        v31 = *(v3 + 32);
        v16 = *(v3 + 40);
        v382 = *(v3 + 48);
        v13 = v60;
        v374 = sub_183FA4388(v60, v35);
        v2 = v382;

        v379 = v383;
        v380 = v384;
        v381 = v385;
        v382 = v386;
        v63 = sub_183FA4388(0, v62);
        v40 = v374;
        v27 = v374 + v63;
        if (!__OFADD__(v374, v63))
        {
          v24 = &v362;
          MEMORY[0x1EEE9AC00](v63);
          v16 = v358;
          v359 = &v383;
          v360 = *&v13;
          v361 = v35;
          v43 = v3;
          v64 = sub_183FA5A00();
          v65 = *(v3 + 40);
          v66 = *(v65 + 16);
          LODWORD(v31) = v35 == v66;
          v36 = v13;
          if (v13)
          {
            v67 = v13 - 1;
            v40 = &v390;
            v13 = v370;
            if (__OFSUB__(v36, 1))
            {
LABEL_609:
              __break(1u);
              goto LABEL_610;
            }

            if (v67 >= v66)
            {
LABEL_610:
              __break(1u);
              goto LABEL_611;
            }

            v40 = v65 + 32;
            v38 = *(v65 + 32 + 4 * v67);
            if (v36 > 1)
            {
              if (v36 - 2 >= v66)
              {
LABEL_627:
                __break(1u);
                goto LABEL_628;
              }

              LODWORD(v31) = 0;
              v40 = *(v40 + 4 * (v36 - 2));
              if (!v35)
              {
                v68 = 0;
                goto LABEL_212;
              }

LABEL_209:
              v127 = v35 - 1;
              if (__OFSUB__(v35, 1))
              {
LABEL_611:
                __break(1u);
                goto LABEL_612;
              }

              if (v127 >= v66)
              {
LABEL_613:
                __break(1u);
                goto LABEL_614;
              }

              v68 = *(v65 + 4 * v127 + 32);
LABEL_212:
              v37 = v13 * v27;
              if ((v13 * v27) >> 64 == (v13 * v27) >> 63)
              {
                v27 = v371;
                if ((v13 & 0x8000000000000000) != 0)
                {
LABEL_620:
                  __break(1u);
                  goto LABEL_621;
                }

                if (v13 >> 60)
                {
LABEL_621:
                  __break(1u);
                  goto LABEL_622;
                }

                v372 = v68;
                v365 = v66;
                v368 = &v362;
                v374 = v36;
                if ((8 * v13) < 1025)
                {
LABEL_216:
                  v367 = v358;
                  isStackAllocationSafe = MEMORY[0x1EEE9AC00](v64);
                  v24 = v358 - v133;
                  v43 = 4 * v13;
                  if (v13 >= 0x101)
                  {
                    v315 = v131;
                    v316 = v130;
                    v13 = v129;
                    v317 = v132;
                    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
                    v318 = v317;
                    v2 = v370;
                    v319 = v315;
                    v27 = v371;
                    if ((isStackAllocationSafe & 1) == 0)
                    {
                      v320 = v319;
                      v321 = v316;
                      v371 = v318;
                      v322 = swift_slowAlloc();
                      BYTE1(v353) = v31;
                      LOBYTE(v353) = 0;
                      sub_183FA86D0(v322, v2, v321, v24, v2, v3, v320, v371, &v391, sub_183FA3324, v16, v321, v353, v372, v13, v35, v13);
                      MEMORY[0x1865EFCB0](v322, -1, -1);
                      v179 = v375;
                      v24 = v376;
                      v13 = v373;
                      goto LABEL_323;
                    }
                  }

                  v366 = v358;
                  v134 = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
                  v8 = v358 - v135;
                  if ((v103 & 0x8000000000000000) == 0)
                  {
                    if (!(v103 >> 60))
                    {
                      v43 = 8 * v103;
                      if ((8 * v103) >= 1025)
                      {
                        goto LABEL_602;
                      }

                      goto LABEL_220;
                    }

                    goto LABEL_623;
                  }

LABEL_622:
                  __break(1u);
LABEL_623:
                  __break(1u);
LABEL_624:
                  __break(1u);
                  goto LABEL_625;
                }

LABEL_596:
                v310 = v40;
                v311 = v37;
                v312 = v36;
                v2 = v38;
                v64 = swift_stdlib_isStackAllocationSafe();
                v313 = v310;
                v27 = v371;
                if ((v64 & 1) == 0)
                {
                  v364 = v313;
                  v314 = swift_slowAlloc();
                  sub_183FA6CB0(v314, v13, v13, v311, v3, v364, v2, sub_183FA3324, &v387, v16, v311, 0, v31, v372, v312, v35, v312);
                  MEMORY[0x1865EFCB0](v314, -1, -1);
                  v179 = v375;
                  v24 = v376;
                  v13 = v373;
                  goto LABEL_323;
                }

                goto LABEL_216;
              }

              goto LABEL_593;
            }

            LODWORD(v31) = 0;
          }

          else
          {
            v38 = 0;
            v13 = v370;
          }

          v68 = 0;
          v40 = 0;
          if (!v35)
          {
            goto LABEL_212;
          }

          goto LABEL_209;
        }
      }

      __break(1u);
LABEL_593:
      __break(1u);
      goto LABEL_594;
    }

    if (v12)
    {
      v2 = a1;
      v24 = v12;
      if (sub_183F70684(*&v383, *(&v383 + 1), *&v384, *(&v384 + 1), v5, v15, v14, v17))
      {
        return;
      }

      v12 = v24;
      if (v23)
      {
        if (v17 <= *(&v384 + 1))
        {
          v93 = 2;
        }

        else
        {
          v93 = v14 <= *(&v384 + 1);
        }

        if (v21 == 0x7FF0000000000000 && v22)
        {
          v35 = *(v385 + 16);
        }

        else
        {
          v35 = *(v385 + 16);
          if (!v35)
          {
            v35 = 2;
          }
        }

        CGBitmapPixelInfoGetBitsPerComponent();
        v31 = v35 + 2;
        if (__OFADD__(v35, 2))
        {
          __break(1u);
        }

        else
        {
          v19 = v185;
          v20 = v186;
          v17 = v187;
          v189 = v188;
          v190 = *(v2 + 16);
          v379 = *v2;
          v380 = v190;
          v381 = *(v2 + 32);
          v382 = *(v2 + 48);
          v191 = sub_183FA4388(0, v35);
          v192 = v191 + 2;
          if (!__OFADD__(v191, 2))
          {
            if (v5 > *&v383)
            {
              v193 = *&v383;
            }

            else
            {
              v193 = v5;
            }

            if (*(&v383 + 1) >= v15)
            {
              if ((~*(&v383 + 1) & 0x7FF0000000000000) != 0)
              {
                v15 = *(&v383 + 1);
              }

              else if ((*(&v383 + 1) & 0xFFFFFFFFFFFFFLL) == 0)
              {
                v15 = *(&v383 + 1);
              }
            }

            v246 = *&v193;
            sub_183F70628(&v383, &v379);
            sub_183FA3400(0, v93, 1, v31, v192, v246, 0, *&v15, v19, v20, v17, v189, 0, v3, &v383, 0, v93);
            return;
          }
        }

        __break(1u);
        goto LABEL_652;
      }

LABEL_229:
      v146 = v12;
      if (sub_183F70684(v5, v15, v14, v17, *&v383, *(&v383 + 1), *&v384, *(&v384 + 1)))
      {
        goto LABEL_10;
      }

      v147 = *(v3 + 32);
      v31 = *(v3 + 40);
      v372 = (v3 + 40);
      v24 = *(v3 + 48);
      v371 = (v3 + 48);
      v148 = *(v3 + 16);
      v379 = *v3;
      v380 = v148;
      *&v381 = v147;
      *(&v381 + 1) = v31;
      v382 = v24;
      v2 = sub_183FA42A4(v146, *&v384, *(&v384 + 1));
      v35 = v149;
      v13 = v24;

      v40 = v35 - v2;
      if (__OFSUB__(v35, v2))
      {
        goto LABEL_656;
      }

      v13 = v40 + 2;
      if (__OFADD__(v40, 2))
      {
LABEL_657:
        __break(1u);
        goto LABEL_658;
      }

      v151 = *(v3 + 32);
      v31 = *(v3 + 40);
      v24 = *(v3 + 48);
      v152 = *(v3 + 16);
      v379 = *v3;
      v380 = v152;
      *&v381 = v151;
      *(&v381 + 1) = v31;
      v382 = v24;
      v374 = v35;
      v153 = sub_183FA4388(v2, v35);
      v16 = v31;
      v35 = v24;

      v27 = v153 + 2;
      if (__OFADD__(v153, 2))
      {
LABEL_658:
        __break(1u);
        goto LABEL_659;
      }

      if (v5 > *&v383)
      {
        v5 = *&v383;
      }

      if (*(&v383 + 1) >= v15)
      {
        v17 = *(&v383 + 1);
        v155 = v374;
        if ((~*(&v383 + 1) & 0x7FF0000000000000) == 0)
        {
          if ((*(&v383 + 1) & 0xFFFFFFFFFFFFFLL) != 0)
          {
            v17 = v15;
          }

          else
          {
            v17 = *(&v383 + 1);
          }
        }
      }

      else
      {
        v17 = v15;
        v155 = v374;
      }

      v370 = &v362;
      MEMORY[0x1EEE9AC00](v154);
      v16 = &v354;
      v356 = &v383;
      v357 = v2;
      v358[0] = v155;
      *&v358[1] = v6;
      v359 = *&v18;
      v360 = v20;
      v361 = *&v19;
      v85 = v3;
      v225 = sub_183FA5A00();
      v226 = *(v3 + 40);
      v227 = *(v226 + 16);
      v31 = v155 == v227;
      if (v2)
      {
        v228 = v2 - 1;
        if (__OFSUB__(v2, 1))
        {
LABEL_675:
          __break(1u);
          goto LABEL_676;
        }

        if (v228 >= v227)
        {
LABEL_676:
          __break(1u);
          goto LABEL_677;
        }

        v24 = *(v226 + 32 + 4 * v228);
        if (v2 > 1)
        {
          if (v2 - 2 >= v227)
          {
LABEL_686:
            __break(1u);
            goto LABEL_687;
          }

          v31 = 0;
          v40 = *(v226 + 32 + 4 * (v2 - 2));
          if (!v155)
          {
            v35 = 0;
            goto LABEL_400;
          }

LABEL_397:
          v229 = v155 - 1;
          if (__OFSUB__(v155, 1))
          {
LABEL_677:
            __break(1u);
            goto LABEL_678;
          }

          if (v229 >= v227)
          {
LABEL_678:
            __break(1u);
            goto LABEL_679;
          }

          v35 = *(v226 + 4 * v229 + 32);
LABEL_400:
          v150 = v13 * v27;
          if ((v13 * v27) >> 64 == (v13 * v27) >> 63)
          {
            if ((v13 & 0x8000000000000000) != 0)
            {
LABEL_682:
              __break(1u);
              goto LABEL_683;
            }

            if (v13 >> 60)
            {
LABEL_683:
              __break(1u);
LABEL_684:
              __break(1u);
              goto LABEL_685;
            }

            v366 = *(v226 + 16);
            if ((8 * v13) < 1025)
            {
LABEL_404:
              v369 = &v354;
              v230 = MEMORY[0x1EEE9AC00](v225);
              v27 = &v354 - v233;
              v85 = (4 * v13);
              if (v13 >= 0x101)
              {
                v365 = v232;
                v344 = v231;
                v230 = swift_stdlib_isStackAllocationSafe();
                if ((v230 & 1) == 0)
                {
                  v345 = v365;
                  HIBYTE(v351) = v31;
                  LOBYTE(v351) = 1;
                  v346 = swift_slowAlloc();
                  sub_183FA7E90(v346, v13, v344, v27, v13, v3, v345, v24, 1uLL, sub_183FA331C, v16, v344, v351, v35, v2, v374, v2);
                  MEMORY[0x1865EFCB0](v346, -1, -1);
                  v272 = v375;
                  v265 = v376;
                  v13 = v373;
                  goto LABEL_508;
                }
              }

              v368 = &v354;
              v234 = MEMORY[0x1EEE9AC00](v230);
              v8 = &v354 - v237;
              if ((v235 & 0x8000000000000000) != 0)
              {
                goto LABEL_684;
              }

              if (v235 >> 60)
              {
LABEL_685:
                __break(1u);
                goto LABEL_686;
              }

              v85 = (8 * v235);
              if (8 * v235 >= 1025)
              {
                v365 = v236;
                v367 = v235;
                v234 = swift_stdlib_isStackAllocationSafe();
                if ((v234 & 1) == 0)
                {
                  v347 = v367;
                  HIBYTE(v350) = v31;
                  LOBYTE(v350) = 1;
                  v348 = swift_slowAlloc();
                  sub_183FA8E24(v348, v347, v27, v13, v8, v13, v3, v365, v24, sub_183FA331C, v16, v347, v350, v35, v2, v374, v2);
                  MEMORY[0x1865EFCB0](v348, -1, -1);
                  v265 = v376;
                  v13 = v373;
                  goto LABEL_507;
                }
              }

              v367 = &v354;
              MEMORY[0x1EEE9AC00](v234);
              v16 = &v354 - v240;
              v378 = 0;
              v377 = 0;
              if (v24 < v239)
              {
                __break(1u);
              }

              else
              {
                v241 = *(v3 + 48);
                v242 = *v3;
                v243 = *(v3 + 16);
                v244 = *(v3 + 32);
                v387 = v241 + 8 * v239 + 32;
                v388[0] = v24 - v239;
                v379 = v242;
                v380 = v243;
                v381 = v244;
                v382 = v241;
                sub_183F9D0D4(&v379, &v383, v2, v374, &v354 - v240, &v377, v238, 1, v6, v18, v20, v19, &v387, v27, &v378, v8, v24);
                v13 = v377;
                v85 = v371;
                if ((v377 & 0x8000000000000000) == 0)
                {
                  if (v31)
                  {
                    if (!swift_isUniquelyReferenced_nonNull_native())
                    {
                      goto LABEL_423;
                    }

                    if (v13 > *(*v85 + 24) >> 1)
                    {
LABEL_424:
                      v31 = sub_183EA76E4(v13, 0);
                      memcpy((v31 + 32), v16, 8 * v13);
                      goto LABEL_473;
                    }
                  }

                  if (v35 < v24)
                  {
LABEL_679:
                    __break(1u);
                    goto LABEL_680;
                  }

                  sub_183F7DC7C(v24, v35, v16, v13);
                  v16 = v378;
                  if ((v378 & 0x8000000000000000) == 0)
                  {
                    if (!v31)
                    {
                      v245 = v374;
                      sub_183F7DC7C(v2, v374, v27, v378);
LABEL_484:
                      v264 = v245;
                      v31 = v372;
                      v85 = v372;
                      sub_183F7DCA8(v2, v264, v8, v16);
                      v265 = v376;
                      goto LABEL_489;
                    }

LABEL_474:
                    v262 = v376;
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
                      v31 = v372;
                      if (v16 <= *(*v262 + 24) >> 1)
                      {
                        sub_183F7DC7C(v2, v374, v27, v16);
                        goto LABEL_481;
                      }
                    }

                    else
                    {
                      v31 = v372;
                      if (!v16)
                      {
                        v263 = MEMORY[0x1E69E7CC0];
                        goto LABEL_480;
                      }
                    }

                    v263 = sub_183EA76E4(v16, 0);
                    memcpy(v263 + 4, v27, 8 * v16);
LABEL_480:
                    v27 = v376;

                    *v27 = v263;
LABEL_481:
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
                      if (v16 <= *(*v31 + 24) >> 1)
                      {
                        v245 = v374;
                        goto LABEL_484;
                      }
                    }

                    else if (!v16)
                    {
                      v85 = MEMORY[0x1E69E7CC0];
                      goto LABEL_488;
                    }

                    v85 = sub_183F9BAB8(v16, 0);
                    memcpy(v85 + 32, v8, 4 * v16);
LABEL_488:
                    v265 = v376;

                    *v31 = v85;
LABEL_489:
                    v266 = v24 + v13;
                    if (!__OFADD__(v24, v13))
                    {
                      v27 = v266 - v35;
                      v13 = v373;
                      if (!__OFSUB__(v266, v35))
                      {
                        if (!v27)
                        {
                          goto LABEL_507;
                        }

                        v267 = v2 + v16;
                        if (!__OFADD__(v2, v16))
                        {
                          v268 = *(*v31 + 16);
                          if (v268 >= v267)
                          {
                            if (v268 != v267)
                            {
                              if (v268 > v267)
                              {
                                if ((v267 & 0x8000000000000000) == 0)
                                {
                                  v31 = v268 - v267;
                                  if (v268 > v267)
                                  {
                                    v269 = v372;
                                    sub_183F9C0C8();
                                    v270 = *v269;
                                    v271 = v2 + v16 + 8;
                                    do
                                    {
                                      v40 = v271 - 8;
                                      if ((v271 - 8) >= *(v270 + 2))
                                      {
                                        goto LABEL_576;
                                      }

                                      v40 = *&v270[4 * v271];
                                      v16 = v40 + v27;
                                      if (__OFADD__(v40, v27))
                                      {
                                        goto LABEL_577;
                                      }

                                      if ((v16 & 0x8000000000000000) != 0)
                                      {
                                        goto LABEL_578;
                                      }

                                      v40 = HIDWORD(v16);
                                      if (HIDWORD(v16))
                                      {
                                        goto LABEL_579;
                                      }

                                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                      {
                                        v270 = sub_183F9C14C(v270);
                                      }

                                      *&v270[4 * v271++] = v16;
                                      --v31;
                                    }

                                    while (v31);
                                    *v372 = v270;
                                    goto LABEL_507;
                                  }

LABEL_689:
                                  __break(1u);

                                  for (i = v85; ; i = v31)
                                  {
                                    MEMORY[0x1865EFCB0](i, -1, -1);
                                    __break(1u);
                                  }
                                }

LABEL_688:
                                __break(1u);
                                goto LABEL_689;
                              }

LABEL_687:
                              __break(1u);
                              goto LABEL_688;
                            }

LABEL_507:
                            v272 = v375;
LABEL_508:
                            v273 = *v265;
                            v274 = *(*v265 + 16);
                            if (v274)
                            {
                              v275 = (v273 + 32);
                              if (v2)
                              {
                                v275 = v13;
                              }

                              v119 = *v275;
                              v276 = (v273 + 8 * v274 + 24);
                              if (v374 != v366)
                              {
                                v276 = v272;
                              }

                              v121 = *v276;
                            }

                            else
                            {
                              v5 = NAN;
                              v17 = NAN;
                              v119 = 0x7FF8000000000000;
                              v121 = 0x7FF8000000000000;
                            }

                            *v3 = v5;
                            *(v3 + 8) = v17;
                            goto LABEL_192;
                          }

                          goto LABEL_681;
                        }

LABEL_680:
                        __break(1u);
LABEL_681:
                        __break(1u);
                        goto LABEL_682;
                      }

                      goto LABEL_670;
                    }

LABEL_669:
                    __break(1u);
LABEL_670:
                    __break(1u);
                    goto LABEL_671;
                  }

LABEL_668:
                  __break(1u);
                  goto LABEL_669;
                }
              }

              __break(1u);
              goto LABEL_668;
            }

LABEL_660:
            v340 = v40;
            v341 = v150;
            v225 = swift_stdlib_isStackAllocationSafe();
            if ((v225 & 1) == 0)
            {
              v365 = v340;
              v342 = v374;
              v343 = swift_slowAlloc();
              sub_183FA6AA0(v343, v13, v13, v341, v3, v365, v24, sub_183FA331C, v388, v16, v341, 1u, v31, v35, v2, v342, v2);
              MEMORY[0x1865EFCB0](v343, -1, -1);
              v272 = v375;
              v265 = v376;
              v13 = v373;
              goto LABEL_508;
            }

            goto LABEL_404;
          }

LABEL_659:
          __break(1u);
          goto LABEL_660;
        }

        v31 = 0;
      }

      else
      {
        v24 = 0;
      }

      v35 = 0;
      v40 = 0;
      if (!v155)
      {
        goto LABEL_400;
      }

      goto LABEL_397;
    }

    if (!v23)
    {
      goto LABEL_229;
    }

    v122 = *(v3 + 40);
    v370 = (v3 + 40);
    v123 = *(v3 + 48);
    v369 = (v3 + 48);
    *&v379 = v5;
    *(&v379 + 1) = v15;
    *&v380 = v14;
    *(&v380 + 1) = v17;
    *&v381 = v7;
    *(&v381 + 1) = v122;
    v382 = v123;
    v2 = sub_183FA42A4(0, *&v384, *(&v384 + 1));
    v27 = v124;
    v16 = v122;
    v43 = v7;

    if (*(v385 + 16))
    {
      v24 = *(v385 + 16);
    }

    else
    {
      v24 = 2;
    }

    v40 = v27 - v2;
    if (__OFSUB__(v27, v2))
    {
      goto LABEL_624;
    }

    v374 = v2;
    v13 = v40 + v24;
    if (__OFADD__(v40, v24))
    {
LABEL_625:
      __break(1u);
      goto LABEL_626;
    }

    v16 = *(v3 + 48);
    *(&v381 + 1) = *(v3 + 40);
    v372 = v27;
    v125 = sub_183FA4388(v374, v27);
    v27 = *(&v381 + 1);
    v2 = v16;

    v379 = v383;
    v380 = v384;
    v381 = v385;
    v382 = v386;
    v43 = &v379;
    v126 = sub_183FA4388(0, v24);
    v31 = v125 + v126;
    if (__OFADD__(v125, v126))
    {
LABEL_626:
      __break(1u);
      goto LABEL_627;
    }

    if (v5 <= v6)
    {
      v6 = v5;
    }

    if (v18 >= v15)
    {
      v24 = v372;
      v35 = v374;
      if ((~*&v18 & 0x7FF0000000000000) != 0)
      {
        v15 = v18;
      }

      else if ((*&v18 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v15 = v18;
      }
    }

    else
    {
      v24 = v372;
      v35 = v374;
    }

    MEMORY[0x1EEE9AC00](v126);
    v16 = v358;
    v359 = &v383;
    v360 = *&v35;
    v361 = v24;
    v85 = v3;
    v194 = sub_183FA5A00();
    v195 = *(v3 + 40);
    v196 = *(v195 + 16);
    v2 = v24 == v196;
    if (v35)
    {
      v197 = v35 - 1;
      if (__OFSUB__(v35, 1))
      {
LABEL_643:
        __break(1u);
        goto LABEL_644;
      }

      if (v197 >= v196)
      {
LABEL_644:
        __break(1u);
        goto LABEL_645;
      }

      v198 = *(v195 + 32 + 4 * v197);
      if (v35 > 1)
      {
        if (v35 - 2 >= v196)
        {
LABEL_671:
          __break(1u);
          goto LABEL_672;
        }

        v2 = 0;
        v40 = *(v195 + 32 + 4 * (v35 - 2));
        if (!v24)
        {
          v27 = 0;
          goto LABEL_364;
        }

LABEL_361:
        v199 = v24 - 1;
        if (__OFSUB__(v24, 1))
        {
LABEL_645:
          __break(1u);
          goto LABEL_646;
        }

        if (v199 >= v196)
        {
LABEL_646:
          __break(1u);
          goto LABEL_647;
        }

        v27 = *(v195 + 4 * v199 + 32);
LABEL_364:
        v43 = v13 * v31;
        if ((v13 * v31) >> 64 != (v13 * v31) >> 63)
        {
LABEL_628:
          __break(1u);
LABEL_629:
          v35 = v40;
          v368 = v27;
          v194 = swift_stdlib_isStackAllocationSafe();
          v27 = v368;
          if ((v194 & 1) == 0)
          {
            v328 = v374;
            v329 = swift_slowAlloc();
            sub_183FA6B50(v329, v13, v13, v43, v3, v35, v371, sub_183F9C104, &v391, v16, v43, 1u, v2, v27, v328, v24, v328);
            MEMORY[0x1865EFCB0](v329, -1, -1);
            v257 = v375;
            v250 = v376;
            v13 = v373;
            v221 = v374;
            goto LABEL_461;
          }

LABEL_368:
          v366 = v358;
          v200 = MEMORY[0x1EEE9AC00](v194);
          v368 = v358 - v203;
          v31 = 4 * v13;
          if (v13 >= 0x101)
          {
            v35 = v201;
            v330 = v2;
            v331 = v202;
            v200 = swift_stdlib_isStackAllocationSafe();
            v332 = v331;
            v2 = v330;
            if ((v200 & 1) == 0)
            {
              v333 = v332;
              v334 = swift_slowAlloc();
              BYTE1(v353) = v2;
              LOBYTE(v353) = 1;
              v335 = v35;
              v221 = v374;
              sub_183FA8588(v334, v13, v43, v368, v13, v3, v335, v333, &v394, sub_183F9C104, v16, v43, v353, v27, v374, v372, v374);
              MEMORY[0x1865EFCB0](v334, -1, -1);
              v257 = v375;
              v250 = v376;
              v13 = v373;
LABEL_461:
              v258 = *v250;
              v259 = *(*v250 + 16);
              if (v259)
              {
                v260 = (v258 + 32);
                if (v221)
                {
                  v260 = v13;
                }

                v119 = *v260;
                v261 = (v258 + 8 * v259 + 24);
                if (v372 != v363)
                {
                  v261 = v257;
                }

                v121 = *v261;
              }

              else
              {
                v6 = NAN;
                v15 = NAN;
                v119 = 0x7FF8000000000000;
                v121 = 0x7FF8000000000000;
              }

LABEL_191:
              *v3 = v6;
              *(v3 + 8) = v15;
LABEL_192:
              *(v3 + 16) = v119;
              *(v3 + 24) = v121;
              goto LABEL_332;
            }
          }

          v365 = v358;
          v204 = MEMORY[0x1EEE9AC00](v200);
          if ((v43 & 0x8000000000000000) == 0)
          {
            v24 = v358 - v205;
            if (!(v43 >> 60))
            {
              v207 = v2;
              if ((8 * v43) >= 1025)
              {
                v336 = v40;
                v337 = v206;
                v204 = swift_stdlib_isStackAllocationSafe();
                if ((v204 & 1) == 0)
                {
                  v338 = swift_slowAlloc();
                  BYTE1(v352) = v207;
                  LOBYTE(v352) = 1;
                  v339 = v336;
                  v221 = v374;
                  sub_183FA8E88(v338, v43, v368, v13, v24, v13, v3, v339, v337, sub_183F9C104, v16, v43, v352, v27, v374, v372, v374);
                  MEMORY[0x1865EFCB0](v338, -1, -1);
                  v250 = v376;
                  v13 = v373;
LABEL_460:
                  v257 = v375;
                  goto LABEL_461;
                }
              }

              v364 = v358;
              MEMORY[0x1EEE9AC00](v204);
              v211 = v358 - v210;
              v378 = 0;
              v377 = 0;
              if (v209 < v208)
              {
                __break(1u);
              }

              else
              {
                v212 = v209;
                v213 = *(v3 + 40);
                v214 = *(v3 + 48);
                v215 = *v3;
                v216 = *(v3 + 16);
                v217 = *(v3 + 32);
                v387 = v214 + 8 * v208 + 32;
                v388[0] = v209 - v208;
                v379 = v215;
                v380 = v216;
                *&v381 = v217;
                *(&v381 + 1) = v213;
                v382 = v214;
                swift_retain_n();

                v354 = v212;
                v218 = v24;
                v353 = v24;
                v219 = v368;
                sub_183FA2360(&v379, &v383, v374, v372, v211, &v377, v43, 1, &v387, v368, &v378, v353, v354, &qword_1EA853EB8, &byte_1EA868CE8, sub_183FBF7A0);

                v220 = v377;
                if ((v377 & 0x8000000000000000) == 0)
                {
                  v221 = v374;
                  v222 = v369;
                  v31 = v27;
                  if (!v207)
                  {
                    goto LABEL_377;
                  }

                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    if (v220 <= *(*v222 + 24) >> 1)
                    {
LABEL_377:
                      if (v27 < v371)
                      {
LABEL_647:
                        __break(1u);
                        goto LABEL_648;
                      }

                      sub_183F7DC7C(v371, v27, v211, v220);
                      v16 = v378;
                      if ((v378 & 0x8000000000000000) == 0)
                      {
                        if (!v207)
                        {
                          v223 = v372;
                          sub_183F7DC7C(v221, v372, v219, v378);
                          v85 = v370;
LABEL_437:
                          sub_183F7DCA8(v221, v223, v218, v16);
                          v250 = v376;
                          goto LABEL_442;
                        }

LABEL_427:
                        v247 = v376;
                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
                          if (v16 <= *(*v247 + 24) >> 1)
                          {
                            sub_183F7DC7C(v221, v372, v219, v16);
                            goto LABEL_434;
                          }
                        }

                        else if (!v16)
                        {
                          v248 = MEMORY[0x1E69E7CC0];
                          goto LABEL_433;
                        }

                        v248 = sub_183EA76E4(v16, 0);
                        memcpy(v248 + 4, v219, 8 * v16);
LABEL_433:
                        v249 = v376;

                        *v249 = v248;
LABEL_434:
                        v85 = v370;
                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
                          if (v16 <= *(*v85 + 24) >> 1)
                          {
                            v223 = v372;
                            goto LABEL_437;
                          }
                        }

                        else if (!v16)
                        {
                          v251 = MEMORY[0x1E69E7CC0];
                          goto LABEL_441;
                        }

                        v251 = sub_183F9BAB8(v16, 0);
                        memcpy(v251 + 4, v218, 4 * v16);
LABEL_441:
                        v250 = v376;

                        *v85 = v251;
LABEL_442:
                        v252 = &v371[v220];
                        if (!__OFADD__(v371, v220))
                        {
                          v27 = &v252[-v31];
                          v13 = v373;
                          if (!__OFSUB__(v252, v31))
                          {
                            if (v27)
                            {
                              v253 = &v221[v16];
                              if (__OFADD__(v221, v16))
                              {
LABEL_648:
                                __break(1u);
LABEL_649:
                                __break(1u);
                              }

                              v254 = *(*v85 + 16);
                              if (v254 < v253)
                              {
                                goto LABEL_649;
                              }

                              if (v254 != v253)
                              {
                                if (v254 <= v253)
                                {
LABEL_672:
                                  __break(1u);
                                  goto LABEL_673;
                                }

                                if (v253 < 0)
                                {
LABEL_673:
                                  __break(1u);
                                  goto LABEL_674;
                                }

                                v31 = &v254[-v253];
                                if (v254 <= v253)
                                {
LABEL_674:
                                  __break(1u);
                                  goto LABEL_675;
                                }

                                sub_183F9C0C8();
                                v255 = *v85;
                                v35 = &v221[v16 + 8];
                                do
                                {
                                  v40 = v35 - 8;
                                  if ((v35 - 8) >= *(v255 + 2))
                                  {
                                    goto LABEL_550;
                                  }

                                  v40 = *&v255[4 * v35];
                                  v256 = v40 + v27;
                                  if (__OFADD__(v40, v27))
                                  {
                                    goto LABEL_551;
                                  }

                                  if ((v256 & 0x8000000000000000) != 0)
                                  {
                                    goto LABEL_552;
                                  }

                                  v40 = HIDWORD(v256);
                                  if (HIDWORD(v256))
                                  {
                                    goto LABEL_553;
                                  }

                                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                  {
                                    v255 = sub_183F9C14C(v255);
                                  }

                                  *&v255[4 * v35++] = v256;
                                  --v31;
                                }

                                while (v31);
                                *v370 = v255;
                                v221 = v374;
                              }
                            }

                            goto LABEL_460;
                          }

LABEL_639:
                          __break(1u);
LABEL_640:
                          __break(1u);
                          goto LABEL_641;
                        }

LABEL_638:
                        __break(1u);
                        goto LABEL_639;
                      }

LABEL_637:
                      __break(1u);
                      goto LABEL_638;
                    }
                  }

                  else if (!v220)
                  {
                    v224 = MEMORY[0x1E69E7CC0];
LABEL_426:

                    *v222 = v224;
                    v16 = v378;
                    if ((v378 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_427;
                    }

                    goto LABEL_637;
                  }

                  v224 = sub_183EA76E4(v220, 0);
                  memcpy(v224 + 4, v211, 8 * v220);
                  goto LABEL_426;
                }
              }

              __break(1u);
              goto LABEL_637;
            }

            goto LABEL_655;
          }

LABEL_654:
          __break(1u);
LABEL_655:
          __break(1u);
LABEL_656:
          __break(1u);
          goto LABEL_657;
        }

        if ((v13 & 0x8000000000000000) == 0)
        {
          if (!(v13 >> 60))
          {
            v363 = *(v195 + 16);
            v367 = &v362;
            v371 = v198;
            if ((8 * v13) < 1025)
            {
              goto LABEL_368;
            }

            goto LABEL_629;
          }

LABEL_653:
          __break(1u);
          goto LABEL_654;
        }

LABEL_652:
        __break(1u);
        goto LABEL_653;
      }

      v2 = 0;
    }

    else
    {
      v198 = 0;
    }

    v27 = 0;
    v40 = 0;
    if (!v24)
    {
      goto LABEL_364;
    }

    goto LABEL_361;
  }

  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = 2;
  }

  v25 = *(a1 + 16);
  v379 = *a1;
  v380 = v25;
  v381 = *(a1 + 32);
  v382 = *(a1 + 48);
  v26 = sub_183FA4388(0, v24);
  v27 = v26;
  if (v5 <= *&v383)
  {
    v6 = v5;
  }

  if (*(&v383 + 1) >= v15)
  {
    if ((~*(&v383 + 1) & 0x7FF0000000000000) != 0)
    {
      v15 = *(&v383 + 1);
    }

    else if ((*(&v383 + 1) & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v15 = *(&v383 + 1);
    }
  }

  v372 = &v362;
  MEMORY[0x1EEE9AC00](v26);
  v35 = &v359;
  v361 = &v383;
  v49 = sub_183FA5A00();
  v16 = v24 * v27;
  if ((v24 * v27) >> 64 != (v24 * v27) >> 63)
  {
    goto LABEL_524;
  }

  if (v24 >> 60)
  {
    goto LABEL_535;
  }

  v27 = v3 + 40;
  v13 = *(*(v3 + 40) + 16);
  if ((8 * v24) >= 1025)
  {
    goto LABEL_525;
  }

  while (1)
  {
    v371 = &v359;
    v50 = MEMORY[0x1EEE9AC00](v49);
    v374 = (&v359 - v51);
    if (v24 >= 0x101)
    {
      v50 = swift_stdlib_isStackAllocationSafe();
      if ((v50 & 1) == 0)
      {
        v279 = swift_slowAlloc();
        BYTE1(v355) = v13 == 0;
        LOBYTE(v355) = 0;
        sub_183FA862C(v279, v24, v16, v374, v24, v3, 0, 0, &v394, sub_183FA3320, v35, v16, v355, 0, 0, 0, 0);
        MEMORY[0x1865EFCB0](v279, -1, -1);
        v116 = v375;
        goto LABEL_186;
      }
    }

    v52 = MEMORY[0x1EEE9AC00](v50);
    v373 = &v359 - v54;
    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_537;
    }

    if (!(v16 >> 60))
    {
      v370 = v53;
      v2 = v13;
      if ((8 * v16) >= 1025)
      {
        v52 = swift_stdlib_isStackAllocationSafe();
        if ((v52 & 1) == 0)
        {
          v280 = swift_slowAlloc();
          BYTE1(v354) = v13 == 0;
          LOBYTE(v354) = 0;
          sub_183FA8EEC(v280, v16, v374, v24, v373, v24, v3, 0, 0, sub_183FA3320, v35, v16, v354, 0, 0, 0, 0);
          MEMORY[0x1865EFCB0](v280, -1, -1);
          v8 = v376;
LABEL_185:
          v116 = v375;
LABEL_186:
          v117 = *v8;
          v118 = *(*v8 + 16);
          if (v118)
          {
            v119 = *(v117 + 32);
            v120 = (v117 + 8 * v118 + 24);
            if (v13)
            {
              v120 = v116;
            }

            v121 = *v120;
          }

          else
          {
            v6 = NAN;
            v15 = NAN;
            v119 = 0x7FF8000000000000;
            v121 = 0x7FF8000000000000;
          }

          goto LABEL_191;
        }
      }

      v369 = &v359;
      MEMORY[0x1EEE9AC00](v52);
      v8 = &v359 - v55;
      v378 = 0;
      v377 = 0;
      v56 = v3 + 48;
      v57 = *(v3 + 48);
      v13 = *(v3 + 32);
      v35 = *(v3 + 40);
      v387 = v57 + 32;
      v388[0] = 0;
      v58 = *(v3 + 16);
      v379 = *v3;
      v380 = v58;
      *&v381 = v13;
      *(&v381 + 1) = v35;
      v382 = v57;
      swift_retain_n();

      sub_183F99AD4(&v379, &v383, v8, v16, &v377, v16, 0, &v387, v374, v24, &v378, v373, v24, 0);

      v24 = v377;
      if ((v377 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_532;
      }

      v13 = v2;
      if (v2)
      {
        sub_183F7DC7C(0, 0, v8, v377);
        v16 = v378;
        v8 = v376;
        if ((v378 & 0x8000000000000000) == 0)
        {
          sub_183F7DC7C(0, 0, v374, v378);
          goto LABEL_66;
        }

LABEL_532:
        __break(1u);
LABEL_533:
        __break(1u);
LABEL_534:
        __break(1u);
LABEL_535:
        __break(1u);
LABEL_536:
        __break(1u);
LABEL_537:
        __break(1u);
        goto LABEL_538;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (v24 <= *(*v56 + 24) >> 1)
        {
          sub_183F7DC7C(0, 0, v8, v24);
          goto LABEL_158;
        }
      }

      else if (!v24)
      {
        v69 = MEMORY[0x1E69E7CC0];
        goto LABEL_157;
      }

      v69 = sub_183EA76E4(v24, 0);
      memcpy(v69 + 4, v8, 8 * v24);
LABEL_157:

      *v56 = v69;
LABEL_158:
      v16 = v378;
      v8 = v376;
      if ((v378 & 0x8000000000000000) != 0)
      {
        goto LABEL_532;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (v16 <= *(*v8 + 24) >> 1)
        {
          sub_183F7DC7C(0, 0, v374, v16);
          goto LABEL_166;
        }
      }

      else if (!v16)
      {
        v113 = MEMORY[0x1E69E7CC0];
        goto LABEL_165;
      }

      v113 = sub_183EA76E4(v16, 0);
      memcpy(v113 + 4, v374, 8 * v16);
LABEL_165:

      *v8 = v113;
LABEL_166:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (v16 <= *(*v27 + 24) >> 1)
        {
LABEL_66:
          sub_183F7DCA8(0, 0, v373, v16);
          if (!v24)
          {
            goto LABEL_185;
          }

LABEL_173:
          v40 = *(*v27 + 16);
          if (v40 >= v16)
          {
            if (v40 == v16)
            {
              goto LABEL_185;
            }

            v31 = v40 - v16;
            if (v40 > v16)
            {
              sub_183F9C0C8();
              v85 = *v27;
              v35 = v16 + 8;
              while ((v35 - 8) < *(v85 + 2))
              {
                v115 = *&v85[4 * v35];
                v2 = v115 + v24;
                if (__OFADD__(v115, v24))
                {
                  goto LABEL_420;
                }

                if ((v2 & 0x8000000000000000) != 0)
                {
                  goto LABEL_421;
                }

                if (HIDWORD(v2))
                {
                  goto LABEL_422;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v85 = sub_183F9C14C(v85);
                }

                *&v85[4 * v35++] = v2;
                if (!--v31)
                {
                  *v27 = v85;
                  goto LABEL_185;
                }
              }

              __break(1u);
LABEL_420:
              __break(1u);
LABEL_421:
              __break(1u);
LABEL_422:
              __break(1u);
LABEL_423:
              if (v13)
              {
                goto LABEL_424;
              }

LABEL_472:
              v31 = MEMORY[0x1E69E7CC0];
LABEL_473:

              *v85 = v31;
              v16 = v378;
              if ((v378 & 0x8000000000000000) == 0)
              {
                goto LABEL_474;
              }

              goto LABEL_668;
            }

            goto LABEL_554;
          }

          goto LABEL_533;
        }
      }

      else if (!v16)
      {
        v114 = MEMORY[0x1E69E7CC0];
LABEL_172:

        *v27 = v114;
        if (!v24)
        {
          goto LABEL_185;
        }

        goto LABEL_173;
      }

      v114 = sub_183F9BAB8(v16, 0);
      memcpy(v114 + 4, v373, 4 * v16);
      goto LABEL_172;
    }

LABEL_538:
    __break(1u);
LABEL_539:
    v281 = v38;
    v70 = swift_stdlib_isStackAllocationSafe();
    if ((v70 & 1) == 0)
    {
      v282 = swift_slowAlloc();
      sub_183FA6C00(v282, v24, v24, v27, v3, v281, v2, sub_183FA3320, v374, v35, v27, 0, 0, v2, v374, v374, v374);
      MEMORY[0x1865EFCB0](v282, -1, -1);
      v8 = v376;
      v24 = v13;
      v88 = v374;
LABEL_122:
      v89 = *(*v8 + 16);
      if (v89)
      {
        v90 = *v24;
        v91 = (*v8 + 8 * v89 + 24);
        if (v88 != v369)
        {
          v91 = v16;
        }

        v92 = *v91;
      }

      else
      {
        v6 = NAN;
        v15 = NAN;
        v90 = 0x7FF8000000000000;
        v92 = 0x7FF8000000000000;
      }

      *v3 = v6;
      *(v3 + 8) = v15;
      *(v3 + 16) = v90;
      *(v3 + 24) = v92;
      sub_183FA5EA0();
      return;
    }

LABEL_96:
    v31 = &v359;
    v73 = MEMORY[0x1EEE9AC00](v70);
    v371 = &v359 - v75;
    v368 = &v359;
    if (v24 >= 0x101)
    {
      v283 = v74;
      v73 = swift_stdlib_isStackAllocationSafe();
      if ((v73 & 1) == 0)
      {
        v284 = v283;
        v285 = swift_slowAlloc();
        v286 = v374;
        sub_183FA862C(v285, v24, v27, v371, v24, v3, v284, v2, &v391, sub_183FA3320, v35, v27, 0, v2, v374, v374, v374);
        v88 = v286;
        MEMORY[0x1865EFCB0](v285, -1, -1);
        v24 = v373;
        goto LABEL_122;
      }
    }

    v76 = MEMORY[0x1EEE9AC00](v73);
    v13 = &v359 - v40;
    if (v27 < 0)
    {
      goto LABEL_562;
    }

    v40 = v27 >> 60;
    if (!(v27 >> 60))
    {
      v367 = v77;
      if (8 * v27 >= 1025)
      {
        v287 = v38;
        v76 = swift_stdlib_isStackAllocationSafe();
        if ((v76 & 1) == 0)
        {
          v288 = swift_slowAlloc();
          sub_183FA8EEC(v288, v27, v371, v24, v13, v24, v3, v287, v2, sub_183FA3320, v35, v27, 0, v2, v374, v374, v374);
          MEMORY[0x1865EFCB0](v288, -1, -1);
          v8 = v376;
          v24 = v373;
LABEL_121:
          v88 = v374;
          goto LABEL_122;
        }
      }

      v366 = &v359;
      MEMORY[0x1EEE9AC00](v76);
      v79 = &v359 - v78;
      v378 = 0;
      v377 = 0;
      v40 = v2 - v38;
      if (v2 < v38)
      {
        __break(1u);
      }

      else
      {
        v80 = *(v3 + 48);
        v81 = *v3;
        v82 = *(v3 + 16);
        v35 = *(v3 + 32);
        v16 = *(v3 + 40);
        v387 = v80 + 8 * v38 + 32;
        v388[0] = v2 - v38;
        v379 = v81;
        v380 = v82;
        *&v381 = v35;
        *(&v381 + 1) = v16;
        v382 = v80;
        swift_retain_n();

        v358[0] = v24;
        v355 = v24;
        v83 = v371;
        sub_183F99AD4(&v379, &v383, v79, v27, &v377, v27, 0, &v387, v371, v355, &v378, v13, v358[0], v2);

        v40 = &v396;
        v31 = v377;
        if ((v377 & 0x8000000000000000) == 0)
        {
          sub_183F7DC7C(v2, v2, v79, v377);
          v84 = v378;
          v40 = &v395;
          v16 = v375;
          if ((v378 & 0x8000000000000000) == 0)
          {
            v35 = v374;
            v8 = v376;
            sub_183F7DC7C(v374, v374, v83, v378);
            v85 = v372;
            sub_183F7DCA8(v35, v35, v13, v84);
            v40 = v2 + v31;
            if (!__OFADD__(v2, v31))
            {
              v41 = __OFSUB__(v40, v2);
              v40 = &v393;
              v24 = v373;
              if (!v41)
              {
                if (!v31)
                {
                  goto LABEL_121;
                }

                v40 = v374 + v84;
                if (!__OFADD__(v374, v84))
                {
                  v86 = *(*v85 + 16);
                  if (v86 >= v40)
                  {
                    if (v86 == v40)
                    {
                      goto LABEL_121;
                    }

                    if (v86 > v40)
                    {
                      if ((v40 & 0x8000000000000000) == 0)
                      {
                        v35 = &v86[-v40];
                        if (v86 > v40)
                        {
                          sub_183F9C0C8();
                          v13 = *v85;
                          v27 = v374 + v84 + 8;
                          while ((v27 - 8) < *(v13 + 16))
                          {
                            v87 = *(v13 + 4 * v27);
                            v2 = v87 + v31;
                            if (__OFADD__(v87, v31))
                            {
                              goto LABEL_469;
                            }

                            if ((v2 & 0x8000000000000000) != 0)
                            {
                              goto LABEL_470;
                            }

                            if (HIDWORD(v2))
                            {
                              goto LABEL_471;
                            }

                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                            {
                              v13 = sub_183F9C14C(v13);
                            }

                            *(v13 + 4 * v27++) = v2;
                            if (!--v35)
                            {
                              *v85 = v13;
                              goto LABEL_121;
                            }
                          }

                          __break(1u);
LABEL_469:
                          __break(1u);
LABEL_470:
                          __break(1u);
LABEL_471:
                          __break(1u);
                          goto LABEL_472;
                        }

LABEL_587:
                        __break(1u);
LABEL_588:
                        __break(1u);
LABEL_589:
                        __break(1u);
LABEL_590:
                        __break(1u);
                        goto LABEL_591;
                      }

LABEL_586:
                      __break(1u);
                      goto LABEL_587;
                    }

LABEL_585:
                    __break(1u);
                    goto LABEL_586;
                  }

LABEL_556:
                  __break(1u);
LABEL_557:
                  __break(1u);
LABEL_558:
                  __break(1u);
LABEL_559:
                  __break(1u);
LABEL_560:
                  __break(1u);
LABEL_561:
                  __break(1u);
LABEL_562:
                  __break(1u);
                  goto LABEL_563;
                }

LABEL_555:
                __break(1u);
                goto LABEL_556;
              }

LABEL_549:
              __break(1u);
LABEL_550:
              __break(1u);
LABEL_551:
              __break(1u);
LABEL_552:
              __break(1u);
LABEL_553:
              __break(1u);
LABEL_554:
              __break(1u);
              goto LABEL_555;
            }

LABEL_548:
            __break(1u);
            goto LABEL_549;
          }

LABEL_547:
          __break(1u);
          goto LABEL_548;
        }
      }

      __break(1u);
      goto LABEL_547;
    }

LABEL_563:
    __break(1u);
LABEL_564:
    __break(1u);
LABEL_565:
    v289 = v40;
    v290 = v37;
    v291 = v36;
    v292 = v38;
    v44 = swift_stdlib_isStackAllocationSafe();
    v293 = v289;
    v27 = v371;
    if ((v44 & 1) == 0)
    {
      v364 = v293;
      v294 = swift_slowAlloc();
      sub_183FA6CB0(v294, v13, v13, v290, v3, v364, v292, sub_183FA3328, &v387, v16, v290, 0, v31, v372, v291, v35, v291);
      MEMORY[0x1865EFCB0](v294, -1, -1);
      v163 = v375;
      v24 = v376;
      v13 = v373;
      goto LABEL_275;
    }

LABEL_143:
    v367 = v358;
    v95 = MEMORY[0x1EEE9AC00](v44);
    v24 = v358 - v100;
    v43 = 4 * v13;
    if (v13 >= 0x101)
    {
      v295 = v98;
      v296 = v97;
      v13 = v96;
      v297 = v99;
      v95 = swift_stdlib_isStackAllocationSafe();
      v298 = v297;
      v299 = v370;
      v300 = v295;
      v27 = v371;
      if ((v95 & 1) == 0)
      {
        v301 = v300;
        v302 = v296;
        v371 = v298;
        v303 = swift_slowAlloc();
        BYTE1(v353) = v31;
        LOBYTE(v353) = 0;
        sub_183FA86D0(v303, v299, v302, v24, v299, v3, v301, v371, &v391, sub_183FA3328, v16, v302, v353, v372, v13, v35, v13);
        MEMORY[0x1865EFCB0](v303, -1, -1);
        v163 = v375;
        v24 = v376;
        v13 = v373;
        goto LABEL_275;
      }
    }

    v366 = v358;
    v101 = MEMORY[0x1EEE9AC00](v95);
    v8 = v358 - v105;
    if ((v103 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v103 >> 60)
    {
      goto LABEL_601;
    }

    if ((8 * v103) >= 1025)
    {
      v364 = v40;
      v304 = v103;
      v13 = v102;
      v305 = v104;
      v101 = swift_stdlib_isStackAllocationSafe();
      v306 = v304;
      v27 = v371;
      if ((v101 & 1) == 0)
      {
        v307 = v306;
        v308 = v370;
        BYTE1(v352) = v31;
        LOBYTE(v352) = 0;
        v309 = swift_slowAlloc();
        sub_183FA8F50(v309, v307, v24, v308, v8, v308, v3, v364, v305, sub_183FA3328, v16, v307, v352, v372, v13, v35, v13);
        MEMORY[0x1865EFCB0](v309, -1, -1);
        v24 = v376;
        v13 = v373;
LABEL_274:
        v163 = v375;
LABEL_275:
        v164 = *v24;
        v165 = *(*v24 + 16);
        if (v165)
        {
          v166 = *v3;
          v167 = (v164 + 32);
          if (v374)
          {
            v167 = v13;
          }

          v168 = *v167;
          v169 = (v164 + 8 * v165 + 24);
          if (v35 != v365)
          {
            v169 = v163;
          }

          v170 = *v169;
        }

        else
        {
          v166 = 0x7FF8000000000000;
          v18 = NAN;
          v168 = 0x7FF8000000000000;
          v170 = 0x7FF8000000000000;
        }

        *v3 = v166;
        *(v3 + 8) = v18;
        goto LABEL_331;
      }
    }

    v370 = v358;
    MEMORY[0x1EEE9AC00](v101);
    v16 = v358 - v106;
    v378 = 0;
    v377 = 0;
    if (v38 < v40)
    {
      __break(1u);
LABEL_572:
      __break(1u);
LABEL_573:
      __break(1u);
LABEL_574:
      __break(1u);
LABEL_575:
      __break(1u);
LABEL_576:
      __break(1u);
LABEL_577:
      __break(1u);
LABEL_578:
      __break(1u);
LABEL_579:
      __break(1u);
LABEL_580:
      __break(1u);
      goto LABEL_581;
    }

    v107 = *(v3 + 48);
    v108 = *v3;
    v109 = *(v3 + 16);
    v110 = *(v3 + 32);
    v387 = v107 + 8 * v40 + 32;
    v388[0] = v38 - v40;
    v379 = v108;
    v380 = v109;
    v381 = v110;
    v382 = v107;
    v2 = v38;
    sub_183FA1304(&v379, &v383, v36, v35, v358 - v106, &v377, v37, 0, &v387, v24, &v378, v8, v38);
    v13 = v377;
    v40 = &v389;
    v111 = v369;
    if ((v377 & 0x8000000000000000) != 0)
    {
      goto LABEL_572;
    }

    if (v31)
    {
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        if (v13)
        {
LABEL_205:
          v31 = sub_183EA76E4(v13, 0);
          memcpy((v31 + 32), v16, 8 * v13);
        }

        else
        {
          v31 = MEMORY[0x1E69E7CC0];
        }

        *v111 = v31;
        v40 = &v397;
        v16 = v378;
        if ((v378 & 0x8000000000000000) != 0)
        {
          goto LABEL_573;
        }

        goto LABEL_241;
      }

      if (v13 > *(*v111 + 24) >> 1)
      {
        goto LABEL_205;
      }
    }

    v40 = &v392;
    if (v372 < v2)
    {
      goto LABEL_584;
    }

    sub_183F7DC7C(v2, v372, v16, v13);
    v40 = &v397;
    v16 = v378;
    if ((v378 & 0x8000000000000000) != 0)
    {
      goto LABEL_573;
    }

    if (!v31)
    {
      v112 = v374;
      v31 = v35;
      sub_183F7DC7C(v374, v35, v24, v378);
      goto LABEL_251;
    }

LABEL_241:
    v157 = v376;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      if (v16)
      {
LABEL_245:
        v158 = sub_183EA76E4(v16, 0);
        memcpy(v158 + 4, v24, 8 * v16);
      }

      else
      {
        v158 = MEMORY[0x1E69E7CC0];
      }

      v31 = v376;

      *v31 = v158;
      goto LABEL_248;
    }

    if (v16 > *(*v157 + 24) >> 1)
    {
      goto LABEL_245;
    }

    sub_183F7DC7C(v374, v35, v24, v16);
LABEL_248:
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      if (v16)
      {
LABEL_253:
        v43 = sub_183F9BAB8(v16, 0);
        memcpy((v43 + 32), v8, 4 * v16);
      }

      else
      {
        v43 = MEMORY[0x1E69E7CC0];
      }

      v24 = v376;

      *v27 = v43;
      goto LABEL_256;
    }

    if (v16 > *(*v27 + 24) >> 1)
    {
      goto LABEL_253;
    }

    v31 = v35;
    v112 = v374;
LABEL_251:
    v159 = v112;
    v27 = v371;
    v43 = v371;
    sub_183F7DCA8(v159, v31, v8, v16);
    v24 = v376;
LABEL_256:
    v40 = v2 + v13;
    if (__OFADD__(v2, v13))
    {
      goto LABEL_574;
    }

    v41 = __OFSUB__(v40, v372);
    v31 = v40 - v372;
    v40 = &v393;
    v13 = v373;
    if (v41)
    {
      goto LABEL_575;
    }

    if (!v31)
    {
      goto LABEL_274;
    }

    v40 = v374 + v16;
    if (__OFADD__(v374, v16))
    {
      goto LABEL_588;
    }

    v160 = *(*v27 + 16);
    if (v160 < v40)
    {
      goto LABEL_589;
    }

    if (v160 == v40)
    {
      goto LABEL_274;
    }

    if (v160 <= v40)
    {
      goto LABEL_617;
    }

    if (v40 < 0)
    {
      goto LABEL_618;
    }

    v24 = &v160[-v40];
    if (v160 <= v40)
    {
      goto LABEL_619;
    }

    sub_183F9C0C8();
    v161 = *v27;
    v16 += (v374 + 1);
    while (v16 - 8 < *(v161 + 2))
    {
      v162 = *&v161[4 * v16];
      v8 = v162 + v31;
      if (__OFADD__(v162, v31))
      {
        goto LABEL_517;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_518;
      }

      if (HIDWORD(v8))
      {
        goto LABEL_519;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v161 = sub_183F9C14C(v161);
      }

      *&v161[4 * v16++] = v8;
      if (!--v24)
      {
        *v27 = v161;
        v24 = v376;
        goto LABEL_274;
      }
    }

    __break(1u);
LABEL_517:
    __break(1u);
LABEL_518:
    __break(1u);
LABEL_519:
    __break(1u);
LABEL_520:
    __break(1u);
LABEL_521:
    __break(1u);
LABEL_522:
    __break(1u);
LABEL_523:
    __break(1u);
LABEL_524:
    __break(1u);
LABEL_525:
    v49 = swift_stdlib_isStackAllocationSafe();
    if ((v49 & 1) == 0)
    {
      v277 = swift_slowAlloc();
      sub_183FA6C00(v277, v24, v24, v16, v3, 0, 0, sub_183FA3320, v278, v35, v16, 0, v13 == 0, 0, 0, 0, 0);
      MEMORY[0x1865EFCB0](v277, -1, -1);
      v116 = v375;
      v8 = v376;
      goto LABEL_186;
    }
  }

  __break(1u);
LABEL_601:
  __break(1u);
LABEL_602:
  v364 = v40;
  v323 = v103;
  v13 = v102;
  v2 = v104;
  v134 = swift_stdlib_isStackAllocationSafe();
  v324 = v323;
  v27 = v371;
  if ((v134 & 1) == 0)
  {
    v325 = v324;
    v326 = v370;
    BYTE1(v352) = v31;
    LOBYTE(v352) = 0;
    v327 = swift_slowAlloc();
    sub_183FA8F50(v327, v325, v24, v326, v8, v326, v3, v364, v2, sub_183FA3324, v16, v325, v352, v372, v13, v35, v13);
    MEMORY[0x1865EFCB0](v327, -1, -1);
    v24 = v376;
    v13 = v373;
    goto LABEL_322;
  }

LABEL_220:
  v370 = v358;
  MEMORY[0x1EEE9AC00](v134);
  v16 = v358 - v138;
  v378 = 0;
  v377 = 0;
  if (v139 < v40)
  {
    __break(1u);
    goto LABEL_605;
  }

  v140 = *(v3 + 48);
  v141 = *v3;
  v142 = *(v3 + 16);
  v143 = *(v3 + 32);
  v387 = v140 + 8 * v40 + 32;
  v388[0] = v139 - v40;
  v379 = v141;
  v380 = v142;
  v381 = v143;
  v382 = v140;
  v2 = v139;
  sub_183FA02A0(&v379, &v383, v136, v35, v358 - v138, &v377, v137, 0, &v387, v24, &v378, v8, v139);
  v13 = v377;
  v40 = &v389;
  v43 = v369;
  if ((v377 & 0x8000000000000000) != 0)
  {
LABEL_605:
    __break(1u);
LABEL_606:
    __break(1u);
LABEL_607:
    __break(1u);
    goto LABEL_608;
  }

  if (!v31)
  {
    goto LABEL_225;
  }

  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    if (!v13)
    {
      v156 = MEMORY[0x1E69E7CC0];
LABEL_288:

      *v43 = v156;
      v40 = &v397;
      v16 = v378;
      if ((v378 & 0x8000000000000000) == 0)
      {
        goto LABEL_289;
      }

      goto LABEL_606;
    }

LABEL_238:
    v156 = sub_183EA76E4(v13, 0);
    memcpy(v156 + 4, v16, 8 * v13);
    goto LABEL_288;
  }

  if (v13 > *(*v43 + 24) >> 1)
  {
    goto LABEL_238;
  }

LABEL_225:
  v40 = &v392;
  if (v372 < v2)
  {
LABEL_614:
    __break(1u);
LABEL_615:
    __break(1u);
LABEL_616:
    __break(1u);
LABEL_617:
    __break(1u);
LABEL_618:
    __break(1u);
LABEL_619:
    __break(1u);
    goto LABEL_620;
  }

  sub_183F7DC7C(v2, v372, v16, v13);
  v40 = &v397;
  v16 = v378;
  if ((v378 & 0x8000000000000000) != 0)
  {
    goto LABEL_606;
  }

  if (!v31)
  {
    v144 = v374;
    v145 = v35;
    sub_183F7DC7C(v374, v35, v24, v378);
    goto LABEL_299;
  }

LABEL_289:
  v171 = v376;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v16 <= *(*v171 + 24) >> 1)
    {
      sub_183F7DC7C(v374, v35, v24, v16);
      goto LABEL_296;
    }

LABEL_293:
    v172 = sub_183EA76E4(v16, 0);
    memcpy(v172 + 4, v24, 8 * v16);
  }

  else
  {
    if (v16)
    {
      goto LABEL_293;
    }

    v172 = MEMORY[0x1E69E7CC0];
  }

  v173 = v376;

  *v173 = v172;
LABEL_296:
  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    if (!v16)
    {
      v43 = MEMORY[0x1E69E7CC0];
      goto LABEL_303;
    }

LABEL_301:
    v43 = sub_183F9BAB8(v16, 0);
    memcpy((v43 + 32), v8, 4 * v16);
LABEL_303:
    v24 = v376;

    *v27 = v43;
    goto LABEL_304;
  }

  if (v16 > *(*v27 + 24) >> 1)
  {
    goto LABEL_301;
  }

  v145 = v35;
  v144 = v374;
LABEL_299:
  v174 = v144;
  v27 = v371;
  v43 = v371;
  sub_183F7DCA8(v174, v145, v8, v16);
  v24 = v376;
LABEL_304:
  v40 = v2 + v13;
  if (__OFADD__(v2, v13))
  {
    goto LABEL_607;
  }

  v41 = __OFSUB__(v40, v372);
  v175 = v40 - v372;
  v40 = &v393;
  v13 = v373;
  if (v41)
  {
LABEL_608:
    __break(1u);
    goto LABEL_609;
  }

  if (!v175)
  {
    goto LABEL_322;
  }

  v40 = v374 + v16;
  if (__OFADD__(v374, v16))
  {
    goto LABEL_615;
  }

  v176 = *(*v27 + 16);
  if (v176 < v40)
  {
    goto LABEL_616;
  }

  if (v176 == v40)
  {
    goto LABEL_322;
  }

  if (v176 <= v40)
  {
    goto LABEL_640;
  }

  if (v40 < 0)
  {
LABEL_641:
    __break(1u);
    goto LABEL_642;
  }

  v24 = &v176[-v40];
  if (v176 <= v40)
  {
LABEL_642:
    __break(1u);
    goto LABEL_643;
  }

  sub_183F9C0C8();
  v177 = *v27;
  v16 += (v374 + 1);
  do
  {
    if (v16 - 8 >= *(v177 + 2))
    {
      goto LABEL_520;
    }

    v178 = *&v177[4 * v16];
    v8 = v178 + v175;
    if (__OFADD__(v178, v175))
    {
      goto LABEL_521;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_522;
    }

    if (HIDWORD(v8))
    {
      goto LABEL_523;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v177 = sub_183F9C14C(v177);
    }

    *&v177[4 * v16++] = v8;
    --v24;
  }

  while (v24);
  *v27 = v177;
  v24 = v376;
LABEL_322:
  v179 = v375;
LABEL_323:
  v180 = *v24;
  v181 = *(*v24 + 16);
  if (v181)
  {
    v182 = *(v3 + 8);
    v183 = (v180 + 32);
    if (v374)
    {
      v183 = v13;
    }

    v168 = *v183;
    v184 = (v180 + 8 * v181 + 24);
    if (v35 != v365)
    {
      v184 = v179;
    }

    v170 = *v184;
  }

  else
  {
    v6 = NAN;
    v182 = 0x7FF8000000000000;
    v168 = 0x7FF8000000000000;
    v170 = 0x7FF8000000000000;
  }

  *v3 = v6;
  *(v3 + 8) = v182;
LABEL_331:
  *(v3 + 16) = v168;
  *(v3 + 24) = v170;
LABEL_332:
  sub_183FA5EA0();
}

BOOL sub_183F70684(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a5 <= a1 && a2 <= a6 && a7 <= a3 && a4 <= a8)
  {
    return 1;
  }

  if ((~*&a1 & 0x7FF0000000000000) != 0)
  {
    return 0;
  }

  return (*&a1 & 0xFFFFFFFFFFFFFLL) != 0;
}

void Region.formIntersection(_:)(__int128 *a1)
{
  v3 = v1;
  v249 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v243 = *a1;
  v244 = v4;
  v6 = *a1;
  v5 = a1[1];
  v245 = a1[2];
  v246 = *(a1 + 6);
  v7 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 16);
  v9 = *(v1 + 24);
  v11 = v243;
  v12 = v244;
  v13 = *(v1 + 32);
  v235 = v1 + 32;
  v14 = *(v1 + 40);
  v236 = (v1 + 40);
  v15 = v1 + 48;
  v16 = *(v1 + 48);
  *&v239 = v7;
  *(&v239 + 1) = v8;
  *&v240 = v10;
  *(&v240 + 1) = v9;
  *&v241 = v13;
  *(&v241 + 1) = v14;
  v242 = v16;
  v247[0] = v6;
  v247[1] = v5;
  v247[2] = a1[2];
  v248 = *(a1 + 6);
  v17 = sub_183F72694(v247);
  v18 = v13;
  v19 = v16;

  if (v17 <= 2u)
  {
    if (v17)
    {
      if (v17 != 1)
      {
        return;
      }

      *v3 = sub_183F72798(*&v243, *(&v243 + 1), *&v244, *(&v244 + 1), v7, v8, v10, v9);
      *(v3 + 8) = v21;
      *(v3 + 16) = v22;
      *(v3 + 24) = v23;
    }

    else
    {
      v24 = vdupq_n_s64(0x7FF8000000000000uLL);
      *v3 = v24;
      *(v3 + 16) = v24;
    }

    v25 = MEMORY[0x1E69E7CC0];
    *(v3 + 32) = MEMORY[0x1E69E7CC0];
    *(v3 + 40) = v25;
    *(v3 + 48) = v25;
    return;
  }

  if (v17 <= 4u)
  {
    if (v17 == 3)
    {
      sub_183F705CC(&v243, v3);
      sub_183F70628(&v243, &v239);
      return;
    }

    v234 = 0;
    v18 = *(v13 + 16);
    v14 = v13 + 32;
    v26 = sub_183F94060(v13 + 32, v18, *&v244);
    v2 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_256;
    }

    v27 = v26;
    if (v18 < v26)
    {
      goto LABEL_260;
    }

    v28 = sub_183F94198(v14 + 8 * v26, v18 - v26, *(&v244 + 1));
    v16 = v28 + v27;
    if (__OFADD__(v28, v27))
    {
      goto LABEL_263;
    }

    v29 = v2 & ~(v2 >> 63);
    v30 = v16 - v29;
    if (v16 < v29)
    {
      goto LABEL_266;
    }

    v31 = (*&v7 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v7 & 0x7FF0000000000000) == 0;
    v32 = *(v13 + 16);
    if (!v31 && v32 == 0)
    {
      v32 = 2;
    }

    v233 = v32;
    v230 = (v30 + 2);
    if (__OFADD__(v30, 2))
    {
      goto LABEL_269;
    }

    v232 = v15;
    v34 = *(v3 + 32);
    v18 = *(v3 + 40);
    v35 = *(v3 + 48);
    v36 = *(v3 + 16);
    v239 = *v3;
    v240 = v36;
    *&v241 = v34;
    *(&v241 + 1) = v18;
    v242 = v35;
    v37 = sub_183FA4388(v2 & ~(v2 >> 63), v16);
    v19 = v18;
    v2 = v34;
    v15 = v16;
    v16 = v35;

    v14 = v37 + 2;
    if (__OFADD__(v37, 2))
    {
      goto LABEL_271;
    }

    v2 = &v222;
    MEMORY[0x1EEE9AC00](v38);
    v19 = &v216;
    v217 = &v243;
    v218 = v29;
    v16 = v29;
    v219 = v15;
    v220 = v11;
    v221 = v12;
    v39 = sub_183FA5A00();
    v40 = *(v3 + 40);
    v41 = *(v40 + 16);
    v18 = v233;
    if (v233)
    {
      v15 = v230;
      if (v233 > v41)
      {
LABEL_308:
        __break(1u);
        goto LABEL_309;
      }

      v231 = *(v40 + 4 * v233 + 28);
    }

    else
    {
      v231 = 0;
      v15 = v230;
    }

    v54 = v15 * v14;
    if ((v15 * v14) >> 64 == (v15 * v14) >> 63)
    {
      if ((v15 & 0x8000000000000000) == 0)
      {
        if (!(v15 >> 60))
        {
          if ((8 * v15) < 1025)
          {
            goto LABEL_66;
          }

          goto LABEL_285;
        }

        goto LABEL_319;
      }

      goto LABEL_317;
    }

    __break(1u);
    goto LABEL_280;
  }

  v234 = 0;
  if (v17 == 5)
  {
    if (v9 >= *&v244)
    {
      v19 = 0;
      if (v9 <= *(&v244 + 1))
      {
        v16 = 2;
      }

      else
      {
        v16 = v10 <= *(&v244 + 1);
      }
    }

    else if (v9 <= *(&v244 + 1))
    {
      v16 = 2;
      v19 = 1;
    }

    else
    {
      if (v10 > *(&v244 + 1))
      {
        goto LABEL_258;
      }

      v19 = 1;
      v16 = 1;
    }

    if (((v243 & 0xFFFFFFFFFFFFFLL) == 0 || (~v243 & 0x7FF0000000000000) != 0) && *(v245 + 16) == 0)
    {
      v93 = 2;
    }

    else
    {
      v93 = *(v245 + 16);
    }

    v14 = v93 + 2;
    if (__OFADD__(v93, 2))
    {
      goto LABEL_259;
    }

    v2 = v15;
    v239 = v243;
    v240 = v244;
    v241 = v245;
    v242 = v246;
    v94 = sub_183FA4388(0, v93);
    v18 = v94 + 2;
    if (__OFADD__(v94, 2))
    {
      goto LABEL_262;
    }

    v232 = &v222;
    MEMORY[0x1EEE9AC00](v94);
    v15 = &v216;
    v217 = &v243;
    v218 = v19;
    v219 = v16;
    *&v220 = v7;
    *(&v220 + 1) = v8;
    *&v221 = v10;
    *(&v221 + 1) = v9;
    v95 = sub_183FA5A00();
    v96 = *(v3 + 40);
    v233 = *(v96 + 16);
    if (v233 < 2)
    {
      goto LABEL_265;
    }

    v20 = v14 * v18;
    if ((v14 * v18) >> 64 != (v14 * v18) >> 63)
    {
      goto LABEL_268;
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      if (!(v14 >> 60))
      {
        v18 = *(v96 + 36);
        if ((8 * v14) < 1025)
        {
          goto LABEL_115;
        }

        goto LABEL_273;
      }

      goto LABEL_314;
    }

LABEL_313:
    __break(1u);
LABEL_314:
    __break(1u);
LABEL_315:
    __break(1u);
LABEL_316:
    __break(1u);
LABEL_317:
    __break(1u);
    goto LABEL_318;
  }

  v18 = *(v13 + 16);
  v14 = v13 + 32;
  v42 = sub_183F94060(v13 + 32, v18, *&v244);
  v2 = v42 - 1;
  if (__OFSUB__(v42, 1))
  {
    goto LABEL_257;
  }

  v43 = v42;
  if (v18 < v42)
  {
    goto LABEL_261;
  }

  v44 = sub_183F94198(v14 + 8 * v42, v18 - v42, *(&v244 + 1));
  v16 = v44 + v43;
  if (__OFADD__(v44, v43))
  {
    goto LABEL_264;
  }

  v41 = (v2 & ~(v2 >> 63));
  v45 = v16 - v41;
  if (v16 < v41)
  {
    goto LABEL_267;
  }

  v232 = v15;
  if (((v243 & 0xFFFFFFFFFFFFFLL) == 0 || (~v243 & 0x7FF0000000000000) != 0) && *(v245 + 16) == 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = *(v245 + 16);
  }

  v48 = (*&v7 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v7 & 0x7FF0000000000000) == 0;
  v49 = *(v13 + 16);
  if (!v48 && v49 == 0)
  {
    v49 = 2;
  }

  v233 = v49;
  v227 = v45 + v19;
  if (__OFADD__(v45, v19))
  {
    goto LABEL_270;
  }

  v2 = *(v3 + 40);
  v51 = *(v3 + 48);
  v231 = sub_183FA4388(v41, v16);
  v14 = v2;
  v15 = v51;

  v239 = v243;
  v240 = v244;
  v241 = v245;
  v242 = v246;
  v52 = sub_183FA4388(0, v19);
  v18 = &v231[v52];
  if (__OFADD__(v231, v52))
  {
    goto LABEL_272;
  }

  v2 = &v222;
  MEMORY[0x1EEE9AC00](v52);
  v19 = &v219;
  *(&v220 + 1) = &v243;
  *&v221 = v41;
  *(&v221 + 1) = v16;
  isStackAllocationSafe = sub_183FA5A00();
  v55 = *(v3 + 40);
  v56 = *(v55 + 16);
  v57 = v232;
  v35 = v233;
  if (v233)
  {
    v58 = v227;
    if (v233 > v56)
    {
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
      goto LABEL_311;
    }

    v229 = *(v55 + 4 * v233 + 28);
  }

  else
  {
    v229 = 0;
    v58 = v227;
  }

  v15 = v58 * v18;
  if ((v58 * v18) >> 64 == (v58 * v18) >> 63)
  {
    if ((v58 & 0x8000000000000000) != 0)
    {
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
      goto LABEL_320;
    }

    if (v58 >> 60)
    {
LABEL_320:
      __break(1u);
      goto LABEL_321;
    }

    v75 = v41;
    v223 = &v219;
    v76 = v16;
    v228 = v56;
    if ((8 * v58) >= 1025)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v175 = v35 == v228;
        v176 = v227;
        v177 = swift_slowAlloc();
        v178 = v234;
        sub_183FA6B50(v177, v176, v176, v15, v3, 0, 0, sub_183F9E0A8, &v250, v223, v15, 1u, v175, v229, 0, v35, 0);
        v119 = v178;
        if (v178)
        {

          v208 = v177;
          goto LABEL_336;
        }

        MEMORY[0x1865EFCB0](v177, -1, -1);
        v234 = 0;
        v89 = v235;
        v18 = &v222;
        goto LABEL_236;
      }
    }

    v77 = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v231 = &v219 - v78;
    v226 = &v219;
    if (v79 >= 0x101)
    {
      v77 = swift_stdlib_isStackAllocationSafe();
      if ((v77 & 1) == 0)
      {
        v187 = v35 == v228;
        v188 = v227;
        v189 = swift_slowAlloc();
        HIBYTE(v215) = v187;
        LOBYTE(v215) = 1;
        v190 = v234;
        sub_183FA8588(v189, v188, v15, v231, v188, v3, 0, 0, &v250, sub_183F9E0A8, v223, v15, v215, v229, 0, v35, 0);
        MEMORY[0x1865EFCB0](v189, -1, -1);
        v119 = v190;
        if (v190)
        {
          goto LABEL_340;
        }

        v234 = 0;
        v89 = v235;
        v18 = &v222;
LABEL_236:
        v119 = *v89;
        if (*(*v89 + 16))
        {
          v142 = *(v3 + 24);
          v121 = v234;
          sub_183FA58E8((*(v3 + 40) + 32), *(*(v3 + 40) + 16), (*(v3 + 48) + 32), &v239);
          if (v121)
          {
            goto LABEL_331;
          }

          v143 = *(v119 + 16);
          if (!v143)
          {
LABEL_312:
            __break(1u);
            goto LABEL_313;
          }

          v144 = v239;
          v145 = *(v119 + 32);
          if (v233 == v228)
          {
            v142 = *(v119 + 8 * v143 + 24);
          }
        }

        else
        {
          v144 = vdupq_n_s64(0x7FF8000000000000uLL);
          v145 = 0x7FF8000000000000;
          v142 = 0x7FF8000000000000;
        }

        *v3 = v144;
        *(v3 + 16) = v145;
        *(v3 + 24) = v142;
        sub_183FA5EA0();
        return;
      }
    }

    v80 = MEMORY[0x1EEE9AC00](v77);
    v230 = &v219 - v82;
    if ((v15 & 0x8000000000000000) != 0)
    {
LABEL_322:
      __break(1u);
      goto LABEL_323;
    }

    if (v15 >> 60)
    {
      goto LABEL_324;
    }

    v224 = v81;
    v225 = &v222;
    if ((8 * v15) >= 1025)
    {
      v80 = swift_stdlib_isStackAllocationSafe();
      if ((v80 & 1) == 0)
      {
        v201 = v233;
        v202 = v233 == v228;
        v203 = v227;
        v204 = swift_slowAlloc();
        HIBYTE(v214) = v202;
        LOBYTE(v214) = 1;
        v205 = v203;
        v206 = v203;
        v207 = v234;
        sub_183FA8E88(v204, v15, v231, v205, v230, v206, v3, 0, 0, sub_183F9E0A8, v223, v15, v214, v229, 0, v201, 0);
        MEMORY[0x1865EFCB0](v204, -1, -1);
        v119 = v207;
        if (v207)
        {
          swift_willThrow();
          goto LABEL_340;
        }

        v234 = 0;
        v89 = v235;
LABEL_235:
        v18 = v225;
        goto LABEL_236;
      }
    }

    v2 = &v219;
    MEMORY[0x1EEE9AC00](v80);
    v16 = &v219 - v83;
    v238 = 0;
    v237 = 0;
    v84 = *(v3 + 40);
    v85 = *(v3 + 48);
    v86 = *(v3 + 32);
    v247[0] = (v85 + 32);
    v87 = *(v3 + 16);
    v239 = *v3;
    v240 = v87;
    *&v241 = v86;
    *(&v241 + 1) = v84;
    v242 = v85;
    swift_retain_n();

    sub_183FA2360(&v239, &v243, v75, v76, v16, &v237, v15, 1, v247, v231, &v238, v230, 0, &qword_1EA854118, &byte_1EA868CEA, sub_183FBF7C8);

    v88 = v237;
    if ((v237 & 0x8000000000000000) != 0)
    {
      goto LABEL_305;
    }

    v89 = v235;
    v19 = v236;
    if (v233 != v228)
    {
      sub_183F7DC7C(0, v229, v16, v237);
      v15 = v238;
      if ((v238 & 0x8000000000000000) != 0)
      {
        goto LABEL_307;
      }

      v90 = v233;
      sub_183F7DC7C(0, v233, v231, v238);
      goto LABEL_96;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v88 <= *(*v57 + 24) >> 1)
      {
        sub_183F7DC7C(0, v229, v16, v88);
        goto LABEL_179;
      }
    }

    else if (!v88)
    {
      v110 = MEMORY[0x1E69E7CC0];
      goto LABEL_178;
    }

    v110 = sub_183EA76E4(v88, 0);
    memcpy(v110 + 4, v16, 8 * v88);
LABEL_178:

    *v57 = v110;
LABEL_179:
    v15 = v238;
    if ((v238 & 0x8000000000000000) != 0)
    {
LABEL_307:
      __break(1u);
      goto LABEL_308;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v15 <= *(*v89 + 24) >> 1)
      {
        sub_183F7DC7C(0, v233, v231, v15);
        goto LABEL_194;
      }
    }

    else if (!v15)
    {
      v128 = MEMORY[0x1E69E7CC0];
      goto LABEL_193;
    }

    v128 = sub_183EA76E4(v15, 0);
    memcpy(v128 + 4, v231, 8 * v15);
LABEL_193:

    *v89 = v128;
LABEL_194:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v15 <= *(*v19 + 24) >> 1)
      {
        v90 = v233;
LABEL_96:
        sub_183F7DCA8(0, v90, v230, v15);
        goto LABEL_223;
      }
    }

    else if (!v15)
    {
      v131 = MEMORY[0x1E69E7CC0];
      goto LABEL_222;
    }

    v131 = sub_183F9BAB8(v15, 0);
    memcpy(v131 + 4, v230, 4 * v15);
LABEL_222:

    *v19 = v131;
LABEL_223:
    v14 = v88 - v229;
    if (v14)
    {
      v138 = *v19;
      v18 = *(*v19 + 16);
      if (v18 < v15)
      {
        goto LABEL_327;
      }

      if (v15 != v18)
      {
        if (v15 >= v18)
        {
          goto LABEL_330;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = sub_183F9C14C(v138);
        }

        do
        {
          if (v15 >= *(v138 + 2))
          {
            goto LABEL_248;
          }

          v139 = &v138[4 * v15];
          v140 = *(v139 + 8);
          v117 = __OFADD__(v140, v14);
          v141 = v140 + v14;
          if (v117)
          {
            goto LABEL_251;
          }

          if ((v141 & 0x8000000000000000) != 0)
          {
            goto LABEL_253;
          }

          if (HIDWORD(v141))
          {
            goto LABEL_255;
          }

          ++v15;
          *(v139 + 8) = v141;
        }

        while (v18 != v15);
        *v19 = v138;
      }
    }

    goto LABEL_235;
  }

LABEL_280:
  __break(1u);
LABEL_281:
  v229 = v18;
  v162 = v54;
  v100 = swift_stdlib_isStackAllocationSafe();
  v163 = v162;
  v18 = v229;
  if ((v100 & 1) == 0)
  {
    v164 = v233 == 2;
    v165 = v163;
    v166 = swift_slowAlloc();
    v167 = v18;
    v18 = v166;
    HIBYTE(v210) = v164;
    LOBYTE(v210) = 1;
    v168 = v14;
    v169 = v14;
    v170 = v234;
    sub_183FA8FB4(v166, v165, v35, v168, v41, v169, v3, 0, 0, sub_183FA01F8, v15, v165, v210, v167, 0, 2, 0);
    MEMORY[0x1865EFCB0](v18, -1, -1);
    v119 = v170;
    if (v170)
    {
      swift_willThrow();
      goto LABEL_340;
    }

    v234 = 0;
    v16 = v235;
    goto LABEL_163;
  }

  while (1)
  {
    v229 = &v216;
    MEMORY[0x1EEE9AC00](v100);
    v103 = &v216 - v102;
    v238 = 0;
    v237 = 0;
    v104 = *(v3 + 48);
    v247[0] = (v104 + 32);
    v105 = *(v3 + 16);
    v239 = *v3;
    v240 = v105;
    v241 = *(v3 + 32);
    v242 = v104;
    sub_183F9F144(&v239, &v243, v19, v16, v103, &v237, v106, 1, v7, v8, v10, v9, v247, v35, &v238, v41, 0);
    v65 = v237;
    if ((v237 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_285:
      v171 = v54;
      v39 = swift_stdlib_isStackAllocationSafe();
      v15 = v230;
      if ((v39 & 1) == 0)
      {
        v172 = v230;
        v119 = swift_slowAlloc();
        v209 = v171;
        v173 = v171;
        v174 = v234;
        sub_183FA6D60(v119, v172, v172, v173, v3, 0, 0, sub_183FA0240, &v250, v19, v209, 1u, v18 == v41, v231, 0, v18, 0);
        v18 = v174;
        if (v174)
        {
          goto LABEL_332;
        }

        MEMORY[0x1865EFCB0](v119, -1, -1);
        v234 = 0;
        v74 = v235;
        v18 = v233;
LABEL_214:
        v119 = *v74;
        if (*(*v74 + 16))
        {
          v120 = *(v3 + 24);
          v121 = v234;
          sub_183FA58E8((*(v3 + 40) + 32), *(*(v3 + 40) + 16), (*(v3 + 48) + 32), &v239);
          if (v121)
          {
            goto LABEL_331;
          }

          v137 = *(v119 + 16);
          if (!v137)
          {
LABEL_311:
            __break(1u);
            goto LABEL_312;
          }

          v123 = v239;
          v124 = *(v119 + 32);
          if (v18 == v41)
          {
            v120 = *(v119 + 8 * v137 + 24);
          }
        }

        else
        {
          v123 = vdupq_n_s64(0x7FF8000000000000uLL);
          v124 = 0x7FF8000000000000;
          v120 = 0x7FF8000000000000;
        }

        goto LABEL_169;
      }

LABEL_66:
      v229 = v2;
      v228 = &v216;
      v59 = MEMORY[0x1EEE9AC00](v39);
      v35 = (&v216 - v61);
      if (v15 >= 0x101)
      {
        v179 = v60;
        v59 = swift_stdlib_isStackAllocationSafe();
        v180 = v179;
        if ((v59 & 1) == 0)
        {
          v181 = v18 == v41;
          v182 = v180;
          v183 = swift_slowAlloc();
          v184 = v18;
          v185 = v183;
          HIBYTE(v213) = v181;
          LOBYTE(v213) = 1;
          v186 = v234;
          sub_183FA8774(v183, v15, v182, v35, v15, v3, 0, 0, &v250, sub_183FA0240, v19, v182, v213, v231, 0, v184, 0);
          MEMORY[0x1865EFCB0](v185, -1, -1);
          v119 = v186;
          if (v186)
          {
            goto LABEL_340;
          }

          v234 = 0;
          v74 = v235;
          goto LABEL_213;
        }
      }

      v2 = &v216;
      v62 = MEMORY[0x1EEE9AC00](v59);
      v65 = &v216 - v64;
      if ((v63 & 0x8000000000000000) != 0)
      {
LABEL_321:
        __break(1u);
        goto LABEL_322;
      }

      if (v63 >> 60)
      {
LABEL_323:
        __break(1u);
LABEL_324:
        __break(1u);
LABEL_325:
        __break(1u);
        goto LABEL_326;
      }

      if ((8 * v63) < 1025)
      {
        goto LABEL_70;
      }

      goto LABEL_298;
    }

    v19 = v236;
    v107 = v2;
    if (v233 != 2)
    {
      sub_183F7DC7C(0, v18, v103, v237);
      v15 = v238;
      if ((v238 & 0x8000000000000000) == 0)
      {
        v16 = v235;
        sub_183F7DC7C(0, 2, v35, v238);
        goto LABEL_128;
      }

LABEL_297:
      __break(1u);
LABEL_298:
      v191 = v63;
      v62 = swift_stdlib_isStackAllocationSafe();
      v192 = v191;
      v18 = v233;
      if ((v62 & 1) == 0)
      {
        v193 = v230;
        v194 = v233 == v41;
        v195 = v192;
        v196 = swift_slowAlloc();
        v197 = v18;
        v198 = v196;
        HIBYTE(v211) = v194;
        LOBYTE(v211) = 1;
        v199 = v65;
        v200 = v234;
        sub_183FA8FB4(v196, v195, v35, v193, v199, v193, v3, 0, 0, sub_183FA0240, v19, v195, v211, v231, 0, v197, 0);
        MEMORY[0x1865EFCB0](v198, -1, -1);
        v119 = v200;
        if (v200)
        {
          goto LABEL_337;
        }

        v234 = 0;
        v74 = v235;
LABEL_213:
        v18 = v233;
        goto LABEL_214;
      }

LABEL_70:
      v19 = &v216;
      MEMORY[0x1EEE9AC00](v62);
      v67 = &v216 - v66;
      v238 = 0;
      v237 = 0;
      v68 = *(v3 + 48);
      v247[0] = (v68 + 32);
      v69 = *(v3 + 16);
      v239 = *v3;
      v240 = v69;
      v241 = *(v3 + 32);
      v242 = v68;
      sub_183F9E0F0(&v239, &v243, v16, v70, v67, &v237, v71, 1, *&v11, *(&v11 + 1), *&v12, *(&v12 + 1), v247, v35, &v238, v65, 0);
      v16 = v237;
      if ((v237 & 0x8000000000000000) == 0)
      {
        v72 = v232;
        if (v18 != v41)
        {
          sub_183F7DC7C(0, v231, v67, v237);
          v15 = v238;
          if ((v238 & 0x8000000000000000) == 0)
          {
            v73 = v35;
            v74 = v235;
            sub_183F7DC7C(0, v18, v73, v238);
            goto LABEL_78;
          }

          goto LABEL_306;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (v16 <= *(*v72 + 24) >> 1)
          {
            sub_183F7DC7C(0, v231, v67, v16);
            v15 = v238;
            if ((v238 & 0x8000000000000000) != 0)
            {
              goto LABEL_306;
            }

LABEL_172:
            v125 = v235;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              if (v15 <= *(*v125 + 24) >> 1)
              {
                v126 = v35;
                v74 = v235;
                sub_183F7DC7C(0, v18, v126, v15);
LABEL_187:
                v129 = v236;
                if (!swift_isUniquelyReferenced_nonNull_native())
                {
                  if (!v15)
                  {
                    v130 = MEMORY[0x1E69E7CC0];
                    goto LABEL_200;
                  }

LABEL_191:
                  v130 = sub_183F9BAB8(v15, 0);
                  memcpy(v130 + 32, v65, 4 * v15);
LABEL_200:
                  v132 = v236;

                  *v132 = v130;
LABEL_201:
                  v14 = v16 - v231;
                  if (v16 != v231)
                  {
                    v133 = *v236;
                    v18 = *(*v236 + 2);
                    if (v18 < v15)
                    {
LABEL_326:
                      __break(1u);
LABEL_327:
                      __break(1u);
LABEL_328:
                      __break(1u);
                      goto LABEL_329;
                    }

                    if (v15 != v18)
                    {
                      if (v15 >= v18)
                      {
LABEL_329:
                        __break(1u);
LABEL_330:
                        __break(1u);
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v133 = sub_183F9C14C(v133);
                      }

                      do
                      {
                        if (v15 >= *(v133 + 2))
                        {
                          goto LABEL_247;
                        }

                        v134 = &v133[4 * v15];
                        v135 = *(v134 + 8);
                        v117 = __OFADD__(v135, v14);
                        v136 = v135 + v14;
                        if (v117)
                        {
                          goto LABEL_250;
                        }

                        if ((v136 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_252;
                        }

                        if (HIDWORD(v136))
                        {
                          goto LABEL_254;
                        }

                        ++v15;
                        *(v134 + 8) = v136;
                      }

                      while (v18 != v15);
                      *v236 = v133;
                    }
                  }

                  goto LABEL_213;
                }

                if (v15 > *(*v129 + 3) >> 1)
                {
                  goto LABEL_191;
                }

LABEL_78:
                sub_183F7DCA8(0, v18, v65, v15);
                goto LABEL_201;
              }
            }

            else if (!v15)
            {
              v127 = MEMORY[0x1E69E7CC0];
              goto LABEL_186;
            }

            v127 = sub_183EA76E4(v15, 0);
            memcpy(v127 + 4, v35, 8 * v15);
LABEL_186:
            v74 = v235;

            *v74 = v127;
            goto LABEL_187;
          }
        }

        else if (!v16)
        {
          v109 = MEMORY[0x1E69E7CC0];
LABEL_171:

          *v72 = v109;
          v15 = v238;
          v18 = v233;
          if ((v238 & 0x8000000000000000) == 0)
          {
            goto LABEL_172;
          }

LABEL_306:
          __break(1u);
          goto LABEL_307;
        }

        v109 = sub_183EA76E4(v16, 0);
        memcpy(v109 + 4, v67, 8 * v16);
        goto LABEL_171;
      }

      __break(1u);
LABEL_305:
      __break(1u);
      goto LABEL_306;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v65 <= *(*v2 + 24) >> 1)
      {
        sub_183F7DC7C(0, v18, v103, v65);
        v15 = v238;
        if ((v238 & 0x8000000000000000) != 0)
        {
          goto LABEL_297;
        }

        goto LABEL_138;
      }

LABEL_131:
      v2 = v18;
      v108 = sub_183EA76E4(v65, 0);
      memcpy(v108 + 4, v103, 8 * v65);
      goto LABEL_137;
    }

    if (v65)
    {
      goto LABEL_131;
    }

    v2 = v18;
    v108 = MEMORY[0x1E69E7CC0];
LABEL_137:

    *v107 = v108;
    v15 = v238;
    v18 = v2;
    if ((v238 & 0x8000000000000000) != 0)
    {
      goto LABEL_297;
    }

LABEL_138:
    v111 = v235;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      if (v15)
      {
LABEL_142:
        v112 = sub_183EA76E4(v15, 0);
        memcpy(v112 + 4, v35, 8 * v15);
      }

      else
      {
        v112 = MEMORY[0x1E69E7CC0];
      }

      v16 = v235;

      *v16 = v112;
      goto LABEL_145;
    }

    if (v15 > *(*v111 + 24) >> 1)
    {
      goto LABEL_142;
    }

    v16 = v235;
    sub_183F7DC7C(0, 2, v35, v15);
LABEL_145:
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      if (v15)
      {
LABEL_149:
        v113 = sub_183F9BAB8(v15, 0);
        memcpy(v113 + 4, v41, 4 * v15);
      }

      else
      {
        v113 = MEMORY[0x1E69E7CC0];
      }

      *v19 = v113;
      v14 = v65 - v18;
      if (!v14)
      {
        goto LABEL_163;
      }

      goto LABEL_152;
    }

    if (v15 > *(*v19 + 24) >> 1)
    {
      goto LABEL_149;
    }

LABEL_128:
    sub_183F7DCA8(0, 2, v41, v15);
    v14 = v65 - v18;
    if (!v14)
    {
      goto LABEL_163;
    }

LABEL_152:
    v114 = *v19;
    v18 = *(*v19 + 16);
    if (v18 < v15)
    {
      goto LABEL_325;
    }

    if (v15 == v18)
    {
      goto LABEL_163;
    }

    if (v15 >= v18)
    {
      goto LABEL_328;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = sub_183F9C14C(v114);
    }

    while (v15 < *(v114 + 2))
    {
      v115 = &v114[4 * v15];
      v116 = *(v115 + 8);
      v117 = __OFADD__(v116, v14);
      v118 = v116 + v14;
      if (v117)
      {
        goto LABEL_245;
      }

      if ((v118 & 0x8000000000000000) != 0)
      {
        goto LABEL_246;
      }

      if (HIDWORD(v118))
      {
        goto LABEL_249;
      }

      ++v15;
      *(v115 + 8) = v118;
      if (v18 == v15)
      {
        *v19 = v114;
        goto LABEL_163;
      }
    }

    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
LABEL_264:
    __break(1u);
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
LABEL_268:
    __break(1u);
LABEL_269:
    __break(1u);
LABEL_270:
    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    __break(1u);
LABEL_273:
    v146 = v18;
    v147 = v20;
    v95 = swift_stdlib_isStackAllocationSafe();
    v148 = v147;
    v18 = v146;
    if ((v95 & 1) == 0)
    {
      break;
    }

LABEL_115:
    v231 = &v216;
    v97 = MEMORY[0x1EEE9AC00](v95);
    v35 = (&v216 - v99);
    if (v14 >= 0x101)
    {
      v154 = v18;
      v155 = v98;
      v97 = swift_stdlib_isStackAllocationSafe();
      v156 = v155;
      v18 = v154;
      if ((v97 & 1) == 0)
      {
        v157 = v233 == 2;
        v158 = v156;
        v18 = swift_slowAlloc();
        HIBYTE(v212) = v157;
        LOBYTE(v212) = 1;
        v159 = v14;
        v160 = v14;
        v161 = v234;
        sub_183FA8774(v18, v159, v158, v35, v160, v3, 0, 0, &v250, sub_183FA01F8, v15, v158, v212, v154, 0, 2, 0);
        MEMORY[0x1865EFCB0](v18, -1, -1);
        v119 = v161;
        if (v161)
        {
          goto LABEL_340;
        }

        v234 = 0;
        v16 = v235;
LABEL_163:
        v119 = *v16;
        if (*(*v16 + 16))
        {
          v120 = *(v3 + 24);
          v121 = v234;
          sub_183FA58E8((*(v3 + 40) + 32), *(*(v3 + 40) + 16), (*(v3 + 48) + 32), &v239);
          if (!v121)
          {
            v122 = *(v119 + 16);
            if (v122)
            {
              v123 = v239;
              v124 = *(v119 + 32);
              if (v233 == 2)
              {
                v120 = *(v119 + 8 * v122 + 24);
              }

              goto LABEL_169;
            }

            goto LABEL_310;
          }

LABEL_331:

          __break(1u);
          goto LABEL_332;
        }

        v123 = vdupq_n_s64(0x7FF8000000000000uLL);
        v124 = 0x7FF8000000000000;
        v120 = 0x7FF8000000000000;
LABEL_169:
        *v3 = v123;
        *(v3 + 16) = v124;
        *(v3 + 24) = v120;
        sub_183FA5EA0();
        return;
      }
    }

    v230 = &v216;
    v100 = MEMORY[0x1EEE9AC00](v97);
    v41 = &v216 - v101;
    if ((v54 & 0x8000000000000000) != 0)
    {
      goto LABEL_315;
    }

    if (v54 >> 60)
    {
      goto LABEL_316;
    }

    if ((8 * v54) >= 1025)
    {
      goto LABEL_281;
    }
  }

  v149 = v233 == 2;
  v150 = v148;
  v119 = swift_slowAlloc();
  v151 = v14;
  v152 = v14;
  v153 = v234;
  sub_183FA6D60(v119, v151, v152, v150, v3, 0, 0, sub_183FA01F8, &v250, v15, v150, 1u, v149, v146, 0, 2, 0);
  v18 = v153;
  if (!v153)
  {
    MEMORY[0x1865EFCB0](v119, -1, -1);
    v234 = 0;
    v16 = v235;
    goto LABEL_163;
  }

LABEL_332:

  v208 = v119;
LABEL_336:
  MEMORY[0x1865EFCB0](v208, -1, -1);
  __break(1u);
LABEL_337:
  swift_willThrow();
LABEL_340:
  swift_willThrow();

  __break(1u);
}

uint64_t sub_183F72694(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  if (v8 >= v5 || v4 >= v9 || v6 >= v3 || v2 >= v7)
  {
    return 0;
  }

  v14 = *(a1 + 32);
  if ((~*&v6 & 0x7FF0000000000000) == 0 && (*&v6 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    if ((~*&v2 & 0x7FF0000000000000) == 0 && (*&v2 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      return 6;
    }

    if (*(v14 + 16))
    {
      return 6;
    }

    v23 = 2;
    goto LABEL_47;
  }

  v16 = *(*(v1 + 32) + 16);
  if ((~*&v2 & 0x7FF0000000000000) != 0 || (*a1 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v19 = *(v14 + 16);
    if (!v16)
    {
      if (!v19)
      {
        return 1;
      }

      v17 = 5;
      goto LABEL_33;
    }

    if (!v19)
    {
      v23 = 4;
LABEL_47:
      if (v9 > v5 || v4 > v8 || v7 > v3 || v2 > v6)
      {
        return v23;
      }

      else
      {
        return 2;
      }
    }

    return 6;
  }

  if (v16)
  {
    return 6;
  }

  v17 = 3;
LABEL_33:
  if (v5 > v9 || v8 > v4 || v3 > v7 || v6 > v2)
  {
    return v17;
  }

  else
  {
    return 3;
  }
}

double sub_183F72798(double result, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = result;
  v9 = result;
  if ((*&result & 0xFFFFFFFFFFFFFLL) != 0)
  {
    result = a5;
  }

  if ((~*&v9 & 0x7FF0000000000000) != 0)
  {
    result = v8;
  }

  if (v8 < a5)
  {
    result = a5;
  }

  if ((*&a3 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v10 = a7;
  }

  else
  {
    v10 = a3;
  }

  if ((~*&a3 & 0x7FF0000000000000) != 0)
  {
    v10 = a3;
  }

  if (a3 >= a7)
  {
    v11 = v10;
  }

  else
  {
    v11 = a7;
  }

  if ((*&a2 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v12 = a6;
  }

  else
  {
    v12 = a2;
  }

  if ((~*&a2 & 0x7FF0000000000000) != 0)
  {
    v12 = a2;
  }

  if (a6 <= a2)
  {
    v13 = a6;
  }

  else
  {
    v13 = v12;
  }

  if ((*&a4 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v14 = a8;
  }

  else
  {
    v14 = a4;
  }

  if ((~*&a4 & 0x7FF0000000000000) != 0)
  {
    v14 = a4;
  }

  if (a8 <= a4)
  {
    v15 = a8;
  }

  else
  {
    v15 = v14;
  }

  if (result >= v13 || v11 >= v15 || (~*&a5 & 0x7FF0000000000000) == 0 && (*&a5 & 0xFFFFFFFFFFFFFLL) != 0 || (~*&v8 & 0x7FF0000000000000) == 0 && (*&v8 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return NAN;
  }

  return result;
}

void Region.init(_:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v5 = sub_183F728C4(a2, a3, a4);
  if (v5 >= v6 || v7 >= v8)
  {
    v5 = NAN;
    v6 = NAN;
    v7 = NAN;
    v8 = NAN;
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  v10 = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = v10;
  *(a1 + 48) = v10;
}

double sub_183F728C4(double a1, double a2, double a3)
{
  v4 = ~*&a1 & 0x7FF0000000000000;
  v5 = *&a1 & 0xFFFFFFFFFFFFFLL;
  result = 0.0;
  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (v7 && ((~*&a2 & 0x7FF0000000000000) != 0 || (*&a2 & 0xFFFFFFFFFFFFFLL) == 0))
  {
    v9 = a1 + a3;
    if ((COERCE_UNSIGNED_INT64(a1 + a3) & 0xFFFFFFFFFFFFFLL) != 0)
    {
      result = a1;
    }

    else
    {
      result = a1 + a3;
    }

    if ((~COERCE__INT64(a1 + a3) & 0x7FF0000000000000) != 0)
    {
      result = a1 + a3;
    }

    if (v9 >= a1)
    {
      return a1;
    }
  }

  return result;
}

__n128 sub_183F729C8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v2;
  return result;
}

void Region.endIndex.getter(void *a1@<X8>)
{
  v2 = (~*v1 & 0x7FF0000000000000) != 0 || (*v1 & 0xFFFFFFFFFFFFFLL) == 0;
  if (v2 && !*(v1[4] + 16))
  {
    *a1 = 2;
    a1[1] = 2;
  }

  else
  {
    v3 = *(v1[6] + 16);
    *a1 = *(v1[5] + 16);
    a1[1] = v3;
  }
}

void (*sub_183F72A4C(void *a1, unint64_t *a2))()
{
  Region.subscript.getter(a2);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return CGBitmapPixelInfoGetBitsPerComponent;
}

unint64_t *Region.subscript.getter(unint64_t *result)
{
  v2 = *result;
  v3 = result[1];
  v4 = v1[4];
  v5 = (~*v1 & 0x7FF0000000000000) != 0 || (*v1 & 0xFFFFFFFFFFFFFLL) == 0;
  if (!v5 || *(v4 + 16))
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v6 = *(v1[6] + 16);
      if (v3 < v6)
      {
        if (v3 + 1 < v6)
        {
          if ((v2 & 0x8000000000000000) == 0)
          {
            v7 = *(v4 + 16);
            if (v2 < v7)
            {
              if (v2 + 1 < v7)
              {
                return result;
              }

              goto LABEL_21;
            }

LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  if (v3 | v2)
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_183F72B54(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  v5 = *(v4 + 48);
  v6 = *(v4 + 16);
  v8[1] = *v4;
  v8[2] = v6;
  v8[3] = *(v4 + 32);
  v9 = v5;
  v8[0] = *a1;
  return (a4)(v8, a2, a3);
}

uint64_t *Region.index(after:)@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  v4 = __OFADD__(v3, 2);
  v5 = v3 + 2;
  if (v4)
  {
    goto LABEL_20;
  }

  v6 = *result;
  v7 = v2[5];
  v8 = (~*v2 & 0x7FF0000000000000) != 0 || (*v2 & 0xFFFFFFFFFFFFFLL) == 0;
  if (!v8 || *(v2[4] + 16))
  {
    v9 = *(v7 + 16);
    if (v6 < v9)
    {
      v10 = v7 + 32;
      v11 = *result;
      while ((v6 & 0x8000000000000000) == 0)
      {
        if (v5 < *(v10 + 4 * v11))
        {
          *a2 = v11;
          a2[1] = v5;
          return result;
        }

        if (v9 == ++v11)
        {
          v6 = v9;
          goto LABEL_14;
        }
      }

      goto LABEL_19;
    }

LABEL_14:
    *a2 = v6;
    a2[1] = v5;
    return result;
  }

  v4 = __OFADD__(v6, 2);
  v6 += 2;
  if (!v4)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t CGRect.encode(to:)(void *a1, double a2, double a3, double a4, double a5)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1843903B8();
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  type metadata accessor for CGPoint(0);
  sub_183F3FF48(&qword_1EA853F50, type metadata accessor for CGPoint, &protocol conformance descriptor for CGPoint);
  sub_184390208();
  if (!v5)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    type metadata accessor for CGSize(0);
    sub_183F3FF48(&qword_1EA853F58, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
    sub_184390208();
  }

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t CGPoint.encode(to:)(void *a1, double a2, double a3)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1843903B8();
  v9 = a2;
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  sub_183F72F08();
  sub_184390208();
  if (!v3)
  {
    v9 = a3;
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    sub_184390208();
  }

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

unint64_t sub_183F72F08()
{
  result = qword_1ED4E0248;
  if (!qword_1ED4E0248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4E0248);
  }

  return result;
}

uint64_t CGSize.encode(to:)(void *a1, double a2, double a3)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1843903B8();
  v9 = a2;
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  sub_183F72F08();
  sub_184390208();
  if (!v3)
  {
    v9 = a3;
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    sub_184390208();
  }

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

unint64_t *Region.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854810, &qword_18439A688);
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = *(v4 + 4);
  v10 = *(v4 + 5);
  v30 = *(v4 + 6);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1843903B8();
  v11 = *v4;
  v36 = v4[1];
  v35 = v11;
  v12 = v9;
  v37 = v9;
  v38 = v10;
  v40 = 0;
  v41 = 0;
  v39 = v30;
  v13 = (v11 & 0xFFFFFFFFFFFFFLL) == 0 || (~v11 & 0x7FF0000000000000) != 0;
  v14 = v10 + 32;
  v31 = (v32 + 8);
  v32 = v12;

  v29 = v10;

  v15 = 0;
  while (1)
  {
    if (v13 && !*(v32 + 16))
    {
      if (v15 == 2)
      {
        goto LABEL_24;
      }
    }

    else if (v15 == *(v30 + 16))
    {
      goto LABEL_24;
    }

    result = Region.subscript.getter(&v40);
    v15 = v41 + 2;
    if (__OFADD__(v41, 2))
    {
      goto LABEL_26;
    }

    v21 = v17;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    v25 = v40;
    if (!v13 || *(v32 + 16))
    {
      break;
    }

    v25 = v40 + 2;
    if (__OFADD__(v40, 2))
    {
      goto LABEL_27;
    }

LABEL_21:
    v40 = v25;
    v41 += 2;
    __swift_mutable_project_boxed_opaque_existential_1(v42, v42[3]);
    sub_183F73434();
    sub_1843901F8();
    v33 = v21;
    v34 = v22;
    v43 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854818, &qword_18439A690);
    sub_183F73488(&qword_1EA853F10, sub_183F72F08, MEMORY[0x1E69E66B0]);
    sub_184390198();
    if (v3)
    {
      (*v31)(v8, v6);
LABEL_24:

      return __swift_destroy_boxed_opaque_existential_0(v42);
    }

    v33 = v23;
    v34 = v24;
    v43 = 1;
    sub_184390198();
    v3 = 0;
    (*v31)(v8, v6);
  }

  v26 = *(v29 + 16);
  if (v40 >= v26)
  {
    goto LABEL_21;
  }

  v27 = v40;
  while ((v40 & 0x8000000000000000) == 0)
  {
    if (v15 < *(v14 + 4 * v27))
    {
      v25 = v27;
      goto LABEL_21;
    }

    if (v26 == ++v27)
    {
      v25 = *(v29 + 16);
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}
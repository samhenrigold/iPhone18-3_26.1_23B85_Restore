OpenSubdiv::v3_1_1::Far::GregoryBasis::Point *OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(OpenSubdiv::v3_1_1::Far::GregoryBasis::Point *this, unsigned int a2)
{
  *this = 0;
  v4 = this + 24;
  *(this + 1) = this + 24;
  *(this + 2) = 0x2800000000;
  *(this + 43) = 0;
  if (!a2)
  {
    operator delete(0);
    v5 = 40;
    goto LABEL_5;
  }

  if (a2 >= 0x29)
  {
    operator delete(0);
    *(this + 1) = v4;
    *(this + 5) = 40;
    v4 = operator new(8 * a2);
    *(this + 43) = v4;
    v5 = a2;
LABEL_5:
    *(this + 1) = v4;
    *(this + 5) = v5;
  }

  *(this + 4) = a2;
  return this;
}

void OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(OpenSubdiv::v3_1_1::Far::GregoryBasis *this, const void **a2, OpenSubdiv::v3_1_1::Far::StencilTable *a3)
{
  v9 = *this;
  std::vector<int>::push_back[abi:nn200100](a2 + 2, &v9);
  if (v9 >= 1)
  {
    v5 = 0;
    for (i = 0; i < v9; ++i)
    {
      v8 = *(*(this + 1) + v5);
      std::vector<int>::push_back[abi:nn200100](a2 + 8, &v8);
      v7 = *(*(this + 1) + v5 + 4);
      std::vector<float>::push_back[abi:nn200100](a2 + 11, &v7);
      v5 += 8;
    }
  }
}

{
  v5 = 1;
  v6 = this;
  std::vector<int>::push_back[abi:nn200100](a2 + 2, &v5);
  std::vector<int>::push_back[abi:nn200100](a2 + 8, &v6);
  v4 = 1065353216;
  std::vector<float>::push_back[abi:nn200100](a2 + 11, &v4);
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::EndCapGregoryBasisPatchFactory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a2;
  *(a1 + 24) = a5;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  v7 = **(*(a2 + 88) + 24 * ((*(a2 + 8) >> 2) & 0xF));
  v8 = 20 * v7;
  v9 = 320 * v7;
  if (v9 >= 104857600)
  {
    v10 = 104857600;
  }

  else
  {
    v10 = v9;
  }

  std::vector<int>::reserve((a3 + 16), v8);
  std::vector<int>::reserve((a3 + 64), v10);
  std::vector<int>::reserve((a3 + 88), v10);
  v11 = *(a1 + 8);
  if (v11)
  {
    std::vector<int>::reserve((v11 + 16), v8);
    std::vector<int>::reserve((v11 + 64), v8);
    std::vector<int>::reserve((v11 + 88), v8);
  }

  return a1;
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v90 = *MEMORY[0x1E69E9840];
  v11 = 20;
  do
  {
    std::vector<int>::push_back[abi:nn200100]((v10 + 40), &OpenSubdiv::v3_1_1::Vtr::INDEX_INVALID);
    --v11;
  }

  while (v11);
  v12 = *(v10 + 16);
  if ((v2 & 0x80000000) != 0)
  {
    v16 = *(v12 + 20);
  }

  else
  {
    v14 = v12 + 40;
    v13 = *(v12 + 40);
    v15 = *(v14 + 8) - v13;
    if ((v15 >> 3) < 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = 0;
      v17 = (v15 >> 3);
      if (v17 <= 1)
      {
        v17 = 1;
      }

      do
      {
        v18 = *v13++;
        v16 += *(*(*(v18 + 456) + 8 * v2) + 16);
        --v17;
      }

      while (v17);
    }
  }

  v19 = *(v10 + 40) + 80 * *(v10 + 32);
  if (*(v10 + 24) == 1)
  {
    v83 = v4;
    v20 = *(v8 + 12);
    v21 = *(v8 + 72) + 4 * *(*(v8 + 24) + 4 * ((2 * v6) | 1));
    OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceETags(v8, v6, v86, v2);
    v22 = 0;
    v85 = v20 << 28;
    v23 = OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level const*,int,OpenSubdiv::v3_1_1::Vtr::internal::Level::VSpan const*,int,int)::gregoryEdgeVerts;
    while (1)
    {
      if ((v86[v22] & 2) == 0)
      {
        v24 = *(v21 + 4 * v22);
        v25 = *(v8 + 144);
        v26 = *(v25 + 8 * v24);
        if (v26 < 1)
        {
LABEL_18:
          v32 = 0;
        }

        else
        {
          v27 = *(v8 + 168) + 4 * *(v25 + 4 * ((2 * v24) | 1));
          v28 = 1;
          v29 = v27;
          v30 = v26;
          while (1)
          {
            v31 = *v29++;
            if (v31 == v6)
            {
              break;
            }

            ++v28;
            if (!--v30)
            {
              goto LABEL_18;
            }
          }

          v32 = *(v27 + 4 * (v28 % v26));
        }

        if (v32 != -1 && v32 < v6)
        {
          v33 = *(v10 + 64);
          v34 = *(v10 + 72);
          if (v33 == v34 || ((v35 = (*(v8 + 72) + 4 * *(*(v8 + 24) + 4 * ((2 * v32) | 1))), *v35 != v24) ? (v35[1] != v24 ? (v35[2] != v24 ? (v35[3] != v24 ? (v36 = -1) : (v36 = 3)) : (v36 = 2)) : (v36 = 1)) : (v36 = 0), __key[0] = v32 | v85, (v37 = bsearch(__key, v33, (v34 - v33) >> 2, 4uLL, OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level const*,int,OpenSubdiv::v3_1_1::Vtr::internal::Level::VSpan const*,int,int)::LevelAndFaceIndex::compare)) == 0))
          {
LABEL_36:
            v42 = v85 | v6;
            v44 = *(v10 + 72);
            v43 = *(v10 + 80);
            if (v44 >= v43)
            {
              v46 = *(v10 + 64);
              v47 = v44 - v46;
              v48 = (v44 - v46) >> 2;
              v49 = v48 + 1;
              if ((v48 + 1) >> 62)
              {
                std::string::__throw_length_error[abi:nn200100]();
              }

              v50 = v43 - v46;
              if (v50 >> 1 > v49)
              {
                v49 = v50 >> 1;
              }

              v51 = v50 >= 0x7FFFFFFFFFFFFFFCLL;
              v52 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v51)
              {
                v52 = v49;
              }

              if (v52)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v10 + 64, v52);
              }

              v53 = v48;
              v54 = (4 * v48);
              v55 = &v54[-v53];
              *v54 = v42;
              v45 = v54 + 1;
              memcpy(v55, v46, v47);
              v56 = *(v10 + 64);
              *(v10 + 64) = v55;
              *(v10 + 72) = v45;
              *(v10 + 80) = 0;
              if (v56)
              {
                operator delete(v56);
              }
            }

            else
            {
              *v44 = v42;
              v45 = v44 + 1;
            }

            *(v10 + 72) = v45;
            break;
          }

          v38 = *(v10 + 40) + ((0x1400000000 * ((v37 - *(v10 + 64)) >> 2)) >> 30);
          v39 = &OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level const*,int,OpenSubdiv::v3_1_1::Vtr::internal::Level::VSpan const*,int,int)::gregoryEdgeVerts[4 * v36];
          for (i = 3; i != -1; --i)
          {
            v41 = *v39++;
            *(v19 + 4 * v23[i]) = *(v38 + 4 * v41);
          }
        }
      }

      ++v22;
      v23 += 4;
      if (v22 == 4)
      {
        goto LABEL_36;
      }
    }
  }

  v57 = 0;
  v58 = __key;
  v59 = v19;
  do
  {
    for (j = 0; j != 5; ++j)
    {
      if (*(v59 + 4 * j) == -1)
      {
        *(v59 + 4 * j) = *(v10 + 28) + v16;
        ++*(v10 + 28);
        v61 = 1;
      }

      else
      {
        v61 = 0;
      }

      *(v58 + j) = v61;
    }

    ++v57;
    v58 = (v58 + 5);
    v59 += 20;
  }

  while (v57 != 4);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::ProtoBasis::ProtoBasis(v86);
  v63 = 0;
  v64 = __key + 2;
  v65 = 7040;
  v66 = 4224;
  v67 = 5632;
  do
  {
    if (*(v64 - 2) == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v86[v63], *v10, v62);
      v68 = *(v10 + 8);
      if (v68)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(*&v86[v65], v68, v62);
      }
    }

    if (*(v64 - 1) == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v86[v63 + 1408], *v10, v62);
      v69 = *(v10 + 8);
      if (v69)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(*&v86[v65], v69, v62);
      }
    }

    if (*v64 == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v86[v63 + 2816], *v10, v62);
      v70 = *(v10 + 8);
      if (v70)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(*&v86[v65], v70, v62);
      }
    }

    if (v64[1] == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v86[v66], *v10, v62);
      v71 = *(v10 + 8);
      if (v71)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(*&v86[v65], v71, v62);
      }
    }

    if (v64[2] == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v86[v67], *v10, v62);
      v72 = *(v10 + 8);
      if (v72)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(*&v86[v65], v72, v62);
      }
    }

    v65 += 4;
    v63 += 352;
    v66 += 352;
    v67 += 352;
    v64 += 5;
  }

  while (v63 != 1408);
  v73 = &v88;
  v74 = -1408;
  do
  {
    operator delete(v73[42]);
    *v73 = (v73 + 2);
    *(v73 + 3) = 40;
    v73 -= 44;
    v74 += 352;
  }

  while (v74);
  v75 = &v87;
  v76 = -1408;
  do
  {
    operator delete(v75[42]);
    *v75 = (v75 + 2);
    *(v75 + 3) = 40;
    v75 -= 44;
    v76 += 352;
  }

  while (v76);
  for (k = 0; k != -1408; k -= 352)
  {
    v78 = &v86[k];
    operator delete(*&v86[k + 4216]);
    *(v78 + 485) = v78 + 3896;
    *(v78 + 973) = 40;
  }

  v79 = 1408;
  do
  {
    v80 = &v86[v79];
    operator delete(*&v86[v79 + 1400]);
    *(v80 + 133) = v80 + 1080;
    *(v80 + 269) = 40;
    v79 -= 352;
  }

  while (v79);
  v81 = 1408;
  do
  {
    operator delete(*(&v84 + v81));
    *&v86[v81 - 344] = &v86[v81 - 328];
    *&v86[v81 - 332] = 40;
    v81 -= 352;
  }

  while (v81);
  ++*(v10 + 32);
  return v19;
}

void OpenSubdiv::v3_1_1::Vtr::internal::SparseSelector::selectFace(void *this, int a2)
{
  if ((this[1] & 1) == 0)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::initializeSparseSelectionTags(*this);
    *(this + 8) = 1;
  }

  v4 = *(*this + 408);
  if ((*(v4 + a2) & 1) == 0)
  {
    *(v4 + a2) |= 1u;
    v5 = *(*this + 8);
    v6 = v5[3];
    v7 = *(v6 + 8 * a2);
    if (v7 >= 1)
    {
      v8 = *(v6 + 8 * a2 + 4);
      v9 = (v5[9] + 4 * v8);
      v10 = (v5[6] + 4 * v8);
      do
      {
        v11 = *v9++;
        *(*(*this + 432) + v11) |= 1u;
        v12 = *v10++;
        *(*(*this + 456) + v12) |= 1u;
        --v7;
      }

      while (v7);
    }
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::~QuadRefinement(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::~Refinement(this);

  JUMPOUT(0x1E6906520);
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::allocateParentChildIndices(std::vector<int> *this)
{
  end = this->__end_;
  v3 = *(end + 7) - *(end + 6);
  v4 = *(end + 10) - *(end + 9);
  v5 = *(end + 16) - *(end + 15);
  v6 = *end;
  v7 = end[1];
  v8 = end[2];
  __x = 0;
  v9 = *(end + 3);
  v10 = (*(end + 4) - v9) >> 2;
  this[3].__end_cap_.__value_ = v9;
  LODWORD(this[4].__begin_) = v10;
  v11 = *(end + 3);
  v12 = (*(end + 4) - v11) >> 2;
  this[4].__end_ = v11;
  LODWORD(this[4].__end_cap_.__value_) = v12;
  std::vector<unsigned int>::resize(this + 5, (v3 >> 2), &__x);
  std::vector<unsigned int>::resize(this + 6, (v4 >> 2), &__x);
  std::vector<unsigned int>::resize(this + 8, (v5 >> 2), &__x);
  std::vector<unsigned int>::resize(this + 7, v6, &__x);
  std::vector<unsigned int>::resize(this + 9, v7, &__x);
  std::vector<unsigned int>::resize(this + 10, v8, &__x);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceVertexRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  v2 = *(this + 2);
  if (v2[1].__end_ == v2[1].__begin_)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceVertexCountsAndOffsets(this);
    v2 = *(this + 2);
  }

  std::vector<unsigned int>::resize(v2 + 2, 4 * SLODWORD(v2->__begin_));
  v3 = *(this + 1);
  result = *v3;
  if (result >= 1)
  {
    v5 = 0;
    v6 = v3[3];
    v7 = v3[6];
    v8 = v3[9];
    v9 = *(this + 11);
    v10 = *(this + 15);
    do
    {
      v11 = *(v6 + 8 * v5);
      if (v11 >= 1)
      {
        v12 = 0;
        v13 = (8 * v5) | 4;
        v14 = *(v6 + v13);
        v15 = v7 + 4 * v14;
        v16 = v8 + 4 * v14;
        v17 = v10 + 4 * *(v9 + v13);
        do
        {
          v18 = *(v17 + 4 * v12);
          if (v18 != -1)
          {
            if (v12)
            {
              v19 = v12;
            }

            else
            {
              v19 = v11;
            }

            v20 = *(*(this + 21) + 4 * v5);
            v21 = v19 - 1;
            v22 = *(this + 27);
            v23 = *(v22 + 4 * *(v16 + 4 * (v19 - 1)));
            v24 = *(*(this + 30) + 4 * *(v15 + 4 * v12));
            v25 = *(v22 + 4 * *(v16 + 4 * v12));
            v26 = (*(*(this + 2) + 48) + 4 * *(*(*(this + 2) + 24) + 4 * ((2 * v18) | 1)));
            if (v11 == 4)
            {
              v27 = v19 - 2;
              if (!v21)
              {
                v27 = 3;
              }

              v26[v12] = v24;
              if (v27)
              {
                v28 = v27 - 1;
              }

              else
              {
                v28 = 3;
              }

              v26[v28] = v25;
              v26[v27] = v20;
              v29 = &v26[v21];
            }

            else
            {
              *v26 = v24;
              v26[1] = v25;
              v29 = v26 + 3;
              v26[2] = v20;
            }

            *v29 = v23;
          }

          ++v12;
        }

        while (v11 != v12);
        result = *v3;
      }

      ++v5;
    }

    while (v5 < result);
  }

  return result;
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceVertexCountsAndOffsets(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  std::vector<unsigned int>::resize((*(this + 2) + 24), 2 * **(this + 2));
  v2 = *(this + 2);
  if (*v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (*(v2 + 3) + 4);
    do
    {
      *(v5 - 1) = 4;
      *v5 = v3;
      ++v4;
      v3 += 4;
      v5 += 2;
    }

    while (v4 < *v2);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceEdgeRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  v2 = *(this + 2);
  if (v2[1].__end_ == v2[1].__begin_)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceVertexCountsAndOffsets(this);
    v2 = *(this + 2);
  }

  std::vector<unsigned int>::resize(v2 + 3, 4 * SLODWORD(v2->__begin_));
  v3 = *(this + 1);
  v4 = *v3;
  if (*v3 >= 1)
  {
    v5 = 0;
    v6 = *(v3 + 24);
    v7 = *(v3 + 48);
    v8 = *(v3 + 72);
    v9 = *(this + 11);
    v10 = *(this + 15);
    v11 = *(this + 13);
    v12 = *(this + 18);
    do
    {
      v13 = *(v6 + 8 * v5);
      if (v13 >= 1)
      {
        v14 = 0;
        v15 = (8 * v5) | 4;
        v16 = *(v6 + v15);
        v17 = v7 + 4 * v16;
        v18 = v8 + 4 * v16;
        v19 = v10 + 4 * *(v9 + v15);
        v20 = v12 + 4 * *(v11 + v15);
        do
        {
          v21 = *(v19 + 4 * v14);
          if (v21 != -1)
          {
            if (v14)
            {
              v22 = v14;
            }

            else
            {
              v22 = v13;
            }

            v23 = v22 - 1;
            v24 = *(v18 + 4 * (v22 - 1));
            v25 = *(v3 + 120);
            v26 = (v25 + 8 * v24);
            v27 = *(v18 + 4 * v14);
            v28 = *(v17 + 4 * v14);
            v29 = (v25 + 8 * v27);
            v31 = *v26 == v26[1] || *v26 != v28;
            v33 = *v29 != v29[1] && *v29 != v28;
            v34 = *(this + 24);
            v35 = *(v34 + 8 * v24 + 4 * v31);
            v36 = *(v34 + 8 * v27 + 4 * v33);
            v37 = *(v20 + 4 * v23);
            v38 = *(v20 + 4 * v14);
            v39 = (*(*(this + 2) + 72) + 4 * *(*(*(this + 2) + 24) + 4 * ((2 * v21) | 1)));
            if (v13 == 4)
            {
              v40 = v22 - 2;
              if (!v23)
              {
                v40 = 3;
              }

              v39[v14] = v36;
              if (v40)
              {
                v41 = v40 - 1;
              }

              else
              {
                v41 = 3;
              }

              v39[v41] = v38;
              v39[v40] = v37;
              v42 = &v39[v23];
            }

            else
            {
              *v39 = v36;
              v39[1] = v38;
              v42 = v39 + 3;
              v39[2] = v37;
            }

            *v42 = v35;
          }

          ++v14;
        }

        while (v13 != v14);
        v4 = *v3;
      }

      ++v5;
    }

    while (v5 < v4);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeVertexRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  std::vector<unsigned int>::resize((*(this + 2) + 120), 2 * *(*(this + 2) + 4));
  v2 = *(this + 1);
  v3 = *v2;
  if (*v2 >= 1)
  {
    v4 = 0;
    v5 = *(v2 + 24);
    v6 = *(v2 + 72);
    v7 = *(this + 13);
    v8 = *(this + 18);
    do
    {
      v9 = *(v5 + 8 * v4);
      if (v9 >= 1)
      {
        v10 = (8 * v4) | 4;
        v11 = (v6 + 4 * *(v5 + v10));
        v12 = (v8 + 4 * *(v7 + v10));
        do
        {
          v14 = *v12++;
          v13 = v14;
          if (v14 != -1)
          {
            v15 = (*(*(this + 2) + 120) + 8 * v13);
            *v15 = *(*(this + 21) + 4 * v4);
            v15[1] = *(*(this + 27) + 4 * *v11);
          }

          ++v11;
          --v9;
        }

        while (v9);
        v3 = *v2;
      }

      ++v4;
    }

    while (v4 < v3);
  }

  if (*(v2 + 4) >= 1)
  {
    v16 = 0;
    v17 = *(v2 + 120);
    v18 = *(this + 24);
    do
    {
      v19 = 0;
      v20 = 1;
      do
      {
        v21 = v20;
        v22 = *(v18 + 8 * v16 + 4 * v19);
        if (v22 != -1)
        {
          v23 = (*(*(this + 2) + 120) + 8 * v22);
          *v23 = *(*(this + 27) + 4 * v16);
          v23[1] = *(*(this + 30) + 4 * *(v17 + 8 * v16 + 4 * v19));
        }

        v20 = 0;
        v19 = 1;
      }

      while ((v21 & 1) != 0);
      ++v16;
    }

    while (v16 < *(v2 + 4));
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeFaceRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  v2 = 2 * (((*(*(this + 1) + 176) - *(*(this + 1) + 168)) >> 2) + ((*(*(this + 1) + 56) - *(*(this + 1) + 48)) >> 2));
  std::vector<unsigned int>::resize((*(this + 2) + 144), 2 * *(*(this + 2) + 4));
  std::vector<unsigned int>::resize((*(this + 2) + 168), v2);
  std::vector<unsigned short>::resize((*(this + 2) + 192), v2);
  v4 = *(this + 1);
  v3 = *(this + 2);
  *(v3 + 16) = *(v4 + 16);
  v5 = *v4;
  if (*v4 >= 1)
  {
    v6 = 0;
    v7 = *(this + 11);
    v8 = *(this + 15);
    v9 = *(this + 13);
    v10 = *(this + 18);
    do
    {
      v11 = *(v7 + 8 * v6);
      if (v11 >= 1)
      {
        v12 = 0;
        v13 = (8 * v6) | 4;
        v14 = v8 + 4 * *(v7 + v13);
        v15 = v10 + 4 * *(v9 + v13);
        do
        {
          v16 = *(v15 + 4 * v12);
          if (v16 == -1)
          {
            ++v12;
          }

          else
          {
            v17 = *(v3 + 144);
            v18 = (v17 + 8 * v16);
            *v18 = 2;
            if (v16)
            {
              v19 = *(v18 - 1) + *(v18 - 2);
            }

            else
            {
              v19 = 0;
            }

            v20 = 2 * v16;
            v18[1] = v19;
            v21 = *(v3 + 16);
            if (v21 <= 2)
            {
              v21 = 2;
            }

            *(v3 + 16) = v21;
            v22 = *(v17 + 4 * (v20 | 1));
            v23 = (*(v3 + 168) + 4 * v22);
            v24 = (*(v3 + 192) + 2 * v22);
            v25 = v12 + 1;
            if (v12 + 1 >= v11)
            {
              v26 = 0;
            }

            else
            {
              v26 = v12 + 1;
            }

            v27 = *(v14 + 4 * v12);
            if (v27 == -1)
            {
              v29 = 0;
            }

            else
            {
              *v23 = v27;
              if (v11 == 4)
              {
                v28 = v26;
              }

              else
              {
                v28 = 1;
              }

              *v24 = v28;
              v29 = 1;
            }

            v30 = *(v14 + 4 * v26);
            if (v30 != -1)
            {
              v23[v29] = v30;
              v31 = v26 & 3 ^ 2;
              if (v11 != 4)
              {
                v31 = 2;
              }

              v24[v29] = v31;
              LODWORD(v29) = v29 + 1;
            }

            *v18 = v29;
            v12 = v25;
          }
        }

        while (v12 != v11);
        v5 = *v4;
      }

      ++v6;
    }

    while (v6 < v5);
  }

  v32 = *(v4 + 4);
  if (v32 >= 1)
  {
    v33 = 0;
    v34 = *(this + 24);
    do
    {
      v35 = (v34 + 8 * v33);
      if (*v35 != -1 || v35[1] != -1)
      {
        v36 = 0;
        v37 = *(*(v4 + 144) + 8 * v33);
        v38 = *(*(v4 + 144) + 8 * v33 + 4);
        v39 = *(v4 + 168) + 4 * v38;
        v40 = *(v4 + 192) + 2 * v38;
        v41 = (*(v4 + 120) + 8 * v33);
        v42 = 1;
        do
        {
          v43 = v42;
          v44 = v35[v36];
          if (v44 != -1)
          {
            v45 = *(v3 + 144);
            v46 = (v45 + 8 * v44);
            *v46 = v37;
            if (v44)
            {
              v47 = *(v46 - 1) + *(v46 - 2);
            }

            else
            {
              v47 = 0;
            }

            v46[1] = v47;
            v48 = *(v3 + 16);
            if (v48 <= v37)
            {
              v48 = v37;
            }

            *(v3 + 16) = v48;
            if (v37 < 1)
            {
              v49 = 0;
            }

            else
            {
              v49 = 0;
              v50 = *(v45 + 4 * ((2 * v44) | 1));
              v51 = *(v3 + 168) + 4 * v50;
              v52 = *(v3 + 192) + 2 * v50;
              v53 = *(v4 + 24);
              v54 = *(this + 11);
              v55 = *(this + 15);
              v56 = v39;
              v57 = v40;
              v58 = v37;
              do
              {
                v60 = *v56++;
                v59 = v60;
                LODWORD(v60) = *v57++;
                v61 = v60;
                v62 = (2 * v59) | 1;
                v63 = v36;
                if (*v41 != v41[1])
                {
                  v63 = *(*(v4 + 48) + 4 * *(v53 + 4 * v62) + 4 * v61) != v41[v36];
                }

                v64 = 2 * v59;
                v65 = v55 + 4 * *(v54 + 4 * v62);
                if (v63 + v61 == *(v54 + 4 * v64))
                {
                  v66 = 0;
                }

                else
                {
                  v66 = v63 + v61;
                }

                v67 = *(v65 + 4 * v66);
                if (v67 != -1)
                {
                  v68 = *(v53 + 4 * v64);
                  *(v51 + 4 * v49) = v67;
                  if (v63)
                  {
                    v69 = 3;
                  }

                  else
                  {
                    v69 = 0;
                  }

                  if (v68 != 4)
                  {
                    LOWORD(v61) = v69;
                  }

                  *(v52 + 2 * v49++) = v61;
                }

                --v58;
              }

              while (v58);
            }

            *v46 = v49;
          }

          v42 = 0;
          v36 = 1;
        }

        while ((v43 & 1) != 0);
        v32 = *(v4 + 4);
      }

      ++v33;
    }

    while (v33 < v32);
  }

  v70 = (*(v3 + 144) + 4 * (2 * *(v3 + 4) - 2));
  v71 = *v70;
  v72 = v70[1];
  std::vector<unsigned int>::resize((v3 + 168), v72 + v71);
  v73 = (*(this + 2) + 192);

  std::vector<unsigned short>::resize(v73, v72 + v71);
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFaceRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  v2 = *(this + 1);
  v3 = (((v2[22] - v2[21]) >> 1) & 0xFFFFFFFE) + ((v2[7] - v2[6]) >> 2) + ((v2[37] - v2[36]) >> 2);
  std::vector<unsigned int>::resize((*(this + 2) + 264), 2 * *(*(this + 2) + 8));
  std::vector<unsigned int>::resize((*(this + 2) + 288), v3);
  std::vector<unsigned short>::resize((*(this + 2) + 312), v3);
  if (*(this + 21))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentFaces(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentEdges(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentVertices(this);
  }

  else
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentFaces(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentEdges(this);
  }

  v4 = *(this + 2);
  v5 = (*(v4 + 264) + 4 * (2 * *(v4 + 8) - 2));
  v6 = *v5;
  v7 = v5[1];
  std::vector<unsigned int>::resize((v4 + 288), v7 + v6);
  v8 = (*(this + 2) + 312);

  std::vector<unsigned short>::resize(v8, v7 + v6);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentVertices(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[30];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 288);
        v7 = (*(v1 + 264) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 312);
        v11 = this[2];
        v12 = (v11[33] + 8 * v5);
        *v12 = v8;
        if (v5)
        {
          v13 = *(v12 - 1) + *(v12 - 2);
        }

        else
        {
          v13 = 0;
        }

        v12[1] = v13;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = (v6 + 4 * v9);
          v16 = (v10 + 2 * v9);
          v17 = v11[36] + 4 * v13;
          v18 = v11[39] + 2 * v13;
          v19 = this[11];
          v20 = this[15];
          do
          {
            v22 = *v15++;
            v21 = v22;
            LODWORD(v22) = *v16++;
            v23 = v22;
            v24 = *(v20 + 4 * *(v19 + 8 * v21 + 4) + 4 * v22);
            if (v24 != -1)
            {
              v25 = *(v19 + 8 * v21);
              *(v17 + 4 * v14) = v24;
              if (v25 != 4)
              {
                v23 = 0;
              }

              *(v18 + 2 * v14++) = v23;
            }

            --v8;
          }

          while (v8);
        }

        *v12 = v14;
        v2 = *(v1 + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentFaces(void *this)
{
  v1 = this[1];
  v2 = *v1;
  if (*v1 >= 1)
  {
    v3 = 0;
    v4 = this[21];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = (this[11] + 8 * v3);
        v7 = this[15];
        v8 = *v6;
        v9 = v6[1];
        v10 = this[2];
        v11 = (v10[33] + 8 * v5);
        *v11 = v8;
        if (v5)
        {
          v12 = *(v11 - 1) + *(v11 - 2);
        }

        else
        {
          v12 = 0;
        }

        v11[1] = v12;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v13 = 0;
          v14 = 0;
          v15 = v7 + 4 * v9;
          v16 = v10[36] + 4 * v12;
          v17 = v10[39] + 2 * v12;
          do
          {
            v18 = *(v15 + 4 * v13);
            if (v18 != -1)
            {
              *(v16 + 4 * v14) = v18;
              v19 = v13 & 3 ^ 2;
              if (v8 != 4)
              {
                v19 = 2;
              }

              *(v17 + 2 * v14++) = v19;
            }

            ++v13;
          }

          while (v8 != v13);
        }

        *v11 = v14;
        v2 = *v1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentEdges(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[27];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 168);
        v7 = (*(v1 + 144) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 192);
        v11 = this[2];
        v12 = (v11[33] + 8 * v5);
        *v12 = 2 * v8;
        if (v5)
        {
          v13 = *(v12 - 1) + *(v12 - 2);
        }

        else
        {
          v13 = 0;
        }

        v12[1] = v13;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = (v6 + 4 * v9);
          v16 = (v10 + 2 * v9);
          v17 = v11[36] + 4 * v13;
          v18 = v11[39] + 2 * v13;
          v19 = this[11];
          v20 = this[15];
          do
          {
            v22 = *v15++;
            v21 = v22;
            LODWORD(v22) = *v16++;
            v23 = v22;
            v24 = v20 + 4 * *(v19 + 8 * v21 + 4);
            v25 = *(v19 + 8 * v21);
            if (v22 + 1 == v25)
            {
              v26 = 0;
            }

            else
            {
              v26 = v23 + 1;
            }

            v27 = *(v24 + 4 * v26);
            if (v27 != -1)
            {
              *(v17 + 4 * v14) = v27;
              if (v25 == 4)
              {
                v28 = v23;
              }

              else
              {
                v28 = 3;
              }

              *(v18 + 2 * v14++) = v28;
            }

            v29 = *(v24 + 4 * v23);
            if (v29 != -1)
            {
              *(v17 + 4 * v14) = v29;
              if (v25 == 4)
              {
                v30 = v26;
              }

              else
              {
                v30 = 1;
              }

              *(v18 + 2 * v14++) = v30;
            }

            --v8;
          }

          while (v8);
        }

        *v12 = v14;
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgeRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  v2 = *(this + 1);
  v3 = ((*(v2 + 56) - *(v2 + 48)) >> 2) + 2 * *(v2 + 4) + ((*(v2 + 176) - *(v2 + 168)) >> 2) + ((*(v2 + 368) - *(v2 + 360)) >> 2);
  std::vector<unsigned int>::resize((*(this + 2) + 336), 2 * *(*(this + 2) + 8));
  std::vector<unsigned int>::resize((*(this + 2) + 360), v3);
  std::vector<unsigned short>::resize((*(this + 2) + 384), v3);
  if (*(this + 21))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentFaces(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentEdges(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentVertices(this);
  }

  else
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentFaces(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentEdges(this);
  }

  v4 = *(this + 2);
  v5 = (*(v4 + 336) + 4 * (2 * *(v4 + 8) - 2));
  v6 = *v5;
  v7 = v5[1];
  std::vector<unsigned int>::resize((v4 + 360), v7 + v6);
  v8 = (*(this + 2) + 384);

  std::vector<unsigned short>::resize(v8, v7 + v6);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentVertices(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[30];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 360);
        v7 = (*(v1 + 336) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 384);
        v11 = this[2];
        v12 = *(v11 + 336);
        v13 = (v12 + 8 * v5);
        *v13 = v8;
        if (v5)
        {
          v14 = *(v13 - 1) + *(v13 - 2);
        }

        else
        {
          v14 = 0;
        }

        v13[1] = v14;
        v15 = *(v11 + 20);
        if (v15 <= v8)
        {
          v15 = v8;
        }

        *(v11 + 20) = v15;
        if (v8 < 1)
        {
          v16 = 0;
        }

        else
        {
          v16 = 0;
          v17 = (v6 + 4 * v9);
          v18 = (v10 + 2 * v9);
          v19 = *(v12 + 4 * ((2 * v5) | 1));
          v20 = *(v11 + 360) + 4 * v19;
          v21 = *(v11 + 384) + 2 * v19;
          v22 = this[24];
          do
          {
            v24 = *v17++;
            v23 = v24;
            LODWORD(v24) = *v18++;
            v25 = *(v22 + 8 * v23 + 4 * v24);
            if (v25 != -1)
            {
              *(v20 + 4 * v16) = v25;
              *(v21 + 2 * v16++) = 1;
            }

            --v8;
          }

          while (v8);
        }

        *v13 = v16;
        v2 = *(v1 + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentFaces(void *this)
{
  v1 = this[1];
  v2 = *v1;
  if (*v1 >= 1)
  {
    v3 = 0;
    v4 = this[21];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(*(v1 + 24) + 8 * v3);
        v7 = *(this[13] + 8 * v3 + 4);
        v8 = this[18];
        v9 = this[2];
        v10 = *(v9 + 336);
        v11 = (v10 + 8 * v5);
        *v11 = v6;
        if (v5)
        {
          v12 = *(v11 - 1) + *(v11 - 2);
        }

        else
        {
          v12 = 0;
        }

        v11[1] = v12;
        v13 = *(v9 + 20);
        if (v13 <= v6)
        {
          v13 = v6;
        }

        *(v9 + 20) = v13;
        if (v6 < 1)
        {
          v15 = 0;
        }

        else
        {
          v14 = 0;
          v15 = 0;
          v16 = *(v10 + 4 * ((2 * v5) | 1));
          v17 = *(v9 + 360) + 4 * v16;
          v18 = *(v9 + 384) + 2 * v16;
          v19 = v8 + 4 * v7 - 4;
          do
          {
            if (v14)
            {
              v20 = v14;
            }

            else
            {
              v20 = v6;
            }

            v21 = *(v19 + 4 * v20);
            if (v21 != -1)
            {
              *(v17 + 4 * v15) = v21;
              *(v18 + 2 * v15++) = 0;
            }

            ++v14;
          }

          while (v6 != v14);
        }

        *v11 = v15;
        v2 = *v1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentEdges(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[27];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 168);
        v7 = *(*(v1 + 144) + 8 * v3);
        v8 = *(*(v1 + 144) + 8 * v3 + 4);
        v9 = *(v1 + 192);
        v10 = *(v1 + 120);
        v11 = this[24];
        v12 = this[2];
        v13 = v7 + 2;
        v14 = *(v12 + 336);
        v15 = (v14 + 8 * v5);
        *v15 = v7 + 2;
        if (v5)
        {
          v16 = *(v15 - 1) + *(v15 - 2);
        }

        else
        {
          v16 = 0;
        }

        v17 = (v11 + 8 * v3);
        v18 = 2 * v5;
        v15[1] = v16;
        if (*(v12 + 20) > v13)
        {
          v13 = *(v12 + 20);
        }

        *(v12 + 20) = v13;
        v19 = *(v14 + 4 * (v18 | 1));
        v20 = (*(v12 + 360) + 4 * v19);
        v21 = (*(v12 + 384) + 2 * v19);
        if (*v17 == -1)
        {
          v22 = 0;
        }

        else
        {
          *v20 = *v17;
          *v21 = 0;
          v22 = 1;
        }

        v23 = v17[1];
        if (v23 != -1)
        {
          v20[v22] = v23;
          v21[v22++] = 0;
        }

        if (v7 >= 1)
        {
          v24 = 0;
          v25 = v6 + 4 * v8;
          v26 = v9 + 2 * v8;
          v27 = this[13];
          v28 = this[18];
          v29 = (v10 + 8 * v3);
          do
          {
            v30 = *(v26 + 2 * v24);
            v31 = (2 * *(v25 + 4 * v24)) | 1;
            v32 = *(v28 + 4 * *(v27 + 4 * v31) + 4 * v30);
            if (v32 != -1)
            {
              v20[v22] = v32;
              v21[v22++] = 1;
              if (!v24 && v22 == 3)
              {
                if (*v29 == v29[1])
                {
                  v33 = v20[1];
                  v34 = v21[1];
                }

                else
                {
                  v35 = *(*(v1 + 48) + 4 * *(*(v1 + 24) + 4 * v31) + 4 * v30);
                  v33 = v20[1];
                  v34 = v21[1];
                  if (v35 == *v29)
                  {
                    v36 = *v20;
                    *v20 = v33;
                    v37 = *v21;
                    *v21 = v34;
                    v34 = v37;
                    v33 = v36;
                  }
                }

                v20[1] = v20[2];
                v20[2] = v33;
                v21[1] = v21[2];
                v21[2] = v34;
                v22 = 3;
              }
            }

            ++v24;
          }

          while (v7 != v24);
        }

        *v15 = v22;
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::markSparseFaceChildren(void *this)
{
  v1 = this[1];
  if (*v1 >= 1)
  {
    v2 = 0;
    while (1)
    {
      v3 = (2 * (v2 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
      v4 = (this[15] + 4 * *(this[11] + 4 * v3));
      v5 = (this[18] + 4 * *(this[13] + 4 * v3));
      v6 = *(v1 + 3);
      v7 = *(v6 + 8 * v2);
      v8 = this[51];
      if (*(v8 + v2))
      {
        break;
      }

      if (v7 >= 1)
      {
        v9 = 0;
        v10 = *(v1 + 6) + 4 * *(v6 + 4 * v3);
        v11 = this[57];
        v12 = 1;
        do
        {
          while ((*(v11 + *(v10 + 4 * v9)) & 1) != 0)
          {
            v12 = 0;
            v4[v9] = 1;
            v5[v9] = 1;
            if (v9)
            {
              v13 = v9;
            }

            else
            {
              v13 = v7;
            }

            v5[v13 - 1] = 1;
            if (v7 - 1 == v9++)
            {
              goto LABEL_22;
            }
          }

          ++v9;
        }

        while (v7 != v9);
        if (v12)
        {
          goto LABEL_19;
        }

LABEL_22:
        *(this[21] + 4 * v2) = 1;
        v16 = (*(v1 + 9) + 4 * *(v6 + 4 * v3));
        v17 = *(v6 + 8 * v2);
        if (v17 == 3)
        {
          v23 = *(this[54] + v16[1]) & 0xE | (*(this[54] + *v16) >> 1) & 0xF | (2 * *(this[54] + v16[2])) & 0xC;
          v22 = *(v8 + v2);
        }

        else
        {
          if (v17 != 4)
          {
            v24 = *(v8 + v2) & 0xE1;
            *(v8 + v2) &= 0xE1u;
            if (v17 >= 1)
            {
              do
              {
                v25 = *v16++;
                v24 |= *(this[54] + v25) & 0x1E;
                *(v8 + v2) = v24;
                --v17;
              }

              while (v17);
            }

            goto LABEL_19;
          }

          v18 = this[54];
          v19 = *(v18 + *v16);
          v20 = *(v18 + v16[1]) & 0xE;
          v21 = (2 * *(v18 + v16[2])) & 0xC;
          LOBYTE(v18) = 4 * *(v18 + v16[3]);
          v22 = *(v8 + v2);
          v23 = v20 | (v19 >> 1) & 0xF | v21 | v18 & 8;
        }

        v15 = v22 & 0xE1 | (2 * (v23 & 0xF));
        goto LABEL_18;
      }

LABEL_19:
      ++v2;
      v1 = this[1];
      if (v2 >= *v1)
      {
        return this;
      }
    }

    if (v7 >= 1)
    {
      do
      {
        *v4++ = 2;
        *v5++ = 2;
        --v7;
      }

      while (v7);
    }

    *(this[21] + 4 * v2) = 2;
    v15 = *(v8 + v2) & 0xE1;
LABEL_18:
    *(v8 + v2) = v15;
    goto LABEL_19;
  }

  return this;
}

void OpenSubdiv::v3_1_1::Far::TopologyRefiner::TopologyRefiner(uint64_t a1, int a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = *(a1 + 8) & 0xC0 | 1;
  *(a1 + 12) &= 0xC0u;
  *(a1 + 16) = *(a1 + 16) & 0xF000 | 0xF0;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 96) = 0u;
  std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level *>::reserve((a1 + 40), 0xAuLL);
  operator new();
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level *>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerVisualizer *>>(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
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

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerVisualizer *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::vector<OpenSubdiv::v3_1_1::Far::TopologyLevel>::reserve(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::TopologyLevel>>(a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void OpenSubdiv::v3_1_1::Far::TopologyRefiner::assembleFarLevels(OpenSubdiv::v3_1_1::Far::TopologyRefiner *this)
{
  v1 = (*(this + 6) - *(this + 5)) >> 3;
  v2 = *(this + 11);
  v3 = *(this + 12);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3);
  v5 = v1 - v4;
  if (v1 <= v4)
  {
    if (v1 >= v4)
    {
      goto LABEL_14;
    }

    v9 = &v2[3 * v1];
  }

  else
  {
    v6 = *(this + 13);
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v3) >> 3) < v5)
    {
      if (v1 <= 0xAAAAAAAAAAAAAAALL)
      {
        v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v2) >> 3);
        if (2 * v7 > v1)
        {
          v1 = 2 * v7;
        }

        if (v7 >= 0x555555555555555)
        {
          v8 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v8 = v1;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::TopologyLevel>>(v8);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = (v3 + 24 * (24 * v5 / 0x18));
  }

  *(this + 12) = v9;
LABEL_14:
  v2[1] = 0;
  v10 = *(this + 5);
  *v2 = *v10;
  v2[2] = 0;
  v11 = *(this + 8);
  v12 = *(this + 9) - v11;
  v13 = v12 >> 3;
  if ((v12 >> 3))
  {
    v2[2] = *v11;
    if (v13 >= 2)
    {
      v14 = ((v12 >> 3) & 0x7FFFFFFF) - 1;
      v15 = v11 + 1;
      v16 = v10 + 1;
      v17 = v2 + 5;
      do
      {
        *(v17 - 1) = *(v15 - 1);
        v18 = *v16++;
        *(v17 - 2) = v18;
        v19 = *v15++;
        *v17 = v19;
        v17 += 3;
        --v14;
      }

      while (v14);
    }

    v20 = &v2[3 * v13];
    v20[1] = *(v11 + (((v12 << 29) - 0x100000000) >> 29));
    *v20 = *(v10 + ((v12 << 29) >> 29));
    v20[2] = 0;
  }
}

void OpenSubdiv::v3_1_1::Far::TopologyRefiner::~TopologyRefiner(OpenSubdiv::v3_1_1::Far::TopologyRefiner *this)
{
  v3 = *(this + 5);
  v2 = *(this + 6);
  if (((v2 - v3) >> 3) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::Level::~Level(v5);
        MEMORY[0x1E6906520]();
        v3 = *(this + 5);
        v2 = *(this + 6);
      }

      ++v4;
    }

    while (v4 < ((v2 - v3) >> 3));
  }

  v6 = *(this + 8);
  v7 = *(this + 9);
  if (((v7 - v6) >> 3) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = v6[v8];
      if (v9)
      {
        (*(*v9 + 8))(v6[v8]);
        v6 = *(this + 8);
        v7 = *(this + 9);
      }

      ++v8;
    }

    while (v8 < ((v7 - v6) >> 3));
  }

  v10 = *(this + 11);
  if (v10)
  {
    *(this + 12) = v10;
    operator delete(v10);
    v6 = *(this + 8);
  }

  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v11 = *(this + 5);
  if (v11)
  {
    *(this + 6) = v11;
    operator delete(v11);
  }
}

int32x2_t OpenSubdiv::v3_1_1::Far::TopologyRefiner::initializeInventory(OpenSubdiv::v3_1_1::Far::TopologyRefiner *this)
{
  v1 = *(this + 5);
  if (*(this + 6) == v1)
  {
    v4 = 0;
    LODWORD(v5) = 0;
    v6 = 0;
    v3 = 0;
  }

  else
  {
    v2 = *v1;
    v3 = *(*v1 + 1);
    v4 = **v1;
    v5 = (*(v2 + 7) - *(v2 + 6)) >> 2;
    v6 = v2[5];
  }

  result = vrev64_s32(v3);
  *(this + 20) = result;
  *(this + 7) = v4;
  *(this + 8) = v5;
  *(this + 9) = v6;
  return result;
}

void OpenSubdiv::v3_1_1::Far::TopologyRefiner::RefineAdaptive(int *a1, unint64_t a2)
{
  v2 = a1 + 10;
  if (!*(**(a1 + 5) + 8))
  {
    v4 = "Failure in TopologyRefiner::RefineAdaptive() -- base level is uninitialized.";
    goto LABEL_9;
  }

  if (*(a1 + 9) != *(a1 + 8))
  {
    v4 = "Failure in TopologyRefiner::RefineAdaptive() -- previous refinements already applied.";
LABEL_9:

    OpenSubdiv::v3_1_1::Far::Error(4, v4);
    return;
  }

  if (*a1 != 1)
  {
    v4 = "Failure in TopologyRefiner::RefineAdaptive() -- currently only supported for Catmark scheme.";
    goto LABEL_9;
  }

  v5 = a2;
  *(a1 + 8) &= ~1u;
  *(a1 + 8) = a2;
  v6 = a2 >> 4;
  v7 = a2 & 0xF;
  v8 = 15;
  if ((a2 & 0x100) != 0)
  {
    OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(a1);
    v9 = DWORD1(xmmword_1ECF1CE78) == 4;
    if (DWORD1(xmmword_1ECF1CE78) == 4)
    {
      v8 = 11;
    }

    else
    {
      v8 = 15;
    }
  }

  else
  {
    v9 = 0;
  }

  if (v9 | ((v5 & 0x200) >> 9))
  {
    v10 = 0;
  }

  else
  {
    v10 = 16;
  }

  if ((((v6 & 0x20 | v5 & 0x400 | v8 | v10) ^ 0x3E0) & 0x400) != 0)
  {
    v11 = *(**v2 + 456);
    v12 = *(**v2 + 464) - v11;
    if ((v12 >> 3) >= 1)
    {
      v13 = 0;
      v14 = (v12 >> 3) & 0x7FFFFFFF;
      do
      {
        v15 = *v11++;
        v13 |= *(v15 + 12) ^ 1;
        --v14;
      }

      while (v14);
    }
  }

  OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(a1);
  if (v7)
  {
    operator new();
  }

  *(a1 + 8) = ((a1[18] - a1[16]) >> 1) & 0x3C | a1[2] & 0xC3;
  OpenSubdiv::v3_1_1::Far::TopologyRefiner::assembleFarLevels(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::TopologyLevel>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory::GetPatchPoints(uint64_t a1, void *a2, int a3, uint64_t a4, int a5, unsigned int a6)
{
  v25 = a3;
  if ((a6 & 0x80000000) != 0)
  {
    v12 = a2[3];
    v11 = (a2[6] + 4 * *(v12 + 8 * a3 + 4));
    v10 = (v12 + 8 * a3);
  }

  else
  {
    v8 = *(a2[57] + 8 * a6);
    v9 = *(*v8 + 24);
    v10 = (v9 + 8 * a3);
    v11 = (v8[3] + 4 * *(v9 + 4 * ((2 * a3) | 1)));
  }

  v13 = *v10;
  v14 = a2[54];
  v15 = *(v14 + 2 * *v11);
  if (v13 >= 2)
  {
    v16 = v13 - 1;
    v17 = v11 + 1;
    do
    {
      v18 = *v17++;
      v15 |= *(v14 + 2 * v18);
      --v16;
    }

    while (v16);
  }

  v19 = 0;
  if ((v15 & 4) != 0)
  {
    v20 = 40;
    v21 = 80;
    do
    {
      v24 = v11[v19] + a5;
      std::vector<int>::push_back[abi:nn200100]((a1 + 32), &v24);
      ++v19;
    }

    while (v19 != 4);
  }

  else
  {
    v20 = 16;
    v21 = 56;
    do
    {
      v23 = v11[v19] + a5;
      std::vector<int>::push_back[abi:nn200100]((a1 + 8), &v23);
      ++v19;
    }

    while (v19 != 4);
  }

  std::vector<int>::push_back[abi:nn200100]((a1 + v21), &v25);
  return *(a1 + v20) - 16;
}

void OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory::Finalize(void *a1, int a2, std::vector<int> *this, std::vector<int> *a4, unsigned int *a5)
{
  v8 = a1;
  v9 = a1[7];
  v10 = a1[8];
  v11 = v10 - v9;
  v39 = a1[10];
  v41 = a1[11];
  v12 = (v41 - v39) >> 2;
  v13 = v12 + ((v10 - v9) >> 2);
  v14 = *(*(*a1 + 40) + 8 * ((*(*a1 + 8) >> 2) & 0xF));
  std::vector<unsigned int>::resize(this, 4 * v13);
  if (v13)
  {
    v15 = v8;
    begin = this->__begin_;
    if (v10 == v9)
    {
      v19 = v8;
    }

    else
    {
      v17 = 0;
      v18 = (v11 >> 2) <= 1 ? 1 : v11 >> 2;
      v19 = v15;
      do
      {
        OpenSubdiv::v3_1_1::Far::getQuadOffsets(v14, *(v19[7] + 4 * v17), begin, a5);
        begin += 4;
        ++v17;
      }

      while (v18 != v17);
    }

    v8 = v19;
    if (v41 != v39)
    {
      v20 = 0;
      if (v12 <= 1)
      {
        v12 = 1;
      }

      do
      {
        OpenSubdiv::v3_1_1::Far::getQuadOffsets(v14, *(v19[10] + 4 * v20), begin, a5);
        begin += 4;
        ++v20;
      }

      while (v12 != v20);
    }
  }

  v21 = (2 * a2) | 1;
  std::vector<unsigned int>::resize(a4, *(*v8 + 20) * v21);
  v22 = 0;
  v23 = 0;
  v24 = (*(*v8 + 8) >> 2) & 0xF;
  v25 = v21;
  v26 = (v24 + 1);
  v27 = (8 * ((2 * a2) >> 1)) | 4;
  v42 = v24;
  v43 = v8;
  v40 = v26;
  do
  {
    v28 = *(*(*v8 + 40) + 8 * v22);
    v29 = *(v28 + 2);
    if (v22 == v24 && v29 >= 1)
    {
      v45 = v22;
      v30 = 0;
      v31 = v23 * v25;
      v32 = 4 * v31 + 4;
      do
      {
        v33 = a4->__begin_;
        v34 = &a4->__begin_[v31];
        *v34 = 0;
        v35 = OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularRingAroundVertex(v28, v30, v34 + 1, 0xFFFFFFFF);
        if (v35 >= 1)
        {
          v36 = v35;
          v37 = (v33 + v32);
          do
          {
            *v37++ += v23;
            --v36;
          }

          while (v36);
        }

        if (v35)
        {
          v34[v35 + 1] = v34[v35];
          v38 = ~(v35 >> 1);
        }

        else
        {
          v38 = v35 >> 1;
        }

        *v34 = v38;
        v31 += v25;
        ++v30;
        v29 = *(v28 + 2);
        v32 += v27;
      }

      while (v30 < v29);
      v8 = v43;
      v22 = v45;
      v26 = v40;
      v24 = v42;
    }

    v23 += v29;
    ++v22;
  }

  while (v22 != v26);
}

void *OpenSubdiv::v3_1_1::Far::getQuadOffsets(void *this, const OpenSubdiv::v3_1_1::Vtr::internal::Level *a2, uint64_t a3, unsigned int *a4)
{
  if ((a4 & 0x80000000) != 0)
  {
    v5 = this + 6;
    v7 = this[3];
  }

  else
  {
    v4 = *(this[57] + 8 * a4);
    v6 = *v4;
    v5 = v4 + 3;
    v7 = *(v6 + 24);
  }

  v8 = (v7 + 8 * a2 + 4);
  v9 = 0;
  v10 = *v5 + 4 * *v8;
  v11 = this[36];
  v12 = this[33];
  v13 = this[42];
  do
  {
    v14 = *(v10 + 4 * v9);
    v15 = 2 * v14;
    v16 = *(v12 + 8 * v14);
    if (v16 < 1)
    {
LABEL_9:
      LODWORD(v17) = -1;
    }

    else
    {
      v17 = 0;
      v18 = v11 + 4 * *(v12 + 8 * v14 + 4);
      while (*(v18 + 4 * v17) != a2)
      {
        if (v16 == ++v17)
        {
          goto LABEL_9;
        }
      }
    }

    *(a3 + 4 * v9++) = v17 | (((v17 + 1) % *(v13 + 4 * v15)) << 8);
  }

  while (v9 != 4);
  return this;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::resizeComponentTopology(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = **(a1 + 40);
  *(v5 + 8) = v4;
  std::vector<unsigned int>::resize((v5 + 264), 2 * v4);
  std::vector<unsigned int>::resize((v5 + 336), 2 * v4);
  std::vector<unsigned int>::resize((v5 + 408), v4);
  std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>::resize((v5 + 432), v4);
  bzero(*(v5 + 432), 2 * *(v5 + 8));
  v6 = a2[1];
  v7 = **(a1 + 40);
  *v7 = v6;
  std::vector<unsigned int>::resize(v7 + 1, 2 * v6);
  v8 = *(v7 + 12);
  v9 = *(v7 + 13) - v8;
  if (v6 <= v9)
  {
    if (v6 < v9)
    {
      *(v7 + 13) = &v8[v6];
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::FTag>::__append(v7 + 12, v6 - v9);
    v8 = *(v7 + 12);
  }

  bzero(v8, *v7);
  if (a2[1] >= 1)
  {
    v10 = 0;
    v11 = *(a2 + 1);
    v12 = **(a1 + 40);
    v13 = *(v12 + 24);
    do
    {
      v14 = *(v11 + 4 * v10);
      *v13 = v14;
      if (v10)
      {
        v15 = *(v13 - 1) + *(v13 - 2);
      }

      else
      {
        v15 = 0;
      }

      v13[1] = v15;
      if (*(v12 + 20) > v14)
      {
        v14 = *(v12 + 20);
      }

      *(v12 + 20) = v14;
      ++v10;
      v13 += 2;
    }

    while (v10 < a2[1]);
  }

  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::assignComponentTopology(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) >= 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = **(a1 + 40);
    v5 = *(v4 + 24);
    v6 = *(v4 + 48);
    v7 = *(a2 + 88);
    v8 = *(a2 + 16);
    do
    {
      v9 = *(v5 + 8 * v2);
      v10 = *(v5 + 8 * v2 + 4);
      v11 = (v6 + 4 * v10);
      if (v7)
      {
        *v11 = *(v8 + 4 * v3++);
        if (v9 >= 2)
        {
          v12 = v9 + 1;
          v13 = (v6 - 4 + 4 * v10 + 4 * v9);
          v14 = (v8 + 4 * v3);
          do
          {
            v15 = *v14++;
            *v13-- = v15;
            --v12;
            ++v3;
          }

          while (v12 > 2);
        }
      }

      else if (v9 >= 1)
      {
        v16 = (v8 + 4 * v3);
        v3 += v9;
        do
        {
          v17 = *v16++;
          *v11++ = v17;
          --v9;
        }

        while (v9);
      }

      ++v2;
    }

    while (v2 < *(a2 + 4));
  }

  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::assignComponentTags(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 24);
  if (v4 >= 1)
  {
    v5 = *(a2 + 32);
    if (v5)
    {
      if (*(a2 + 40))
      {
        for (i = 0; i < v4; ++i)
        {
          v7 = *v5;
          v8 = v5[1];
          v9 = **(a1 + 40);
          Edge = OpenSubdiv::v3_1_1::Vtr::internal::Level::findEdge(v9, *v5, v8);
          if (Edge == -1)
          {
            snprintf(__str, 0x400uLL, "Edge %d specified to be sharp does not exist (%d, %d)", i, v7, v8);
            OpenSubdiv::v3_1_1::Far::Warning("%s", v11, __str);
            v4 = *(a2 + 24);
          }

          else
          {
            *(*(v9 + 27) + 4 * Edge) = *(*(a2 + 40) + 4 * i);
          }

          v5 += 2;
        }
      }
    }
  }

  v12 = *(a2 + 48);
  if (v12 >= 1 && *(a2 + 56) && *(a2 + 64))
  {
    for (j = 0; j < v12; ++j)
    {
      v14 = *(*(a2 + 56) + 4 * j);
      if ((v14 & 0x80000000) != 0 || (v15 = **(a1 + 40), v14 >= *(v15 + 8)))
      {
        snprintf(__str, 0x400uLL, "Vertex %d specified to be sharp does not exist", *(*(a2 + 56) + 4 * j));
        OpenSubdiv::v3_1_1::Far::Warning("%s", v16, __str);
        v12 = *(a2 + 48);
      }

      else
      {
        *(*(v15 + 408) + 4 * v14) = *(*(a2 + 64) + 4 * j);
      }
    }
  }

  if (*(a2 + 72) >= 1)
  {
    v17 = 0;
    do
    {
      v18 = *(*(a2 + 80) + 4 * v17);
      v19 = *(**(a1 + 40) + 96);
      *(v19 + v18) |= 1u;
      *(a1 + 8) |= 2u;
      ++v17;
    }

    while (v17 < *(a2 + 72));
  }

  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::assignFaceVaryingTopology(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 92) >= 1)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Level::createFVarChannel(**(a1 + 40), **(a2 + 96), (a1 + 4));
  }

  return 1;
}

void OpenSubdiv::v3_1_1::Osd::CpuEvalStencils(uint64_t a1, int *a2, uint64_t a3, int *a4, int *a5, uint64_t a6, int *a7, const float *a8, int32x4_t a9, int32x4_t a10, int a11, int a12)
{
  v12 = a8;
  v13 = a7;
  v14 = a5;
  v56 = *MEMORY[0x1E69E9840];
  if (a11 >= 1)
  {
    v14 = &a5[a11];
    v17 = *(a6 + 4 * a11);
    v13 = &a7[v17];
    v12 = &a8[v17];
  }

  v18 = a1 + 4 * *a2;
  v19 = a3 + 4 * *a4;
  a9.i64[0] = *(a2 + 1);
  a10.i64[0] = *(a4 + 1);
  v20.i64[0] = 0x400000004;
  v20.i64[1] = 0x400000004;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(vzip1q_s32(a9, a10), v20)))))
  {
    v21.i64[0] = *(a2 + 1);
    v21.i64[1] = *(a4 + 1);
    v22.i64[0] = 0x800000008;
    v22.i64[1] = 0x800000008;
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v21, v22)))))
    {
      MEMORY[0x1EEE9AC00](a1);
      v24 = &v54[-v23];
      bzero(&v54[-v23], v25);
      v55 = a12 - a11;
      if (a12 - a11 >= 1)
      {
        v26 = 0;
        do
        {
          v27 = v19;
          v28 = a2[1];
          bzero(v24, 4 * v28);
          v29 = *v14;
          if (*v14 < 1)
          {
            v19 = v27;
          }

          else
          {
            v30 = 0;
            v31 = v28;
            v32 = a2[2];
            v19 = v27;
            do
            {
              v34 = *v13++;
              v33 = v34;
              v35 = *v12++;
              v36 = v35;
              if (v31 >= 1)
              {
                v37 = (v18 + 4 * v33 * v32);
                v38 = v24;
                v39 = v31;
                do
                {
                  v40 = *v37++;
                  *v38 = *v38 + (v40 * v36);
                  ++v38;
                  --v39;
                }

                while (v39);
              }

              ++v30;
            }

            while (v30 != v29);
          }

          memcpy((v19 + 4 * a4[2] * v26++), v24, 4 * a4[1]);
          ++v14;
        }

        while (v26 != v55);
      }
    }

    else if (a12 > a11)
    {
      v46 = a11;
      do
      {
        v47 = v14[v46];
        v48 = 0uLL;
        v49 = 0uLL;
        if (v47 >= 1)
        {
          do
          {
            v50 = vld1q_dup_f32(v12++);
            v51 = *v13++;
            v52 = (v18 + 32 * v51);
            v49 = vmlaq_f32(v49, v50, *v52);
            v48 = vmlaq_f32(v48, v50, v52[1]);
            --v47;
          }

          while (v47);
        }

        v53 = (v19 + 32 * v46);
        *v53 = v49;
        v53[1] = v48;
        ++v46;
      }

      while (v46 != a12);
    }
  }

  else if (a12 > a11)
  {
    v41 = a11;
    do
    {
      v42 = v14[v41];
      v43 = 0uLL;
      if (v42 >= 1)
      {
        do
        {
          v45 = *v13++;
          v44 = v45;
          *&v45 = *v12++;
          v43 = vmlaq_n_f32(v43, *(v18 + 16 * v44), *&v45);
          --v42;
        }

        while (v42);
      }

      *(v19 + 16 * v41++) = v43;
    }

    while (v41 != a12);
  }
}

int8x16_t *re::pathprocessing::ContinuousEdge::getIndex(int8x16_t *result, void *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = a3 + 24 * *(*(a2[1] + (((a2[4] + a2[5] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a2[4] + a2[5] - 1) & 0x1FF));
    *result = vextq_s8(*(v4 + 8), *(v4 + 8), 8uLL);
    v5 = *v4;
  }

  else
  {
    v6 = (a3 + 24 * *(*(a2[1] + ((a2[4] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (a2[4] & 0x1FFLL)));
    *result = *v6;
    v5 = v6[1].i64[0];
  }

  result[1].i64[0] = v5;
  return result;
}

int64x2_t re::pathprocessing::ContinuousEdge::appendBezier(int64x2_t *this, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    v10 = this[2].u64[0];
    if (!v10)
    {
      v11 = this->i64[1];
      v12 = this[1].i64[0];
      v13 = ((v12 - v11) << 6) - 1;
      v14 = v12 - v11;
      if (v12 == v11)
      {
        v13 = 0;
      }

      if ((v13 - this[2].i64[1]) < 0x200)
      {
        v15 = this[1].i64[1];
        v16 = this->i64[0];
        v17 = v15 - this->i64[0];
        if (v14 < v17)
        {
          if (v11 != v16)
          {
            operator new();
          }

          operator new();
        }

        if (v15 == v16)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17 >> 2;
        }

        v22[4] = this;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(this, v18);
      }

      this[2].i64[0] = 512;
      v22[0] = *(v12 - 8);
      this[1].i64[0] = v12 - 8;
      std::__split_buffer<unsigned long *>::emplace_front<unsigned long *>(this, v22);
      v10 = this[2].u64[0];
    }

    v19 = this->i64[1];
    v20 = (v19 + 8 * (v10 >> 9));
    v21 = *v20 + 8 * (v10 & 0x1FF);
    if (this[1].i64[0] == v19)
    {
      v21 = 0;
    }

    if (v21 == *v20)
    {
      v21 = *(v20 - 1) + 4096;
    }

    *(v21 - 8) = a2;
    result = vaddq_s64(this[2], xmmword_1E309DBF0);
    this[2] = result;
  }

  else if (!a3)
  {
    result = *(this + 8);
    v6 = this[1].i64[0];
    v7 = this->i64[1];
    v8 = ((v6 - v7) << 6) - 1;
    if (v6 == v7)
    {
      v8 = 0;
    }

    v9 = this[2].i64[1] + this[2].i64[0];
    if (v8 == v9)
    {
      std::deque<unsigned long>::__add_back_capacity(this);
      v7 = this->i64[1];
      v9 = this[2].i64[1] + this[2].i64[0];
    }

    *(*(v7 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = a2;
    ++this[2].i64[1];
  }

  return result;
}

void re::pathprocessing::ContinuousVertex::addEdgeFromEnd(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 >= v6)
  {
    v9 = *a1;
    v10 = v7 - *a1;
    v11 = v10 >> 4;
    v12 = (v10 >> 4) + 1;
    if (v12 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = v6 - v9;
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

    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd>>>(v14);
    }

    v15 = 16 * v11;
    *v15 = a2;
    *(v15 + 8) = a3;
    v8 = 16 * v11 + 16;
    memcpy(0, v9, v10);
    v16 = *a1;
    *a1 = 0;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = a2;
    *(v7 + 8) = a3;
    v8 = v7 + 16;
  }

  *(a1 + 8) = v8;
}

uint64_t re::pathprocessing::ContinuousVertex::compareAngle(float32x2_t *a1, float32x2_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = vsub_f32(v2, *a1);
  v5 = vmul_f32(v4, v4);
  v6 = a2[1];
  v7 = vsub_f32(v6, *a2);
  v8 = vmul_f32(v7, v7);
  v9 = vsqrt_f32(vadd_f32(vzip1_s32(v5, v8), vzip2_s32(v5, v8)));
  __asm { FMOV            V7.2S, #1.0 }

  v15 = vdiv_f32(_D7, v9);
  v16 = vmul_n_f32(v4, v15.f32[0]);
  v17 = vmul_lane_f32(v7, v15, 1);
  if (fabsf((-*&v16.i32[1] * *v17.i32) + (*v16.i32 * *&v17.i32[1])) >= 0.0001 || vaddv_f32(vmul_f32(v16, v17)) <= 0.0001)
  {
    if (*&v16.i32[1] < 0.0)
    {
      *v16.i32 = -2.0 - *v16.i32;
    }

    if (*&v17.i32[1] < 0.0)
    {
      *v17.i32 = -2.0 - *v17.i32;
    }

    if (*v16.i32 <= *v17.i32)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    result = 0;
    v20 = vadd_f32(vsub_f32(v3, vadd_f32(v2, v2)), a1[2]);
    v21 = vadd_f32(v20, v20);
    v22 = vmul_f32(v15, v15);
    v23 = vadd_f32(vsub_f32(*a2, vadd_f32(v6, v6)), a2[2]);
    v24 = vadd_f32(v23, v23);
    v25 = vneg_f32(v17);
    v25.f32[0] = -*&v16.i32[1];
    v26 = vmul_f32(v22, vmla_f32(vmul_f32(vzip1_s32(v21, v24), v25), vzip2_s32(v21, v24), vzip1_s32(v16, v17)));
    if (v26.f32[0] != v26.f32[1] && vabds_f32(v26.f32[0], v26.f32[1]) > 0.0001)
    {
      if (v26.f32[0] >= v26.f32[1])
      {
        return 1;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t re::pathprocessing::HDSMesh::HDSMesh(uint64_t a1, uint64_t *a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (a2[3] != a2[4] && *a2 != a2[1] && a2[6] != a2[7])
  {
    re::pathprocessing::HDSMesh::generateTopology(a1, a2);
  }

  return a1;
}

void re::pathprocessing::HDSMesh::generateTopology(const void **a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = 0x8E38E38E38E38E39 * ((v3 - *a2) >> 3);
  v7 = a2[3];
  v6 = a2[4];
  v8 = 0x1C71C71C71C71C72 * ((v3 - *a2) >> 3);
  v10 = *a1;
  v9 = a1[1];
  v11 = v9 - *a1;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 4);
  v13 = v8 - v12;
  if (v8 <= v12)
  {
    if (v8 < v12)
    {
      a1[1] = &v10[0x5555555555555560 * ((v3 - *a2) >> 3)];
    }
  }

  else
  {
    v14 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - v9) >> 4) < v13)
    {
      if (v8 <= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v10) >> 4);
        if (2 * v15 > v8)
        {
          v8 = 2 * v15;
        }

        if (v15 >= 0x2AAAAAAAAAAAAAALL)
        {
          v16 = 0x555555555555555;
        }

        else
        {
          v16 = v8;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::HalfEdge>>(a1, v16);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v17 = &v9[48 * v13];
    v18 = 0x5555555555555560 * ((v3 - *a2) >> 3) - 16 * (v11 >> 4);
    *&v19 = -1;
    *(&v19 + 1) = -1;
    do
    {
      *v9 = v19;
      *(v9 + 1) = v19;
      *(v9 + 4) = -1;
      *(v9 + 5) = 0;
      v9 += 48;
      v18 -= 48;
    }

    while (v18);
    a1[1] = v17;
  }

  v20 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
  v21 = v5 + 2 - v20;
  if (v5 + 2 >= v20)
  {
    if (v21 > (a1[5] - a1[3]) >> 4)
    {
      if (!(v21 >> 60))
      {
        _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(v21);
      }

LABEL_63:
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v3 != v4)
    {
      v22 = 0;
      v23 = 0;
      if (v5 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v5;
      }

      v25 = *a1 + 88;
      do
      {
        *(v25 - 12) = 0;
        *v25 = 1;
        *(v25 - 8) = v22 + 1;
        *(v25 - 7) = v23;
        *(v25 - 2) = v22;
        *(v25 - 1) = v23++;
        v22 += 2;
        v25 += 24;
      }

      while (v24 != v23);
    }

    if (v6 != v7)
    {
      v26 = 0;
      v27 = a2[3];
      if (v20 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
      }

      do
      {
        v29 = (v27 + 24 * v26);
        v30 = *v29;
        v31 = v29[1];
        v32 = v31 - *v29;
        if (v32)
        {
          v33 = v32 >> 4;
          v34 = *a1;
          if (v33 <= 1)
          {
            v33 = 1;
          }

          v35 = *(v31 - 8);
          v36 = *(v31 - 16);
          v37 = (v30 + 8);
          do
          {
            v38 = *v37;
            v39 = (v35 != 0) | (2 * v36);
            v40 = *(v37 - 1);
            v41 = (*v37 == 0) | (2 * v40);
            *&v34[48 * v41 + 8] = v39;
            *&v34[48 * v39 + 16] = v41;
            v37 += 4;
            v36 = v40;
            v35 = v38;
            --v33;
          }

          while (v33);
        }

        ++v26;
      }

      while (v26 != v28);
    }

    v43 = *a1;
    v42 = a1[1];
    v44 = 0xAAAAAAAAAAAAAAABLL * ((v42 - *a1) >> 4);
    v62 = 0;
    std::vector<BOOL>::vector(&__p, v44, &v62);
    v45 = __p;
    if (v42 == v43)
    {
      if (!__p)
      {
LABEL_61:
        *(a1 + 48) = 1;
        return;
      }
    }

    else
    {
      v46 = 0;
      if (v44 <= 1)
      {
        v47 = 1;
      }

      else
      {
        v47 = v44;
      }

      v61 = v47;
      do
      {
        if (((1 << v46) & v45[v46 >> 6]) == 0)
        {
          v48 = a1[3];
          v49 = a1[4];
          v50 = v49 - v48;
          v51 = (v49 - v48) >> 4;
          v52 = a1[5];
          if (v49 >= v52)
          {
            v54 = v51 + 1;
            if ((v51 + 1) >> 60)
            {
              goto LABEL_63;
            }

            v55 = v52 - v48;
            if (v55 >> 3 > v54)
            {
              v54 = v55 >> 3;
            }

            if (v55 >= 0x7FFFFFFFFFFFFFF0)
            {
              v56 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v56 = v54;
            }

            if (v56)
            {
              _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(v56);
            }

            *(16 * v51) = xmmword_1E3062D70;
            v53 = (16 * v51 + 16);
            memcpy(0, v48, v50);
            v57 = a1[3];
            a1[3] = 0;
            a1[4] = v53;
            a1[5] = 0;
            if (v57)
            {
              operator delete(v57);
            }

            v47 = v61;
          }

          else
          {
            *v49 = xmmword_1E3062D70;
            v53 = v49 + 16;
          }

          a1[4] = v53;
          *(v53 - 2) = v46;
          v58 = *a1;
          v59 = v46;
          v45 = __p;
          do
          {
            v60 = &v58[48 * v59];
            *v60 = v51;
            *(v45 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
            v59 = v60[1];
          }

          while (v59 != v46);
          v45[v46 >> 6] |= 1 << v46;
        }

        ++v46;
      }

      while (v46 != v47);
    }

    operator delete(v45);
    goto LABEL_61;
  }
}

unint64_t *re::pathprocessing::BezierGraphInfo::BezierGraphInfo(unint64_t *a1, void *a2)
{
  *(a1 + 3) = 0u;
  a1[8] = 0;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  v3 = a2[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a2) >> 3);
  if (v3 != *a2)
  {
    if (!(v4 >> 61))
    {
      std::vector<unsigned long>::__vallocate[abi:nn200100](a1 + 6, v4);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  a1[7] = 0x5555555555555558 * ((v3 - *a2) >> 3);
  v37 = v38;
  v38[0] = 0;
  v38[1] = 0;
  v38[2] = a2;
  v35 = 0u;
  v36 = 0u;
  *__p = 0u;
  v6 = *a1;
  v5 = a1[1];
  if (v5 != *a1)
  {
    if (!((0x8E38E38E38E38E39 * ((v5 - *a1) >> 3)) >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v32 = 0uLL;
  v33 = 0;
  v7 = a1[3];
  v8 = a1[4];
  while (v7 != v8)
  {
    v9 = *v7;
    v10 = *(v7 + 8);
    while (v9 != v10)
    {
      *v9 += *(8 * *v9);
      v9 += 2;
    }

    v7 += 24;
  }

  v11 = a1[6];
  v12 = a1[7];
  while (v11 != v12)
  {
    *v11 += *(8 * *v11);
    ++v11;
  }

  if (v6)
  {
    v13 = v6;
    if (v5 != v6)
    {
      do
      {
        v5 = std::deque<unsigned long>::~deque[abi:nn200100]((v5 - 72));
      }

      while (v5 != v6);
      v13 = *a1;
    }

    a1[1] = v6;
    operator delete(v13);
  }

  *a1 = v32;
  a1[2] = v33;
  v33 = 0;
  v32 = 0uLL;
  v39[0] = &v32;
  std::vector<re::pathprocessing::ContinuousEdge>::__destroy_vector::operator()[abi:nn200100](v39);
  v14 = a1[3];
  if (a1[4] != v14)
  {
    v15 = 0;
    do
    {
      v16 = (v14 + 24 * v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = 126 - 2 * __clz((v18 - *v16) >> 4);
      v20 = v18 == *v16;
      v39[0] = a1;
      v39[1] = a2;
      if (v20)
      {
        v21 = 0;
      }

      else
      {
        v21 = v19;
      }

      std::__introsort<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,false>(v17, v18, v39, v21, 1);
      v22 = *v16;
      v23 = v16[1];
      if (*v16 != v23)
      {
        v24 = *a1;
        do
        {
          *(v24 + 72 * *v22 + 8 * *(v22 + 8) + 48) = v15;
          v22 += 16;
        }

        while (v22 != v23);
      }

      ++v15;
      v14 = a1[3];
    }

    while (v15 < 0xAAAAAAAAAAAAAAABLL * ((a1[4] - v14) >> 3));
  }

  v25 = __p[1];
  v26 = v35;
  v27 = v35 - __p[1];
  if (v35 - __p[1] >= 0x11)
  {
    do
    {
      v28 = *v25++;
      operator delete(v28);
      v27 -= 8;
    }

    while (v27 > 0x10);
  }

  while (v25 != v26)
  {
    v29 = *v25++;
    operator delete(v29);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  std::__tree<std::__value_type<re::Vector2<float>,re::pathprocessing::Node>,std::__map_value_compare<re::Vector2<float>,std::__value_type<re::Vector2<float>,re::pathprocessing::Node>,re::pathprocessing::MathUtils::LexCompare,true>,std::allocator<std::__value_type<re::Vector2<float>,re::pathprocessing::Node>>>::destroy(v38[0]);
  return a1;
}

void *std::deque<unsigned long>::insert<std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,0>(int64x2_t *a1, char *a2, uint64_t a3, char *a4, char *a5, void **a6, char *a7)
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v11 = a7;
  if (a7 == a5)
  {
    v12 = 0;
  }

  else
  {
    v12 = ((a7 - *a6) >> 3) + ((a6 - a4) << 6) - (&a5[-*a4] >> 3);
  }

  v13 = a1[2].u64[0];
  v14 = v13 >> 9;
  v15 = a1->i64[1];
  v16 = a1[1].i64[0];
  v17 = (v15 + 8 * (v13 >> 9));
  if (v16 == v15)
  {
    v18 = 0;
  }

  else
  {
    v18 = *v17 + 8 * (a1[2].i64[0] & 0x1FF);
  }

  if (a3 == v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = ((a3 - *a2) >> 3) + ((a2 - v17) << 6) - ((v18 - *v17) >> 3);
  }

  v20 = a1[2].i64[1];
  if (v19 < v20 - v19)
  {
    if (v12 > v13)
    {
      std::deque<unsigned long>::__add_front_capacity(a1, v12 - v13);
      v13 = a1[2].u64[0];
      v15 = a1->i64[1];
      v16 = a1[1].i64[0];
      v14 = v13 >> 9;
    }

    v21 = (v15 + 8 * v14);
    if (v16 == v15)
    {
      v22 = 0;
    }

    else
    {
      v22 = *v21 + 8 * (v13 & 0x1FF);
    }

    __dst[0] = (v15 + 8 * v14);
    __dst[1] = v22;
    if (v12 <= v19)
    {
      goto LABEL_55;
    }

    if (v19 >= v12 >> 1)
    {
      v28 = v12 - v19 + (&v8[-*v9] >> 3);
      if (v28 >= 1)
      {
        v9 += 8 * (v28 >> 9);
        goto LABEL_37;
      }

      v35 = 511 - v28;
      v36 = ~v35;
      v9 -= 8 * (v35 >> 9);
    }

    else
    {
      if (!v19)
      {
        v9 = v7;
        v33 = v11;
        goto LABEL_47;
      }

      v28 = ((v11 - *v7) >> 3) - v19;
      if (v28 >= 1)
      {
        v9 = &v7[v28 >> 9];
LABEL_37:
        v33 = *v9 + 8 * (v28 & 0x1FF);
LABEL_47:
        if (v33 != v8)
        {
          v40 = *v21;
          v41 = v9;
          v42 = v33;
          do
          {
            if (v22 == v40)
            {
              v43 = *--v21;
              v40 = v43;
              v22 = v43 + 4096;
            }

            if (v42 == *v41)
            {
              v44 = *(v41 - 1);
              v41 -= 8;
              v42 = (v44 + 4096);
            }

            v45 = *(v42 - 1);
            v42 -= 8;
            *(v22 - 1) = v45;
            v22 -= 8;
            a1[2] = vaddq_s64(a1[2], xmmword_1E309DBF0);
          }

          while (v42 != v8);
        }

        v8 = v33;
        v12 = v19;
LABEL_55:
        if (v12)
        {
          v112 = v19;
          v46 = std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:nn200100](__dst, v12);
          v48 = v46;
          v49 = v47;
          v50 = __dst[1];
          if (__dst[1] != v47)
          {
            v51 = *v21;
            v52 = v46;
            v53 = v47;
            do
            {
              if (v22 == v51)
              {
                v54 = *--v21;
                v51 = v54;
                v22 = v54 + 4096;
              }

              if (v53 == *v52)
              {
                v55 = *--v52;
                v53 = (v55 + 4096);
              }

              v56 = *(v53 - 1);
              v53 -= 8;
              *(v22 - 1) = v56;
              v22 -= 8;
              a1[2] = vaddq_s64(a1[2], xmmword_1E309DBF0);
            }

            while (v53 != v50);
          }

          if (v12 >= v112)
          {
            v59 = __dst[0];
          }

          else
          {
            v57 = std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:nn200100](__dst, v112);
            v114 = *__dst;
            std::__for_each_segment[abi:nn200100]<std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>>>(v48, v49, v57, v58, &v114);
            v50 = v114.n128_u64[1];
            v59 = v114.n128_u64[0];
            *__dst = v114;
          }

          if (v9 == v7)
          {
            v60 = v8;
            v61 = v11;
          }

          else
          {
            *v111 = v11;
            v63 = *v9;
            v62 = (v9 + 8);
            std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,unsigned long *,unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(&v114, v8, (v63 + 4096), v59, v50);
            v64 = v114.n128_u64[1];
            v65 = v115;
            if (v62 != v7)
            {
              v66 = *v114.n128_u64[1];
              do
              {
                v67 = 0;
                v68 = *v62;
                for (++v64; ; ++v64)
                {
                  v69 = v66 - v65 + 4096;
                  if ((4096 - v67) >> 3 >= v69 >> 3)
                  {
                    v70 = v69 >> 3;
                  }

                  else
                  {
                    v70 = (4096 - v67) >> 3;
                  }

                  if (v70)
                  {
                    memmove(v65, &v68[v67], 8 * v70);
                  }

                  v67 += 8 * v70;
                  if (v67 == 4096)
                  {
                    break;
                  }

                  v71 = *v64;
                  v66 = v71;
                  v65 = v71;
                }

                v65 += 8 * v70;
                v66 = *(v64 - 1);
                if (v66 + 4096 == v65)
                {
                  v66 = *v64;
                  v65 = *v64;
                }

                else
                {
                  --v64;
                }

                ++v62;
              }

              while (v62 != v7);
            }

            v60 = *v62;
            v61 = *v111;
            v59 = v64;
            v50 = v65;
          }

          std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,unsigned long *,unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(&v114, v60, v61, v59, v50);
          v19 = v112;
        }

        goto LABEL_128;
      }

      v39 = 511 - v28;
      v36 = ~v39;
      v9 = &v7[-(v39 >> 9)];
    }

    v33 = *v9 + 8 * (v36 & 0x1FF);
    goto LABEL_47;
  }

  v23 = ((v16 - v15) << 6) - 1;
  if (v16 == v15)
  {
    v23 = 0;
  }

  v24 = v20 + v13;
  v25 = v23 - v24;
  if (v12 > v25)
  {
    std::deque<unsigned long>::__add_back_capacity(a1, v12 - v25);
    v20 = a1[2].i64[1];
    v15 = a1->i64[1];
    v16 = a1[1].i64[0];
    v24 = a1[2].i64[0] + v20;
  }

  v26 = (v15 + 8 * (v24 >> 9));
  if (v16 == v15)
  {
    v27 = 0;
  }

  else
  {
    v27 = (*v26 + 8 * (v24 & 0x1FF));
  }

  v29 = v20 - v19;
  if (v20 - v19 >= v12)
  {
    v31 = v27;
    v32 = v26;
    if (!v12)
    {
      goto LABEL_128;
    }

    goto LABEL_96;
  }

  if (v29 >= v12 >> 1)
  {
    v30 = v20 - v19 - v12 + ((v11 - *v7) >> 3);
    if (v30 >= 1)
    {
      v7 += v30 >> 9;
      goto LABEL_40;
    }

    v37 = 511 - v30;
    v38 = ~v37;
    v7 -= v37 >> 9;
  }

  else
  {
    if (!v29)
    {
      v7 = v9;
      v34 = v8;
      goto LABEL_86;
    }

    v30 = v29 + (&v8[-*v9] >> 3);
    if (v30 >= 1)
    {
      v7 = &v9[8 * (v30 >> 9)];
LABEL_40:
      v34 = *v7 + 8 * (v30 & 0x1FF);
      goto LABEL_86;
    }

    v72 = 511 - v30;
    v38 = ~v72;
    v7 = &v9[-8 * (v72 >> 9)];
  }

  v34 = *v7 + 8 * (v38 & 0x1FF);
LABEL_86:
  if (v34 == v11)
  {
    v31 = v27;
    v32 = v26;
  }

  else
  {
    v73 = *v26;
    v74 = v7;
    v75 = v34;
    v32 = v26;
    v31 = v27;
    do
    {
      *v31 = *v75;
      v31 += 8;
      if (v31 - v73 == 4096)
      {
        v76 = *(v32 + 1);
        v32 += 8;
        v73 = v76;
        v31 = v76;
      }

      v75 += 8;
      if (v75 - *v74 == 4096)
      {
        v77 = v74[1];
        ++v74;
        v75 = v77;
      }

      ++a1[2].i64[1];
    }

    while (v75 != v11);
  }

  v11 = v34;
  v12 = v29;
  if (v29)
  {
LABEL_96:
    v78 = &v27[-*v26] >> 3;
    v79 = v78 - v12;
    if ((v78 - v12) < 1)
    {
      v81 = 511 - v79;
      LOWORD(v79) = ~(511 - v79);
      v80 = &v26[-8 * (v81 >> 9)];
    }

    else
    {
      v80 = &v26[8 * (v79 >> 9)];
    }

    v82 = *v80;
    v83 = &(*v80)[8 * (v79 & 0x1FF)];
    if (v83 != v27)
    {
      v84 = *v32;
      v85 = v80;
      v86 = v83;
      do
      {
        *v31 = *v86;
        v31 += 8;
        if (v31 - v84 == 4096)
        {
          v87 = *(v32 + 1);
          v32 += 8;
          v84 = v87;
          v31 = v87;
        }

        v86 += 8;
        if (v86 - v82 == 4096)
        {
          v88 = v85[1];
          ++v85;
          v82 = v88;
          v86 = v88;
        }

        ++a1[2].i64[1];
      }

      while (v86 != v27);
    }

    if (v12 < v29)
    {
      v89 = v78 - v29;
      if (v89 < 1)
      {
        v92 = 511 - v89;
        v90 = &v26[-8 * (v92 >> 9)];
        v91 = &(*v90)[8 * (~v92 & 0x1FF)];
      }

      else
      {
        v90 = &v26[8 * (v89 >> 9)];
        v91 = &(*v90)[8 * (v89 & 0x1FF)];
      }

      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(&v114, v90, v91, v80, v83, v26, v27);
      v26 = v115;
      v27 = v116;
    }

    if (v9 == v7)
    {
      v93 = v8;
      v94 = v11;
      v95 = v26;
      v96 = v27;
    }

    else
    {
      v98 = *v7;
      v97 = (v7 - 1);
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(&v114, v98, v11, v26, v27);
      v99 = v114.n128_u64[1];
      v100 = v115;
      if (v97 != v9)
      {
        v101 = *v114.n128_u64[1];
        do
        {
          v102 = *v97;
          v103 = (*v97 + 4096);
          while (1)
          {
            v104 = v100 - v101;
            if ((v103 - v102) >> 3 >= v104 >> 3)
            {
              v105 = v104 >> 3;
            }

            else
            {
              v105 = (v103 - v102) >> 3;
            }

            v103 -= 8 * v105;
            v100 -= 8 * v105;
            if (v105)
            {
              memmove(v100, v103, 8 * v105);
            }

            if (v103 == v102)
            {
              break;
            }

            v106 = *(v99 - 1);
            v99 -= 8;
            v101 = v106;
            v100 = v106 + 4096;
          }

          v101 = *v99;
          if ((*v99 + 4096) == v100)
          {
            v107 = *(v99 + 1);
            v99 += 8;
            v101 = v107;
            v100 = v107;
          }

          v97 -= 8;
        }

        while (v97 != v9);
      }

      v94 = (*v97 + 4096);
      v93 = v8;
      v95 = v99;
      v96 = v100;
    }

    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(&v114, v93, v94, v95, v96);
  }

LABEL_128:
  v108 = a1->i64[1];
  if (a1[1].i64[0] == v108)
  {
    v109 = 0;
  }

  else
  {
    v109 = *(v108 + 8 * (a1[2].i64[0] >> 9)) + 8 * (a1[2].i64[0] & 0x1FF);
  }

  v114.n128_u64[0] = v108 + 8 * (a1[2].i64[0] >> 9);
  v114.n128_u64[1] = v109;
  return std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:nn200100](&v114, v19);
}

void *std::deque<unsigned long>::insert<std::reverse_iterator<std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>>,0>(int64x2_t *a1, char *a2, uint64_t a3, __n128 *a4, __int128 *a5)
{
  v6 = a4[1];
  v116 = *a4;
  v117 = v6;
  v7 = a5[1];
  v114 = *a5;
  v115 = v7;
  v8 = a4[1].n128_i64[1];
  v9 = *(a5 + 3);
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((v8 - *a4[1].n128_u64[0]) >> 3) + ((a4[1].n128_u64[0] - *(a5 + 2)) << 6) - ((v9 - **(a5 + 2)) >> 3);
  }

  v11 = a1[2].u64[0];
  v12 = v11 >> 9;
  v13 = a1->i64[1];
  v14 = a1[1].i64[0];
  v15 = (v13 + 8 * (v11 >> 9));
  if (v14 == v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = *v15 + 8 * (a1[2].i64[0] & 0x1FF);
  }

  if (a3 == v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = ((a3 - *a2) >> 3) + ((a2 - v15) << 6) - ((v16 - *v15) >> 3);
  }

  v18 = a1[2].i64[1];
  if (v17 >= v18 - v17)
  {
    v21 = ((v14 - v13) << 6) - 1;
    if (v14 == v13)
    {
      v21 = 0;
    }

    v22 = v18 + v11;
    v23 = v21 - v22;
    if (v10 > v23)
    {
      std::deque<unsigned long>::__add_back_capacity(a1, v10 - v23);
      v18 = a1[2].i64[1];
      v13 = a1->i64[1];
      v14 = a1[1].i64[0];
      v22 = a1[2].i64[0] + v18;
    }

    v24 = (v13 + 8 * (v22 >> 9));
    if (v14 == v13)
    {
      v25 = 0;
    }

    else
    {
      v25 = (*v24 + 8 * (v22 & 0x1FF));
    }

    v31 = *(&v115 + 1);
    v30 = v115;
    v32 = v18 - v17;
    if (v10 <= v18 - v17)
    {
      v35 = v25;
      v36 = v24;
      if (!v10)
      {
        goto LABEL_116;
      }

LABEL_54:
      v45 = &v25[-*v24] >> 3;
      v46 = v45 - v10;
      if ((v45 - v10) < 1)
      {
        v48 = 511 - v46;
        LOWORD(v46) = ~(511 - v46);
        v47 = &v24[-8 * (v48 >> 9)];
      }

      else
      {
        v47 = &v24[8 * (v46 >> 9)];
      }

      v49 = *v47;
      v50 = &(*v47)[8 * (v46 & 0x1FF)];
      if (v50 != v25)
      {
        v51 = *v36;
        v52 = v47;
        v53 = v50;
        do
        {
          *v35 = *v53;
          v35 += 8;
          if (v35 - v51 == 4096)
          {
            v54 = *(v36 + 1);
            v36 += 8;
            v51 = v54;
            v35 = v54;
          }

          v53 += 8;
          if (v53 - v49 == 4096)
          {
            v55 = v52[1];
            ++v52;
            v49 = v55;
            v53 = v55;
          }

          ++a1[2].i64[1];
        }

        while (v53 != v25);
      }

      if (v10 < v32)
      {
        v56 = v45 - v32;
        if (v56 < 1)
        {
          v59 = 511 - v56;
          v57 = &v24[-8 * (v59 >> 9)];
          v58 = &(*v57)[8 * (~v59 & 0x1FF)];
        }

        else
        {
          v57 = &v24[8 * (v56 >> 9)];
          v58 = &(*v57)[8 * (v56 & 0x1FF)];
        }

        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(&v121, v57, v58, v47, v50, v24, v25);
        v24 = v122;
        v25 = v123;
      }

      v60 = *(&v117 + 1);
      if (*(&v117 + 1) == v31)
      {
        goto LABEL_116;
      }

      v61 = v117;
      v62 = *v24;
      v63 = (*(&v117 + 1) - *v117) >> 3;
      v64 = *v30;
      while (1)
      {
        if (v63 + ((v61 - v30) << 6) - ((v31 - v64) >> 3) >= &v25[-v62] >> 3)
        {
          v65 = &v25[-v62] >> 3;
        }

        else
        {
          v65 = v63 + ((v61 - v30) << 6) - ((v31 - v64) >> 3);
        }

        if (v65)
        {
          v66 = v65 + ((v31 - v64) >> 3);
          if (v66 < 1)
          {
            v67 = v30[-((511 - v66) >> 9)];
            v68 = ~(511 - v66) & 0x1FF;
          }

          else
          {
            v67 = *(v30 + ((v66 >> 6) & 0x3FFFFFFFFFFFFF8));
            v68 = v66 & 0x1FF;
          }

          v69 = v67 + 8 * v68;
          if (v69 != v31)
          {
            v70 = v25 - 8;
            v71 = v30;
            while (1)
            {
              v31 += 8;
              if (v31 - v64 == 4096)
              {
                break;
              }

              v73 = v31;
              if (v31 == v64)
              {
                goto LABEL_83;
              }

LABEL_84:
              *v70 = *(v73 - 8);
              v70 -= 8;
              if (v31 == v69)
              {
                goto LABEL_85;
              }
            }

            v72 = v71[1];
            ++v71;
            v31 = v72;
            v64 = v72;
LABEL_83:
            v73 = *(v71 - 1) + 4096;
            goto LABEL_84;
          }

LABEL_85:
          if (v66 < 1)
          {
            v74 = 511 - v66;
            LOWORD(v66) = ~(511 - v66);
            v30 -= v74 >> 9;
          }

          else
          {
            v30 += v66 >> 9;
          }

          v64 = *v30;
          v31 = *v30 + 8 * (v66 & 0x1FF);
        }

        if (v60 == v31)
        {
          goto LABEL_116;
        }

        v75 = *(v24 - 1);
        v24 -= 8;
        v62 = v75;
        v25 = (v75 + 4096);
      }
    }

    if (v32 >= v10 >> 1)
    {
      v34 = v10 - (v18 - v17) + ((*(&v115 + 1) - *v115) >> 3);
    }

    else
    {
      v33 = *(&v117 + 1);
      v30 = v117;
      if (!v32)
      {
        goto LABEL_42;
      }

      v34 = ((*(&v117 + 1) - *v117) >> 3) - v32;
    }

    if (v34 < 1)
    {
      v38 = 511 - v34;
      v30 -= v38 >> 9;
      v33 = *v30 + 8 * (~v38 & 0x1FF);
    }

    else
    {
      v30 += v34 >> 9;
      v33 = *v30 + 8 * (v34 & 0x1FF);
    }

LABEL_42:
    if (*(&v115 + 1) == v33)
    {
      v35 = v25;
      v36 = v24;
    }

    else
    {
      v39 = *v30;
      v40 = v30;
      v41 = v33;
      v36 = v24;
      v35 = v25;
      do
      {
        v42 = v41;
        if (v41 == v39)
        {
          v42 = *(v40 - 1) + 4096;
        }

        *v35 = *(v42 - 8);
        v35 += 8;
        if (&v35[-*v36] == 4096)
        {
          v43 = *(v36 + 1);
          v36 += 8;
          v35 = v43;
        }

        if (v41 == v39)
        {
          v44 = *--v40;
          v39 = v44;
          v41 = v44 + 4096;
        }

        v41 -= 8;
        ++a1[2].i64[1];
      }

      while (v31 != v41);
      v31 = v33;
    }

    v10 = v32;
    if (!v32)
    {
      goto LABEL_116;
    }

    goto LABEL_54;
  }

  if (v10 > v11)
  {
    std::deque<unsigned long>::__add_front_capacity(a1, v10 - v11);
    v11 = a1[2].u64[0];
    v13 = a1->i64[1];
    v14 = a1[1].i64[0];
    v12 = v11 >> 9;
  }

  v19 = (v13 + 8 * v12);
  if (v14 == v13)
  {
    v20 = 0;
  }

  else
  {
    v20 = *v19 + 8 * (v11 & 0x1FF);
  }

  v119.n128_u64[0] = v13 + 8 * v12;
  v119.n128_u64[1] = v20;
  v118 = v116;
  v26 = *(&v117 + 1);
  v27 = v117;
  if (v17 >= v10)
  {
    v28 = *(&v117 + 1);
    if (!v10)
    {
      goto LABEL_116;
    }

    goto LABEL_105;
  }

  if (v17 >= v10 >> 1)
  {
    v37 = v17 - v10 + ((*(&v117 + 1) - *v117) >> 3);
    if (v37 < 1)
    {
      v76 = 511 - v37;
      v27 = (v117 - 8 * (v76 >> 9));
      v28 = *v27 + 8 * (~v76 & 0x1FF);
    }

    else
    {
      v27 = (v117 + 8 * (v37 >> 9));
      v28 = *v27 + 8 * (v37 & 0x1FF);
    }

    v77 = &v116;
  }

  else
  {
    v28 = *(&v115 + 1);
    v27 = v115;
    if (v17)
    {
      v29 = v17 + ((*(&v115 + 1) - *v115) >> 3);
      if (v29 < 1)
      {
        v78 = 511 - v29;
        v27 = (v115 - 8 * (v78 >> 9));
        v28 = *v27 + 8 * (~v78 & 0x1FF);
      }

      else
      {
        v27 = (v115 + 8 * (v29 >> 9));
        v28 = *v27 + 8 * (v29 & 0x1FF);
      }
    }

    v77 = &v114;
  }

  v118 = *v77;
  if (*(&v117 + 1) != v28)
  {
    v79 = *v19;
    v80 = v27;
    v81 = v28;
    while (1)
    {
      if (v20 == v79)
      {
        v82 = *--v19;
        v79 = v82;
        v20 = v82 + 4096;
      }

      v81 += 8;
      if (v81 - *v80 == 4096)
      {
        break;
      }

      v84 = v81;
      if (v81 == *v80)
      {
        goto LABEL_102;
      }

LABEL_103:
      *(v20 - 8) = *(v84 - 8);
      v20 -= 8;
      a1[2] = vaddq_s64(a1[2], xmmword_1E309DBF0);
      if (v26 == v81)
      {
        goto LABEL_104;
      }
    }

    v83 = v80[1];
    ++v80;
    v81 = v83;
LABEL_102:
    v84 = *(v80 - 1) + 4096;
    goto LABEL_103;
  }

LABEL_104:
  v10 = v17;
  if (v17)
  {
LABEL_105:
    v85 = std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:nn200100](&v119, v10);
    v87 = v85;
    v88 = v86;
    v89 = v119.n128_u64[1];
    if (v119.n128_u64[1] != v86)
    {
      v90 = *v19;
      v91 = v85;
      v92 = v86;
      do
      {
        if (v20 == v90)
        {
          v93 = *--v19;
          v90 = v93;
          v20 = v93 + 4096;
        }

        if (v92 == *v91)
        {
          v94 = *--v91;
          v92 = (v94 + 4096);
        }

        v95 = *(v92 - 1);
        v92 -= 8;
        *(v20 - 8) = v95;
        v20 -= 8;
        a1[2] = vaddq_s64(a1[2], xmmword_1E309DBF0);
      }

      while (v92 != v89);
    }

    if (v10 >= v17)
    {
      v98 = v119.n128_u64[0];
    }

    else
    {
      v96 = std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:nn200100](&v119, v17);
      v121 = v119;
      std::__for_each_segment[abi:nn200100]<std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>>>(v87, v88, v96, v97, &v121);
      v89 = v121.n128_u64[1];
      v98 = v121.n128_u64[0];
      v119 = v121;
    }

    v120 = v118;
    v99 = *(&v115 + 1);
    if (*(&v115 + 1) != v28)
    {
      v103 = v115;
      v104 = *v98;
      v105 = (*(&v115 + 1) - *v115) >> 3;
      while (1)
      {
        v106 = (v104 - v89 + 4096) >> 3;
        v107 = v28 - *v27;
        if (((v27 - v103) << 6) - v105 + (v107 >> 3) < v106)
        {
          v106 = ((v27 - v103) << 6) - v105 + (v107 >> 3);
        }

        v121 = v120;
        if (v106)
        {
          v108 = *v27;
          v109 = ((v28 - *v27) >> 3) - v106;
          if (v109 < 1)
          {
            v110 = v27[-((511 - v109) >> 9)] + 8 * (~(511 - v109) & 0x1FF);
          }

          else
          {
            v110 = *(v27 + ((v109 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v109 & 0x1FF);
          }

          while (v110 != v28)
          {
            if (v28 == v108)
            {
              v112 = *--v27;
              v108 = v112;
              v111 = (v112 + 4088);
              v28 = v112 + 4096;
            }

            else
            {
              v111 = (v28 - 8);
            }

            *v89 = *v111;
            v89 += 8;
            v28 -= 8;
          }
        }

        v120 = v121;
        if (v99 == v28)
        {
          break;
        }

        v113 = v98[1];
        ++v98;
        v104 = v113;
        v89 = v113;
      }
    }
  }

LABEL_116:
  v100 = a1->i64[1];
  if (a1[1].i64[0] == v100)
  {
    v101 = 0;
  }

  else
  {
    v101 = *(v100 + 8 * (a1[2].i64[0] >> 9)) + 8 * (a1[2].i64[0] & 0x1FF);
  }

  v121.n128_u64[0] = v100 + 8 * (a1[2].i64[0] >> 9);
  v121.n128_u64[1] = v101;
  return std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:nn200100](&v121, v17);
}

void std::__tree<std::__value_type<re::Vector2<float>,re::pathprocessing::Node>,std::__map_value_compare<re::Vector2<float>,std::__value_type<re::Vector2<float>,re::pathprocessing::Node>,re::pathprocessing::MathUtils::LexCompare,true>,std::allocator<std::__value_type<re::Vector2<float>,re::pathprocessing::Node>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<re::Vector2<float>,re::pathprocessing::Node>,std::__map_value_compare<re::Vector2<float>,std::__value_type<re::Vector2<float>,re::pathprocessing::Node>,re::pathprocessing::MathUtils::LexCompare,true>,std::allocator<std::__value_type<re::Vector2<float>,re::pathprocessing::Node>>>::destroy(*a1);
    std::__tree<std::__value_type<re::Vector2<float>,re::pathprocessing::Node>,std::__map_value_compare<re::Vector2<float>,std::__value_type<re::Vector2<float>,re::pathprocessing::Node>,re::pathprocessing::MathUtils::LexCompare,true>,std::allocator<std::__value_type<re::Vector2<float>,re::pathprocessing::Node>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      a1[7] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t *std::__tree<std::__value_type<re::Vector2<float>,re::pathprocessing::Node>,std::__map_value_compare<re::Vector2<float>,std::__value_type<re::Vector2<float>,re::pathprocessing::Node>,re::pathprocessing::MathUtils::LexCompare,true>,std::allocator<std::__value_type<re::Vector2<float>,re::pathprocessing::Node>>>::__emplace_unique_key_args<re::Vector2<float>,std::piecewise_construct_t const&,std::tuple<re::Vector2<float> const&>,std::tuple<>>(uint64_t **a1, void **a2, float a3, float a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_15:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v4;
      v6 = *(v4 + 8);
      if (v6 <= a3)
      {
        break;
      }

LABEL_5:
      v4 = *v4;
      if (!*v5)
      {
        goto LABEL_15;
      }
    }

    if (v6 != a3)
    {
      if (v6 >= a3)
      {
        return v4;
      }

      goto LABEL_14;
    }

    v7 = *(v4 + 9);
    if (v7 > a4)
    {
      goto LABEL_5;
    }

    if (v6 >= a3 && v7 >= a4)
    {
      return v4;
    }

LABEL_14:
    v4 = v4[1];
    if (!v4)
    {
      goto LABEL_15;
    }
  }
}

void std::deque<unsigned long>::__add_back_capacity(unint64_t *a1)
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
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(a1, &v9);
}

void std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(a1, v11);
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

void std::__split_buffer<unsigned long *>::emplace_front<unsigned long *>(const void **a1, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(a1, v9);
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

void std::__split_buffer<unsigned long *>::emplace_back<unsigned long *>(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(a1[4], v11);
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

void std::__split_buffer<unsigned long *>::emplace_front<unsigned long *&>(const void **a1, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(a1[4], v9);
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,false>(unint64_t result, unint64_t a2, uint64_t **a3, uint64_t a4, char a5)
{
  v6 = a3;
  v8 = result;
LABEL_2:
  v181 = (a2 - 16);
  v164 = (a2 - 48);
  v167 = (a2 - 32);
  v177 = a2;
  while (1)
  {
    v9 = (a2 - v8) >> 4;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3uLL:
          v64 = v6[1];
          v65 = **v6;

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(v8, (v8 + 16), v181, v65, v64);
        case 4uLL:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(v8, v8 + 16, v8 + 32, v181, v6);
        case 5uLL:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(v8, (v8 + 16), (v8 + 32), v8 + 48, v181, v6);
      }

      goto LABEL_10;
    }

    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      break;
    }

LABEL_10:
    v179 = v8;
    if (v9 <= 23)
    {
      v66 = v8 + 16;
      v68 = v8 == a2 || v66 == a2;
      if (a5)
      {
        if (v68)
        {
          return result;
        }

        v69 = 0;
        v70 = v6[1];
        v71 = **v6;
        v72 = v8;
        while (1)
        {
          v73 = v72;
          v72 = v66;
          v74 = (v71 + 72 * *v73);
          v75 = *v70;
          re::pathprocessing::ContinuousEdge::getIndex(&v192, (v71 + 72 * *(v73 + 16)), *v70, *(v73 + 24));
          re::pathprocessing::ContinuousEdge::getIndex(&v191, v74, v75, *(v73 + 8));
          result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
          if (result)
          {
            if (result != -1)
            {
              goto LABEL_216;
            }

            v76 = *(v73 + 24);
          }

          else
          {
            v76 = *(v73 + 24);
            if (v76 == *(v73 + 8))
            {
              if (v76)
              {
                if (*v72 <= *v73)
                {
                  goto LABEL_216;
                }
              }

              else
              {
                if (*v72 >= *v73)
                {
                  goto LABEL_216;
                }

                v76 = 0;
              }
            }

            else if (v76)
            {
              goto LABEL_216;
            }
          }

          v77 = *(v73 + 16);
          *(v73 + 16) = *v73;
          *(v72 + 8) = *(v73 + 8);
          v78 = v8;
          if (v73 == v8)
          {
            goto LABEL_215;
          }

          v182 = v72;
          v187 = v77;
          v79 = (v71 + 72 * v77);
          v80 = v69;
          while (1)
          {
            v81 = v8 + v80;
            v82 = (v71 + 72 * *(v81 - 16));
            v83 = *v70;
            re::pathprocessing::ContinuousEdge::getIndex(&v192, v79, *v70, v76);
            re::pathprocessing::ContinuousEdge::getIndex(&v191, v82, v83, *(v81 - 8));
            result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
            if (result)
            {
              if (result != -1)
              {
                goto LABEL_213;
              }

              goto LABEL_211;
            }

            if (v76 != *(v81 - 8))
            {
              if (v76)
              {
                v8 = v179;
                v78 = v179 + v80;
                goto LABEL_214;
              }

              goto LABEL_211;
            }

            v84 = *(v81 - 16);
            if (!v76)
            {
              break;
            }

            if (v187 <= v84)
            {
              goto LABEL_213;
            }

LABEL_211:
            v73 -= 16;
            v85 = v179 + v80;
            *v85 = *(v81 - 16);
            v86 = *(v81 - 8);
            v8 = v179;
            *(v85 + 8) = v86;
            v80 -= 16;
            if (!v80)
            {
              v78 = v179;
              goto LABEL_214;
            }
          }

          if (v187 < v84)
          {
            goto LABEL_211;
          }

LABEL_213:
          v78 = v73;
          v8 = v179;
LABEL_214:
          v72 = v182;
          v77 = v187;
LABEL_215:
          *v78 = v77;
          *(v78 + 8) = v76;
LABEL_216:
          v66 = v72 + 16;
          v69 += 16;
          if (v72 + 16 == v177)
          {
            return result;
          }
        }
      }

      if (v68)
      {
        return result;
      }

      v150 = *v6;
      v151 = v6[1];
      v152 = *v150;
      while (1)
      {
        v153 = v8;
        v8 = v66;
        v154 = (v152 + 72 * *v153);
        v155 = *v151;
        re::pathprocessing::ContinuousEdge::getIndex(&v192, (v152 + 72 * *(v153 + 16)), *v151, *(v153 + 24));
        re::pathprocessing::ContinuousEdge::getIndex(&v191, v154, v155, *(v153 + 8));
        result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
        if (result)
        {
          if (result != -1)
          {
            goto LABEL_349;
          }

          v156 = *(v153 + 24);
        }

        else
        {
          v156 = *(v153 + 24);
          if (v156 == *(v153 + 8))
          {
            if (v156)
            {
              if (*v8 <= *v153)
              {
                goto LABEL_349;
              }
            }

            else
            {
              if (*v8 >= *v153)
              {
                goto LABEL_349;
              }

              v156 = 0;
            }
          }

          else if (v156)
          {
            goto LABEL_349;
          }
        }

        v180 = v8;
        v157 = *v8;
        do
        {
          while (1)
          {
            while (1)
            {
              while (1)
              {
                v158 = v153;
                *(v153 + 16) = *v153;
                *(v153 + 24) = *(v153 + 8);
                v159 = *(v153 - 16);
                v153 -= 16;
                v160 = *v151;
                re::pathprocessing::ContinuousEdge::getIndex(&v192, (v152 + 72 * v157), *v151, v156);
                re::pathprocessing::ContinuousEdge::getIndex(&v191, (v152 + 72 * v159), v160, *(v158 - 8));
                result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
                if (!result)
                {
                  break;
                }

                if (result != -1)
                {
                  goto LABEL_348;
                }
              }

              if (v156 == *(v158 - 8))
              {
                break;
              }

              if (v156)
              {
                goto LABEL_348;
              }
            }

            if (!v156)
            {
              break;
            }

            if (v157 <= *v153)
            {
              goto LABEL_348;
            }
          }
        }

        while (v157 < *v153);
LABEL_348:
        *v158 = v157;
        *(v158 + 8) = v156;
        a2 = v177;
        v8 = v180;
LABEL_349:
        v66 = v8 + 16;
        if (v8 + 16 == a2)
        {
          return result;
        }
      }
    }

    if (!a4)
    {
      if (v8 == a2)
      {
        return result;
      }

      v188 = (a2 - v8) >> 4;
      v87 = v10 >> 1;
      v88 = v6[1];
      v165 = *v6;
      v89 = v10 >> 1;
      while (1)
      {
        v90 = v89;
        if (v87 < v89)
        {
          goto LABEL_273;
        }

        v91 = (2 * v89) | 1;
        v92 = v8 + 16 * v91;
        v93 = 2 * v89 + 2;
        v94 = *v165;
        v95 = *v88;
        v175 = v89;
        if (v93 >= v188)
        {
          goto LABEL_225;
        }

        v96 = (v94 + 72 * *(v92 + 16));
        re::pathprocessing::ContinuousEdge::getIndex(&v192, (v94 + 72 * *v92), v95, *(v92 + 8));
        re::pathprocessing::ContinuousEdge::getIndex(&v191, v96, v95, *(v92 + 24));
        v97 = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
        if (!v97)
        {
          break;
        }

        v90 = v175;
        if (v97 == -1)
        {
          goto LABEL_224;
        }

LABEL_225:
        v98 = v8 + 16 * v90;
        v99 = (v94 + 72 * *v98);
        re::pathprocessing::ContinuousEdge::getIndex(&v192, (v94 + 72 * *v92), v95, *(v92 + 8));
        re::pathprocessing::ContinuousEdge::getIndex(&v191, v99, v95, *(v98 + 8));
        result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
        if (result)
        {
          v90 = v175;
          if (result == -1)
          {
            goto LABEL_273;
          }

          v100 = *(v98 + 8);
          v101 = *(v92 + 8);
        }

        else
        {
          v101 = *(v92 + 8);
          v100 = *(v98 + 8);
          if (v101 == v100)
          {
            v102 = *v92;
            v103 = *v98;
            if (v101)
            {
              v100 = *(v92 + 8);
              v104 = v102 > v103;
              v90 = v175;
              if (v104)
              {
                goto LABEL_273;
              }
            }

            else
            {
              v107 = v102 >= v103;
              v90 = v175;
              if (!v107)
              {
                goto LABEL_273;
              }

              v101 = 0;
              v100 = 0;
            }
          }

          else
          {
            v90 = v175;
            if (!v101)
            {
              goto LABEL_273;
            }
          }
        }

        v108 = *v98;
        *v98 = *v92;
        *(v98 + 8) = v101;
        v168 = v108;
        if (v87 < v91)
        {
          goto LABEL_272;
        }

        v183 = (v94 + 72 * v108);
        v171 = v100;
        while (1)
        {
          v109 = v92;
          v110 = 2 * v91;
          v91 = (2 * v91) | 1;
          v92 = v8 + 16 * v91;
          v111 = v110 + 2;
          v112 = *v88;
          if (v110 + 2 >= v188)
          {
            goto LABEL_250;
          }

          v113 = v88;
          v114 = v87;
          v115 = (v94 + 72 * *(v92 + 16));
          re::pathprocessing::ContinuousEdge::getIndex(&v192, (v94 + 72 * *v92), v112, *(v92 + 8));
          re::pathprocessing::ContinuousEdge::getIndex(&v191, v115, v112, *(v92 + 24));
          v116 = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
          if (v116)
          {
            v87 = v114;
            v88 = v113;
            v100 = v171;
            if (v116 != -1)
            {
              goto LABEL_250;
            }

LABEL_249:
            v92 += 16;
            v91 = v111;
            goto LABEL_250;
          }

          v119 = *(v92 + 8);
          if (v119 == *(v92 + 24))
          {
            v120 = *(v92 + 16);
            v87 = v114;
            v88 = v113;
            if (v119)
            {
              v100 = v171;
              if (*v92 > v120)
              {
                goto LABEL_249;
              }
            }

            else
            {
              v100 = v171;
              if (*v92 < v120)
              {
                goto LABEL_249;
              }
            }
          }

          else
          {
            v87 = v114;
            v88 = v113;
            v100 = v171;
            if (!v119)
            {
              goto LABEL_249;
            }
          }

LABEL_250:
          re::pathprocessing::ContinuousEdge::getIndex(&v192, (v94 + 72 * *v92), v112, *(v92 + 8));
          re::pathprocessing::ContinuousEdge::getIndex(&v191, v183, v112, v100);
          result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
          if (result)
          {
            if (result == -1)
            {
              v92 = v109;
              v8 = v179;
              goto LABEL_272;
            }

            v117 = *(v92 + 8);
            v8 = v179;
            goto LABEL_266;
          }

          v117 = *(v92 + 8);
          if (v117 != v100)
          {
            v8 = v179;
            if (!v117)
            {
              break;
            }

            goto LABEL_266;
          }

          v118 = *v92;
          v8 = v179;
          if (v117)
          {
            v117 = v100;
            if (v118 > v168)
            {
              break;
            }

            goto LABEL_266;
          }

          v117 = v100;
          if (v118 < v168)
          {
            break;
          }

LABEL_266:
          *v109 = *v92;
          *(v109 + 8) = v117;
          if (v87 < v91)
          {
            goto LABEL_272;
          }
        }

        v92 = v109;
LABEL_272:
        *v92 = v168;
        *(v92 + 8) = v100;
        v90 = v175;
LABEL_273:
        v89 = v90 - 1;
        if (!v90)
        {
          v121 = a3;
          v166 = *a3;
          v169 = a3[1];
          v122 = v177;
          v123 = v188;
          while (1)
          {
            v124 = 0;
            v176 = *v8;
            v178 = v122;
            v172 = *(v8 + 8);
            v184 = v121[1];
            v189 = *v121;
            v125 = v8;
            do
            {
              v126 = v125;
              v127 = v125 + 16 * v124;
              v125 = v127 + 16;
              v128 = 2 * v124;
              v124 = (2 * v124) | 1;
              v129 = v128 + 2;
              if (v128 + 2 >= v123)
              {
                goto LABEL_282;
              }

              v130 = (v127 + 32);
              v131 = (*v189 + 72 * *(v127 + 32));
              v132 = *v184;
              re::pathprocessing::ContinuousEdge::getIndex(&v192, (*v189 + 72 * *(v127 + 16)), *v184, *(v127 + 24));
              re::pathprocessing::ContinuousEdge::getIndex(&v191, v131, v132, *(v127 + 40));
              result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
              if (result)
              {
                if (result != -1)
                {
                  goto LABEL_282;
                }

LABEL_281:
                v125 = v127 + 32;
                v124 = v129;
                goto LABEL_282;
              }

              v133 = *(v127 + 24);
              if (v133 == *(v127 + 40))
              {
                if (v133)
                {
                  if (*v125 > *v130)
                  {
                    goto LABEL_281;
                  }
                }

                else if (*v125 < *v130)
                {
                  goto LABEL_281;
                }
              }

              else if (!v133)
              {
                goto LABEL_281;
              }

LABEL_282:
              *v126 = *v125;
              *(v126 + 8) = *(v125 + 8);
            }

            while (v124 <= ((v123 - 2) >> 1));
            if (v125 == v178 - 16)
            {
              *v125 = v176;
              *(v125 + 8) = v172;
              goto LABEL_321;
            }

            *v125 = *(v178 - 16);
            *(v125 + 8) = *(v178 - 8);
            *(v178 - 16) = v176;
            *(v178 - 8) = v172;
            v134 = (v125 - v179 + 16) >> 4;
            v135 = v134 - 2;
            if (v134 < 2)
            {
              goto LABEL_321;
            }

            v136 = v135 >> 1;
            v137 = v179 + 16 * (v135 >> 1);
            v185 = *v166;
            v190 = v123;
            v138 = (*v166 + 72 * *v125);
            v139 = *v169;
            re::pathprocessing::ContinuousEdge::getIndex(&v192, (*v166 + 72 * *v137), *v169, *(v137 + 8));
            re::pathprocessing::ContinuousEdge::getIndex(&v191, v138, v139, *(v125 + 8));
            result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
            if (result)
            {
              v123 = v190;
              if (result != -1)
              {
                goto LABEL_321;
              }

              v140 = *(v125 + 8);
              v141 = *(v137 + 8);
            }

            else
            {
              v141 = *(v137 + 8);
              v140 = *(v125 + 8);
              if (v141 == v140)
              {
                v142 = *v137;
                v143 = *v125;
                v123 = v190;
                if (v141)
                {
                  v140 = *(v137 + 8);
                  if (v142 <= v143)
                  {
                    goto LABEL_321;
                  }
                }

                else
                {
                  if (v142 >= v143)
                  {
                    goto LABEL_321;
                  }

                  v141 = 0;
                  v140 = 0;
                }
              }

              else
              {
                v123 = v190;
                if (v141)
                {
                  goto LABEL_321;
                }
              }
            }

            v144 = *v125;
            *v125 = *v137;
            *(v125 + 8) = v141;
            if (v135 < 2)
            {
              goto LABEL_320;
            }

            while (2)
            {
              v145 = v137;
              v146 = v136 - 1;
              v136 = (v136 - 1) >> 1;
              v137 = v179 + 16 * v136;
              v147 = *v169;
              re::pathprocessing::ContinuousEdge::getIndex(&v192, (v185 + 72 * *v137), *v169, *(v137 + 8));
              re::pathprocessing::ContinuousEdge::getIndex(&v191, (v185 + 72 * v144), v147, v140);
              result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
              if (result)
              {
                if (result != -1)
                {
                  break;
                }

                v148 = *(v137 + 8);
                goto LABEL_317;
              }

              v148 = *(v137 + 8);
              if (v148 != v140)
              {
                if (v148)
                {
                  break;
                }

                goto LABEL_317;
              }

              v149 = *v137;
              if (v148)
              {
                v148 = v140;
                if (v149 <= v144)
                {
                  break;
                }

                goto LABEL_317;
              }

              v148 = v140;
              if (v149 < v144)
              {
LABEL_317:
                *v145 = *v137;
                *(v145 + 8) = v148;
                if (v146 <= 1)
                {
                  goto LABEL_320;
                }

                continue;
              }

              break;
            }

            v137 = v145;
LABEL_320:
            *v137 = v144;
            *(v137 + 8) = v140;
            v123 = v190;
LABEL_321:
            v122 = v178 - 16;
            v104 = v123-- <= 2;
            v8 = v179;
            v121 = a3;
            if (v104)
            {
              return result;
            }
          }
        }
      }

      v105 = *(v92 + 8);
      if (v105 == *(v92 + 24))
      {
        v106 = *(v92 + 16);
        if (v105)
        {
          v90 = v175;
          if (*v92 <= v106)
          {
            goto LABEL_225;
          }
        }

        else
        {
          v90 = v175;
          if (*v92 >= v106)
          {
            goto LABEL_225;
          }
        }
      }

      else
      {
        v90 = v175;
        if (v105)
        {
          goto LABEL_225;
        }
      }

LABEL_224:
      v92 += 16;
      v91 = v93;
      goto LABEL_225;
    }

    v11 = v9 >> 1;
    v12 = v8 + 16 * (v9 >> 1);
    v13 = v6[1];
    v14 = **v6;
    if (v9 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>((v8 + 16 * (v9 >> 1)), v8, v181, v14, v13);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(v8, (v8 + 16 * (v9 >> 1)), v181, v14, v13);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>((v8 + 16), (v12 - 16), v167, **v6, v6[1]);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>((v8 + 32), (v8 + 16 + 16 * v11), v164, **v6, v6[1]);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>((v12 - 16), v12, (v8 + 16 + 16 * v11), **v6, v6[1]);
      v15 = *v8;
      *v8 = *v12;
      *v12 = v15;
      LODWORD(v15) = *(v8 + 8);
      *(v8 + 8) = *(v12 + 8);
      *(v12 + 8) = v15;
    }

    v16 = v6[1];
    v17 = **v6;
    v186 = v16;
    v18 = *v16;
    v174 = a4 - 1;
    if (a5)
    {
      goto LABEL_18;
    }

    v19 = (v17 + 72 * *v8);
    re::pathprocessing::ContinuousEdge::getIndex(&v192, (v17 + 72 * *(v8 - 16)), v18, *(v8 - 8));
    re::pathprocessing::ContinuousEdge::getIndex(&v191, v19, v18, *(v8 + 8));
    v20 = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
    if (v20)
    {
      if (v20 != -1)
      {
        goto LABEL_94;
      }

LABEL_18:
      v21 = 0;
      v22 = *v8;
      v23 = *(v8 + 8);
      v24 = (v17 + 72 * *v8);
      while (1)
      {
        v25 = v8 + v21;
        re::pathprocessing::ContinuousEdge::getIndex(&v192, (v17 + 72 * *(v8 + v21 + 16)), v18, *(v8 + v21 + 24));
        re::pathprocessing::ContinuousEdge::getIndex(&v191, v24, v18, v23);
        v26 = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
        if (v26)
        {
          if (v26 != -1)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v27 = *(v25 + 24);
        if (v27 == v23)
        {
          break;
        }

        if (v27)
        {
          goto LABEL_30;
        }

LABEL_29:
        v21 += 16;
      }

      v28 = *(v25 + 16);
      if (v27)
      {
        if (v28 <= v22)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

      if (v28 < v22)
      {
        goto LABEL_29;
      }

LABEL_30:
      v29 = v8 + v21 + 16;
      i = v181;
      if (v21)
      {
        while (1)
        {
          re::pathprocessing::ContinuousEdge::getIndex(&v192, (v17 + 72 * *i), v18, *(i + 8));
          re::pathprocessing::ContinuousEdge::getIndex(&v191, v24, v18, v23);
          v31 = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
          if (v31)
          {
            if (v31 == -1)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v32 = *(i + 8);
            if (v32 == v23)
            {
              if (v32)
              {
                if (*i > v22)
                {
                  goto LABEL_59;
                }
              }

              else if (*i < v22)
              {
                goto LABEL_59;
              }
            }

            else if (!v32)
            {
              goto LABEL_59;
            }
          }

          i -= 16;
        }
      }

      i = v177;
      if (v29 < v177)
      {
        for (i = v181; ; i -= 16)
        {
          re::pathprocessing::ContinuousEdge::getIndex(&v192, (v17 + 72 * *i), v18, *(i + 8));
          re::pathprocessing::ContinuousEdge::getIndex(&v191, v24, v18, v23);
          v33 = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
          if (v33)
          {
            if (v29 >= i || v33 == -1)
            {
              break;
            }
          }

          else
          {
            v34 = *(i + 8);
            if (v34 == v23)
            {
              v35 = *i;
              if (v34)
              {
                if (v29 >= i || v35 > v22)
                {
                  break;
                }
              }

              else if (v29 >= i || v35 < v22)
              {
                break;
              }
            }

            else if (v29 >= i || !v34)
            {
              break;
            }
          }
        }
      }

LABEL_59:
      v8 += v21 + 16;
      if (v29 < i)
      {
        v36 = i;
        do
        {
          v37 = *v8;
          *v8 = *v36;
          *v36 = v37;
          LODWORD(v37) = *(v8 + 8);
          *(v8 + 8) = *(v36 + 8);
          *(v36 + 8) = v37;
          v38 = *v186;
          do
          {
            while (1)
            {
              while (1)
              {
                v39 = *(v8 + 16);
                v8 += 16;
                re::pathprocessing::ContinuousEdge::getIndex(&v192, (v17 + 72 * v39), v38, *(v8 + 8));
                re::pathprocessing::ContinuousEdge::getIndex(&v191, v24, v38, v23);
                v40 = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
                if (!v40)
                {
                  break;
                }

                if (v40 != -1)
                {
                  goto LABEL_72;
                }
              }

              v41 = *(v8 + 8);
              if (v41 != v23)
              {
                break;
              }

              if (v41)
              {
                if (*v8 <= v22)
                {
                  goto LABEL_72;
                }
              }

              else if (*v8 >= v22)
              {
                goto LABEL_72;
              }
            }
          }

          while (!v41);
          do
          {
            while (1)
            {
              while (1)
              {
LABEL_72:
                while (1)
                {
                  v42 = *(v36 - 16);
                  v36 -= 16;
                  re::pathprocessing::ContinuousEdge::getIndex(&v192, (v17 + 72 * v42), v38, *(v36 + 8));
                  re::pathprocessing::ContinuousEdge::getIndex(&v191, v24, v38, v23);
                  v43 = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
                  if (!v43)
                  {
                    break;
                  }

                  if (v43 == -1)
                  {
                    goto LABEL_82;
                  }
                }

                v44 = *(v36 + 8);
                if (v44 == v23)
                {
                  break;
                }

                if (!v44)
                {
                  goto LABEL_82;
                }
              }

              if (!v44)
              {
                break;
              }

              if (*v36 > v22)
              {
                goto LABEL_82;
              }
            }
          }

          while (*v36 >= v22);
LABEL_82:
          ;
        }

        while (v8 < v36);
      }

      if (v8 - 16 != v179)
      {
        *v179 = *(v8 - 16);
        *(v179 + 8) = *(v8 - 8);
      }

      *(v8 - 16) = v22;
      *(v8 - 8) = v23;
      a4 = v174;
      a2 = v177;
      v6 = a3;
      if (v29 < i)
      {
LABEL_88:
        result = std::__introsort<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,false>(v179, v8 - 16, a3, v174, a5 & 1);
        a5 = 0;
      }

      else
      {
        v45 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *>(v179, v8 - 16, a3);
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *>(v8, v177, a3);
        if (result)
        {
          a2 = v8 - 16;
          v8 = v179;
          if (v45)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v45)
        {
          goto LABEL_88;
        }
      }
    }

    else
    {
      v46 = *(v8 - 8);
      if (v46 == *(v8 + 8))
      {
        v47 = *(v8 - 16);
        if (v46)
        {
          if (v47 > *v8)
          {
            goto LABEL_18;
          }
        }

        else if (v47 < *v8)
        {
          goto LABEL_18;
        }
      }

      else if (!v46)
      {
        goto LABEL_18;
      }

LABEL_94:
      v48 = *v8;
      v49 = *(v8 + 8);
      v50 = (v17 + 72 * *v8);
      v51 = (v17 + 72 * *(v177 - 16));
      re::pathprocessing::ContinuousEdge::getIndex(&v192, v50, v18, v49);
      re::pathprocessing::ContinuousEdge::getIndex(&v191, v51, v18, *(v177 - 8));
      result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
      if (result)
      {
        if (result != -1)
        {
          goto LABEL_96;
        }

        do
        {
          while (1)
          {
            while (1)
            {
LABEL_115:
              while (1)
              {
                v53 = *(v8 + 16);
                v8 += 16;
                re::pathprocessing::ContinuousEdge::getIndex(&v192, v50, v18, v49);
                re::pathprocessing::ContinuousEdge::getIndex(&v191, (v17 + 72 * v53), v18, *(v8 + 8));
                result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
                if (!result)
                {
                  break;
                }

                if (result == -1)
                {
                  goto LABEL_125;
                }
              }

              if (v49 == *(v8 + 8))
              {
                break;
              }

              if (!v49)
              {
                goto LABEL_125;
              }
            }

            if (!v49)
            {
              break;
            }

            if (v48 > *v8)
            {
              goto LABEL_125;
            }
          }
        }

        while (v48 >= *v8);
      }

      else
      {
        if (v49 == *(v177 - 8))
        {
          if (v49)
          {
            if (v48 > *v181)
            {
              goto LABEL_115;
            }
          }

          else if (v48 < *v181)
          {
            goto LABEL_115;
          }
        }

        else if (!v49)
        {
          goto LABEL_115;
        }

LABEL_96:
        while (1)
        {
          v8 += 16;
          if (v8 >= v177)
          {
            break;
          }

          v52 = (v17 + 72 * *v8);
          re::pathprocessing::ContinuousEdge::getIndex(&v192, v50, v18, v49);
          re::pathprocessing::ContinuousEdge::getIndex(&v191, v52, v18, *(v8 + 8));
          result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
          if (result)
          {
            if (result == -1)
            {
              break;
            }
          }

          else if (v49 == *(v8 + 8))
          {
            if (v49)
            {
              if (v48 > *v8)
              {
                break;
              }
            }

            else if (v48 < *v8)
            {
              break;
            }
          }

          else if (!v49)
          {
            break;
          }
        }
      }

LABEL_125:
      j = v177;
      if (v8 < v177)
      {
        for (j = v181; ; j -= 16)
        {
          v55 = (v17 + 72 * *j);
          re::pathprocessing::ContinuousEdge::getIndex(&v192, v50, v18, v49);
          re::pathprocessing::ContinuousEdge::getIndex(&v191, v55, v18, *(j + 8));
          result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
          if (result)
          {
            if (result != -1)
            {
              break;
            }
          }

          else if (v49 == *(j + 8))
          {
            if (v49)
            {
              if (v48 <= *j)
              {
                break;
              }
            }

            else if (v48 >= *j)
            {
              break;
            }
          }

          else if (v49)
          {
            break;
          }
        }
      }

LABEL_159:
      while (v8 < j)
      {
        v56 = *v8;
        *v8 = *j;
        *j = v56;
        LODWORD(v56) = *(v8 + 8);
        *(v8 + 8) = *(j + 8);
        *(j + 8) = v56;
        v57 = *v186;
        do
        {
          while (1)
          {
            while (1)
            {
              v58 = *(v8 + 16);
              v8 += 16;
              re::pathprocessing::ContinuousEdge::getIndex(&v192, v50, v57, v49);
              re::pathprocessing::ContinuousEdge::getIndex(&v191, (v17 + 72 * v58), v57, *(v8 + 8));
              v59 = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
              if (!v59)
              {
                break;
              }

              if (v59 == -1)
              {
                goto LABEL_149;
              }
            }

            if (v49 != *(v8 + 8))
            {
              break;
            }

            if (v49)
            {
              if (v48 > *v8)
              {
                goto LABEL_149;
              }
            }

            else if (v48 < *v8)
            {
              goto LABEL_149;
            }
          }
        }

        while (v49);
        do
        {
          while (1)
          {
            while (1)
            {
LABEL_149:
              while (1)
              {
                v60 = *(j - 16);
                j -= 16;
                re::pathprocessing::ContinuousEdge::getIndex(&v192, v50, v57, v49);
                re::pathprocessing::ContinuousEdge::getIndex(&v191, (v17 + 72 * v60), v57, *(j + 8));
                result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
                if (!result)
                {
                  break;
                }

                if (result != -1)
                {
                  goto LABEL_159;
                }
              }

              if (v49 == *(j + 8))
              {
                break;
              }

              if (v49)
              {
                goto LABEL_159;
              }
            }

            if (!v49)
            {
              break;
            }

            if (v48 <= *j)
            {
              goto LABEL_159;
            }
          }
        }

        while (v48 < *j);
      }

      if (v8 - 16 != v179)
      {
        *v179 = *(v8 - 16);
        *(v179 + 8) = *(v8 - 8);
      }

      a5 = 0;
      *(v8 - 16) = v48;
      *(v8 - 8) = v49;
      a4 = v174;
      a2 = v177;
      v6 = a3;
    }
  }

  v61 = **v6;
  v62 = (v61 + 72 * *v8);
  v63 = *v6[1];
  re::pathprocessing::ContinuousEdge::getIndex(&v192, (v61 + 72 * *(a2 - 16)), v63, *(a2 - 8));
  re::pathprocessing::ContinuousEdge::getIndex(&v191, v62, v63, *(v8 + 8));
  result = re::pathprocessing::ContinuousVertex::compareAngle(&v192, &v191);
  if (result)
  {
    if (result != -1)
    {
      return result;
    }
  }

  else
  {
    v161 = *(a2 - 8);
    if (v161 == *(v8 + 8))
    {
      v162 = *(a2 - 16);
      if (v161)
      {
        if (v162 <= *v8)
        {
          return result;
        }
      }

      else if (v162 >= *v8)
      {
        return result;
      }
    }

    else if (v161)
    {
      return result;
    }
  }

  v163 = *v8;
  *v8 = *(a2 - 16);
  *(a2 - 16) = v163;
  LODWORD(v163) = *(v8 + 8);
  *(v8 + 8) = *(a2 - 8);
  *(a2 - 8) = v163;
  return result;
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v33 = *a2;
  v9 = (a4 + 72 * *a2);
  v10 = *a1;
  v11 = (a4 + 72 * *a1);
  v12 = *(a2 + 2);
  v13 = *a5;
  re::pathprocessing::ContinuousEdge::getIndex(&v35, v9, *a5, v12);
  v14 = *(a1 + 2);
  re::pathprocessing::ContinuousEdge::getIndex(&v34, v11, v13, v14);
  v15 = re::pathprocessing::ContinuousVertex::compareAngle(&v35, &v34);
  if (!v15)
  {
    if (v12 == v14)
    {
      if (v12)
      {
        if (v33 <= v10)
        {
          goto LABEL_3;
        }
      }

      else if (v33 >= v10)
      {
        goto LABEL_3;
      }
    }

    else if (v12)
    {
      goto LABEL_3;
    }

LABEL_15:
    v30 = *a3;
    v31 = v10;
    v19 = *(a3 + 2);
    re::pathprocessing::ContinuousEdge::getIndex(&v35, (a4 + 72 * *a3), v13, v19);
    re::pathprocessing::ContinuousEdge::getIndex(&v34, v9, v13, v12);
    result = re::pathprocessing::ContinuousVertex::compareAngle(&v35, &v34);
    if (result)
    {
      if (result == -1)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (v19 == v12)
      {
        if (v19)
        {
          if (v30 <= v33)
          {
            goto LABEL_45;
          }
        }

        else if (v30 >= v33)
        {
          v12 = 0;
          goto LABEL_45;
        }

LABEL_40:
        *a1 = v30;
        *a3 = v31;
        *(a1 + 2) = v19;
        goto LABEL_57;
      }

      if (!v19)
      {
        goto LABEL_40;
      }
    }

LABEL_45:
    *a1 = v33;
    *a2 = v31;
    *(a1 + 2) = v12;
    *(a2 + 2) = v14;
    v27 = *a3;
    v28 = *(a3 + 2);
    v29 = *a5;
    re::pathprocessing::ContinuousEdge::getIndex(&v35, (a4 + 72 * *a3), *a5, v28);
    re::pathprocessing::ContinuousEdge::getIndex(&v34, v11, v29, v14);
    result = re::pathprocessing::ContinuousVertex::compareAngle(&v35, &v34);
    if (result)
    {
      if (result != -1)
      {
        return result;
      }
    }

    else if (v28 == v14)
    {
      if (v28)
      {
        if (v27 <= v31)
        {
          return result;
        }
      }

      else
      {
        if (v27 >= v31)
        {
          return result;
        }

        v14 = 0;
      }
    }

    else if (v28)
    {
      return result;
    }

    *a2 = v27;
    *a3 = v31;
    *(a2 + 2) = v28;
LABEL_57:
    *(a3 + 2) = v14;
    return result;
  }

  if (v15 == -1)
  {
    goto LABEL_15;
  }

LABEL_3:
  v16 = *a3;
  v17 = *(a3 + 2);
  re::pathprocessing::ContinuousEdge::getIndex(&v35, (a4 + 72 * *a3), v13, v17);
  re::pathprocessing::ContinuousEdge::getIndex(&v34, v9, v13, v12);
  result = re::pathprocessing::ContinuousVertex::compareAngle(&v35, &v34);
  if (result)
  {
    if (result != -1)
    {
      return result;
    }
  }

  else if (v17 == v12)
  {
    if (v17)
    {
      if (v16 <= v33)
      {
        return result;
      }
    }

    else
    {
      if (v16 >= v33)
      {
        return result;
      }

      v12 = 0;
    }
  }

  else if (v17)
  {
    return result;
  }

  *a2 = v16;
  *a3 = v33;
  *(a2 + 2) = v17;
  *(a3 + 2) = v12;
  v20 = *a2;
  v21 = (a4 + 72 * *a2);
  v22 = *a1;
  v23 = (a4 + 72 * *a1);
  v24 = *(a2 + 2);
  v25 = *a5;
  re::pathprocessing::ContinuousEdge::getIndex(&v35, v21, *a5, v24);
  v26 = *(a1 + 2);
  re::pathprocessing::ContinuousEdge::getIndex(&v34, v23, v25, v26);
  result = re::pathprocessing::ContinuousVertex::compareAngle(&v35, &v34);
  if (result)
  {
    if (result != -1)
    {
      return result;
    }

    goto LABEL_43;
  }

  if (v24 != v26)
  {
    if (v24)
    {
      return result;
    }

    goto LABEL_43;
  }

  if (!v24)
  {
    if (v20 >= v22)
    {
      return result;
    }

    v26 = 0;
    goto LABEL_43;
  }

  v26 = v24;
  if (v20 > v22)
  {
LABEL_43:
    *a1 = v20;
    *a2 = v22;
    *(a1 + 2) = v24;
    *(a2 + 2) = v26;
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(a1, a2, a3, **a5, a5[1]);
  v8 = *a4;
  v9 = a5[1];
  v10 = **a5;
  v11 = *a3;
  v12 = (v10 + 72 * *a3);
  v13 = *(a4 + 8);
  v14 = *v9;
  re::pathprocessing::ContinuousEdge::getIndex(&v32, (v10 + 72 * *a4), *v9, v13);
  v15 = *(a3 + 8);
  re::pathprocessing::ContinuousEdge::getIndex(&v31, v12, v14, v15);
  result = re::pathprocessing::ContinuousVertex::compareAngle(&v32, &v31);
  if (result)
  {
    if (result != -1)
    {
      return result;
    }
  }

  else if (v13 == v15)
  {
    if (v13)
    {
      v15 = v13;
      if (v8 <= v11)
      {
        return result;
      }
    }

    else
    {
      if (v8 >= v11)
      {
        return result;
      }

      v15 = 0;
    }
  }

  else if (v13)
  {
    return result;
  }

  *a3 = v8;
  *a4 = v11;
  *(a3 + 8) = v13;
  *(a4 + 8) = v15;
  v17 = *a3;
  v18 = *a2;
  v19 = (v10 + 72 * *a2);
  v20 = *(a3 + 8);
  v21 = *v9;
  re::pathprocessing::ContinuousEdge::getIndex(&v32, (v10 + 72 * *a3), *v9, v20);
  v22 = *(a2 + 8);
  re::pathprocessing::ContinuousEdge::getIndex(&v31, v19, v21, v22);
  result = re::pathprocessing::ContinuousVertex::compareAngle(&v32, &v31);
  if (result)
  {
    if (result != -1)
    {
      return result;
    }
  }

  else if (v20 == v22)
  {
    if (v20)
    {
      v22 = v20;
      if (v17 <= v18)
      {
        return result;
      }
    }

    else
    {
      if (v17 >= v18)
      {
        return result;
      }

      v22 = 0;
    }
  }

  else if (v20)
  {
    return result;
  }

  *a2 = v17;
  *a3 = v18;
  *(a2 + 8) = v20;
  *(a3 + 8) = v22;
  v23 = *a2;
  v24 = *a1;
  v25 = (v10 + 72 * *a1);
  v26 = *(a2 + 8);
  v27 = *v9;
  re::pathprocessing::ContinuousEdge::getIndex(&v32, (v10 + 72 * *a2), *v9, v26);
  v28 = *(a1 + 8);
  re::pathprocessing::ContinuousEdge::getIndex(&v31, v25, v27, v28);
  result = re::pathprocessing::ContinuousVertex::compareAngle(&v32, &v31);
  if (result)
  {
    if (result != -1)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (v26 != v28)
  {
    if (v26)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!v26)
  {
    if (v23 >= v24)
    {
      return result;
    }

    v28 = 0;
    goto LABEL_34;
  }

  v28 = v26;
  if (v23 > v24)
  {
LABEL_34:
    *a1 = v23;
    *a2 = v24;
    *(a1 + 8) = v26;
    *(a2 + 8) = v28;
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t **a6)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(a1, a2, a3, a4, a6);
  v10 = *a5;
  v11 = a6[1];
  v12 = **a6;
  v13 = *a4;
  v14 = (v12 + 72 * *a4);
  v15 = *(a5 + 2);
  v39 = v11;
  v16 = *v11;
  re::pathprocessing::ContinuousEdge::getIndex(&v41, (v12 + 72 * *a5), *v11, v15);
  v17 = *(a4 + 8);
  re::pathprocessing::ContinuousEdge::getIndex(&v40, v14, v16, v17);
  result = re::pathprocessing::ContinuousVertex::compareAngle(&v41, &v40);
  if (result)
  {
    if (result != -1)
    {
      return result;
    }
  }

  else if (v15 == v17)
  {
    if (v15)
    {
      v17 = v15;
      if (v10 <= v13)
      {
        return result;
      }
    }

    else
    {
      if (v10 >= v13)
      {
        return result;
      }

      v17 = 0;
    }
  }

  else if (v15)
  {
    return result;
  }

  *a4 = v10;
  *a5 = v13;
  *(a4 + 8) = v15;
  *(a5 + 2) = v17;
  v19 = *a4;
  v20 = *a3;
  v21 = (v12 + 72 * *a3);
  v22 = *(a4 + 8);
  v23 = *v39;
  re::pathprocessing::ContinuousEdge::getIndex(&v41, (v12 + 72 * *a4), *v39, v22);
  v24 = *(a3 + 2);
  re::pathprocessing::ContinuousEdge::getIndex(&v40, v21, v23, v24);
  result = re::pathprocessing::ContinuousVertex::compareAngle(&v41, &v40);
  if (result)
  {
    if (result != -1)
    {
      return result;
    }
  }

  else if (v22 == v24)
  {
    if (v22)
    {
      v24 = v22;
      if (v19 <= v20)
      {
        return result;
      }
    }

    else
    {
      if (v19 >= v20)
      {
        return result;
      }

      v24 = 0;
    }
  }

  else if (v22)
  {
    return result;
  }

  *a3 = v19;
  *a4 = v20;
  *(a3 + 2) = v22;
  *(a4 + 8) = v24;
  v25 = *a3;
  v26 = *a2;
  v27 = (v12 + 72 * *a2);
  v28 = *(a3 + 2);
  v29 = *v39;
  re::pathprocessing::ContinuousEdge::getIndex(&v41, (v12 + 72 * *a3), *v39, v28);
  v30 = *(a2 + 2);
  re::pathprocessing::ContinuousEdge::getIndex(&v40, v27, v29, v30);
  result = re::pathprocessing::ContinuousVertex::compareAngle(&v41, &v40);
  if (result)
  {
    if (result != -1)
    {
      return result;
    }
  }

  else if (v28 == v30)
  {
    if (v28)
    {
      v30 = v28;
      if (v25 <= v26)
      {
        return result;
      }
    }

    else
    {
      if (v25 >= v26)
      {
        return result;
      }

      v30 = 0;
    }
  }

  else if (v28)
  {
    return result;
  }

  *a2 = v25;
  *a3 = v26;
  *(a2 + 2) = v28;
  *(a3 + 2) = v30;
  v31 = *a2;
  v32 = *a1;
  v33 = (v12 + 72 * *a1);
  v34 = *(a2 + 2);
  v35 = *v39;
  re::pathprocessing::ContinuousEdge::getIndex(&v41, (v12 + 72 * *a2), *v39, v34);
  v36 = *(a1 + 2);
  re::pathprocessing::ContinuousEdge::getIndex(&v40, v33, v35, v36);
  result = re::pathprocessing::ContinuousVertex::compareAngle(&v41, &v40);
  if (result)
  {
    if (result != -1)
    {
      return result;
    }

    goto LABEL_45;
  }

  if (v34 != v36)
  {
    if (v34)
    {
      return result;
    }

    goto LABEL_45;
  }

  if (!v34)
  {
    if (v31 >= v32)
    {
      return result;
    }

    v36 = 0;
    goto LABEL_45;
  }

  v36 = v34;
  if (v31 > v32)
  {
LABEL_45:
    *a1 = v31;
    *a2 = v32;
    *(a1 + 2) = v34;
    *(a2 + 2) = v36;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v4 = a2;
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(a1, (a1 + 16), (a2 - 16), **a3, a3[1]);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(a1, a1 + 16, a1 + 32, a2 - 16, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(a1, (a1 + 16), (a1 + 32), a1 + 48, (a2 - 16), a3);
        return 1;
    }

LABEL_12:
    v15 = a1 + 32;
    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,0>(a1, (a1 + 16), (a1 + 32), **a3, a3[1]);
    v16 = a1 + 48;
    if (a1 + 48 == v4)
    {
      return 1;
    }

    v17 = 0;
    v34 = 0;
    v36 = a3[1];
    v18 = **a3;
    v32 = v4;
    while (1)
    {
      v35 = *v16;
      v19 = (v18 + 72 * *v16);
      v20 = (v18 + 72 * *v15);
      v21 = *v36;
      re::pathprocessing::ContinuousEdge::getIndex(&v38, v19, *v36, *(v16 + 8));
      re::pathprocessing::ContinuousEdge::getIndex(&v37, v20, v21, *(v15 + 8));
      v22 = re::pathprocessing::ContinuousVertex::compareAngle(&v38, &v37);
      if (v22)
      {
        if (v22 != -1)
        {
          goto LABEL_39;
        }

        v23 = *(v16 + 8);
      }

      else
      {
        v23 = *(v16 + 8);
        if (v23 == *(v15 + 8))
        {
          v24 = *v15;
          if (v23)
          {
            if (v35 <= v24)
            {
              goto LABEL_39;
            }
          }

          else
          {
            if (v35 >= v24)
            {
              goto LABEL_39;
            }

            v23 = 0;
          }
        }

        else if (v23)
        {
          goto LABEL_39;
        }
      }

      *v16 = *v15;
      *(v16 + 8) = *(v15 + 8);
      v33 = v17;
      v25 = v17;
      do
      {
        v26 = a1 + v25;
        v27 = (v18 + 72 * *(a1 + v25 + 16));
        v28 = *v36;
        re::pathprocessing::ContinuousEdge::getIndex(&v38, v19, *v36, v23);
        re::pathprocessing::ContinuousEdge::getIndex(&v37, v27, v28, *(a1 + v25 + 24));
        v29 = re::pathprocessing::ContinuousVertex::compareAngle(&v38, &v37);
        if (v29)
        {
          if (v29 != -1)
          {
            goto LABEL_38;
          }
        }

        else if (v23 == *(v26 + 24))
        {
          v30 = *(v26 + 16);
          if (v23)
          {
            if (v35 <= v30)
            {
              v15 = a1 + v25 + 32;
              goto LABEL_38;
            }
          }

          else if (v35 >= v30)
          {
            goto LABEL_38;
          }
        }

        else if (v23)
        {
          goto LABEL_38;
        }

        v15 -= 16;
        *(v26 + 32) = *(v26 + 16);
        *(a1 + v25 + 40) = *(v26 + 24);
        v25 -= 16;
      }

      while (v25 != -32);
      v15 = a1;
LABEL_38:
      v4 = v32;
      v17 = v33;
      *v15 = v35;
      *(v15 + 8) = v23;
      if (++v34 == 8)
      {
        return v16 + 16 == v32;
      }

LABEL_39:
      v15 = v16;
      v17 += 16;
      v16 += 16;
      if (v16 == v4)
      {
        return 1;
      }
    }
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 != 2)
  {
    goto LABEL_12;
  }

  v7 = *(a2 - 16);
  v8 = **a3;
  v9 = *a1;
  v10 = (v8 + 72 * *a1);
  v11 = *(a2 - 8);
  v12 = *a3[1];
  re::pathprocessing::ContinuousEdge::getIndex(&v38, (v8 + 72 * v7), v12, v11);
  v13 = *(a1 + 8);
  re::pathprocessing::ContinuousEdge::getIndex(&v37, v10, v12, v13);
  v14 = re::pathprocessing::ContinuousVertex::compareAngle(&v38, &v37);
  if (v14)
  {
    if (v14 == -1)
    {
      goto LABEL_52;
    }

    return 1;
  }

  if (v11 != v13)
  {
    if (!v11)
    {
      goto LABEL_52;
    }

    return 1;
  }

  if (v11)
  {
    v13 = v11;
    if (v7 > v9)
    {
      goto LABEL_52;
    }

    return 1;
  }

  if (v7 >= v9)
  {
    return 1;
  }

  v13 = 0;
LABEL_52:
  *a1 = v7;
  *(v4 - 16) = v9;
  *(a1 + 8) = v11;
  result = 1;
  *(v4 - 8) = v13;
  return result;
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::HalfEdge>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<re::pathprocessing::ContinuousEdge>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = std::deque<unsigned long>::~deque[abi:nn200100]((v4 - 72));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::deque<unsigned long>::~deque[abi:nn200100](void *a1)
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

  return std::__split_buffer<unsigned long *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<unsigned long *>::~__split_buffer(uint64_t a1)
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::ContinuousEdge>>(unint64_t a1)
{
  if (a1 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void *std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::pathprocessing::ContinuousEdge>,re::pathprocessing::ContinuousEdge*>(void *result, void *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    do
    {
      *a3 = *v4;
      *(a3 + 8) = v4[1];
      *(a3 + 16) = v4[2];
      v5 = v4[4];
      *(a3 + 24) = v4[3];
      *v4 = 0uLL;
      *(v4 + 1) = 0uLL;
      *(a3 + 32) = v5;
      *(a3 + 40) = v4[5];
      v4[4] = 0;
      v4[5] = 0;
      v6 = *(v4 + 3);
      *(a3 + 64) = *(v4 + 64);
      *(a3 + 48) = v6;
      v4 += 9;
      a3 += 72;
    }

    while (v4 != a2);
    do
    {
      result = (std::deque<unsigned long>::~deque[abi:nn200100](result) + 72);
    }

    while (result != a2);
  }

  return result;
}

uint64_t std::__split_buffer<re::pathprocessing::ContinuousEdge>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    std::deque<unsigned long>::~deque[abi:nn200100]((i - 72));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::ContinuousVertex>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::pathprocessing::ContinuousVertex>,re::pathprocessing::ContinuousVertex*>(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      *a3 = *v5;
      a3[2] = *(v5 + 16);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v5 += 24;
      a3 += 3;
    }

    while (v5 != a2);
    do
    {
      v6 = *v4;
      if (*v4)
      {
        *(v4 + 8) = v6;
        operator delete(v6);
      }

      v4 += 24;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<re::pathprocessing::ContinuousVertex>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::deque<unsigned long>::__add_front_capacity(const void **a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = v4 - v3;
  if (v4 == v3)
  {
    v6 = a2 + 1;
  }

  else
  {
    v6 = a2;
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v4 - v3) << 6) - 1;
  }

  if ((v6 & 0x1FF) != 0)
  {
    v8 = (v6 >> 9) + 1;
  }

  else
  {
    v8 = v6 >> 9;
  }

  v9 = a1[4];
  v10 = v7 - (a1[5] + v9);
  if (v8 >= v10 >> 9)
  {
    v11 = v10 >> 9;
  }

  else
  {
    v11 = v8;
  }

  if (v8 <= v10 >> 9)
  {
    for (a1[4] = (v9 + (v11 << 9)); v11; --v11)
    {
      v15 = a1[2];
      *&v17[0] = *(v15 - 8);
      a1[2] = (v15 - 8);
      std::__split_buffer<unsigned long *>::emplace_front<unsigned long *>(a1, v17);
    }
  }

  else
  {
    v12 = v8 - v11;
    v13 = a1[3] - *a1;
    if (v8 - v11 > (v13 >> 3) - (v5 >> 3))
    {
      if (v13 >> 2 <= v12 + (v5 >> 3))
      {
        v14 = v12 + (v5 >> 3);
      }

      else
      {
        v14 = v13 >> 2;
      }

      v18 = a1;
      if (v14)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(a1, v14);
      }

      memset(v17, 0, sizeof(v17));
      operator new();
    }

    if (v12)
    {
      if (v3 != *a1)
      {
        operator new();
      }

      operator new();
    }

    for (a1[4] = (v9 + (v11 << 9)); v11; --v11)
    {
      v16 = a1[2];
      *&v17[0] = *(v16 - 8);
      a1[2] = (v16 - 8);
      std::__split_buffer<unsigned long *>::emplace_front<unsigned long *>(a1, v17);
    }
  }
}

void *std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:nn200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 3);
    if (v4 < 1)
    {
      result -= (511 - v4) >> 9;
    }

    else
    {
      result += v4 >> 9;
    }
  }

  return result;
}

void std::deque<unsigned long>::__add_back_capacity(unint64_t *a1, unint64_t a2)
{
  v3 = a1[2] - a1[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = a1[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (a1[4] = v6 - (v7 << 9); v7; --v7)
    {
      v14 = a1[1];
      v16[0] = *v14;
      a1[1] = (v14 + 1);
      std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(a1, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = a1[3] - *a1;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = a1;
      if (v12)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(a1, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (a1[3] != a1[2])
      {
        operator new();
      }

      operator new();
    }

    for (a1[4] = v6 - (v7 << 9); v7; --v7)
    {
      v15 = a1[1];
      v16[0] = *v15;
      a1[1] = (v15 + 1);
      std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(a1, v16);
    }
  }
}

double std::__for_each_segment[abi:nn200100]<std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>>>(void **a1, _BYTE *a2, void **a3, _BYTE *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    v9 = a4;
  }

  else
  {
    v11 = a1 + 1;
    std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,unsigned long *,unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(&v23, a2, *a1 + 4096, *a5, *(a5 + 8));
    *a5 = v24;
    v12 = *a5;
    v13 = *(a5 + 8);
    if (v11 != a3)
    {
      v22 = a4;
      do
      {
        v14 = 0;
        v15 = *v11;
        v17 = *v12++;
        v16 = v17;
        while (1)
        {
          v18 = v16 - v13 + 4096;
          if ((4096 - v14) >> 3 >= v18 >> 3)
          {
            v19 = v18 >> 3;
          }

          else
          {
            v19 = (4096 - v14) >> 3;
          }

          if (v19)
          {
            memmove(v13, &v15[v14], 8 * v19);
          }

          v14 += 8 * v19;
          if (v14 == 4096)
          {
            break;
          }

          v20 = *v12++;
          v16 = v20;
          v13 = v20;
        }

        v13 += 8 * v19;
        if (*(v12 - 1) + 4096 == v13)
        {
          v13 = *v12;
        }

        else
        {
          --v12;
        }

        *a5 = v12;
        *(a5 + 8) = v13;
        ++v11;
      }

      while (v11 != a3);
      a4 = v22;
    }

    a2 = *v11;
    v9 = a4;
    v7 = v12;
    v8 = v13;
  }

  std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,unsigned long *,unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(&v23, a2, v9, v7, v8);
  result = *&v24;
  *a5 = v24;
  return result;
}

void *std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,unsigned long *,unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(void *result, _BYTE *__src, _BYTE *a3, void **a4, char *__dst)
{
  v6 = a4;
  v8 = result;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a3 - v9) >> 3 >= v11 >> 3 ? v11 >> 3 : (a3 - v9) >> 3;
      if (v12)
      {
        result = memmove(__dst, v9, 8 * v12);
      }

      v9 += 8 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 8 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *v8 = a3;
  v8[1] = v6;
  v8[2] = __dst;
  return result;
}

__n128 std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(__n128 *a1, char **a2, char *a3, char **a4, char *a5, char *a6, char *a7)
{
  if (a2 == a4)
  {
    v11 = a3;
    v12 = a5;
    v13 = a6;
    v14 = a7;
  }

  else
  {
    v16 = a4 - 1;
    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(v27, *a4, a5, a6, a7);
    v18 = v28.n128_u64[1];
    v17 = v28.n128_u64[0];
    if (v16 != a2)
    {
      v19 = *v28.n128_u64[0];
      do
      {
        v20 = *v16;
        v21 = *v16 + 4096;
        while (1)
        {
          v22 = v18 - v19;
          if ((v21 - v20) >> 3 >= v22 >> 3)
          {
            v23 = v22 >> 3;
          }

          else
          {
            v23 = (v21 - v20) >> 3;
          }

          v21 -= 8 * v23;
          v18 -= 8 * v23;
          if (v23)
          {
            memmove(v18, v21, 8 * v23);
          }

          if (v21 == v20)
          {
            break;
          }

          v24 = *(v17 - 1);
          v17 -= 8;
          v19 = v24;
          v18 = v24 + 4096;
        }

        v19 = *v17;
        if ((*v17 + 4096) == v18)
        {
          v25 = *(v17 + 1);
          v17 += 8;
          v19 = v25;
          v18 = v25;
        }

        --v16;
      }

      while (v16 != a2);
    }

    v12 = *v16 + 4096;
    v11 = a3;
    v13 = v17;
    v14 = v18;
  }

  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(v27, v11, v12, v13, v14);
  result = v28;
  a1->n128_u64[0] = a4;
  a1->n128_u64[1] = a5;
  a1[1] = result;
  return result;
}

char **std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(char **result, char *a2, char *a3, char *a4, char *a5)
{
  v6 = a4;
  v8 = result;
  if (a2 == a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
    v10 = *a4;
    v11 = a3;
    while (1)
    {
      v12 = &a5[-v10];
      if ((v11 - a2) >> 3 >= v12 >> 3)
      {
        v13 = v12 >> 3;
      }

      else
      {
        v13 = (v11 - a2) >> 3;
      }

      v11 -= 8 * v13;
      a5 -= 8 * v13;
      if (v13)
      {
        result = memmove(a5, v11, 8 * v13);
      }

      if (v11 == a2)
      {
        break;
      }

      v14 = *(v6 - 1);
      v6 -= 8;
      v10 = v14;
      a5 = (v14 + 4096);
    }

    if ((*v6 + 4096) == a5)
    {
      v15 = *(v6 + 1);
      v6 += 8;
      a5 = v15;
    }
  }

  *v8 = v9;
  v8[1] = v6;
  v8[2] = a5;
  return result;
}

void std::__split_buffer<re::pathprocessing::Node const**>::emplace_back<re::pathprocessing::Node const**&>(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::Node const**>>(v11);
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::Node const**>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

BOOL re::pathprocessing::BezierUtils::lineCrossBezierHull(float32x2_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  if (result)
  {
    if (result)
    {
    }
  }

  return result;
}

BOOL re::pathprocessing::anonymous namespace::rightToOrOnLine(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4)
{
  v4 = vsub_f32(*a2, *a1);
  v5 = vsub_f32(*a3, *a1);
  v6 = (-v4.f32[1] * v5.f32[0]) + (v4.f32[0] * v5.f32[1]);
  v7 = vsub_f32(*a4, *a1);
  v8 = (-v4.f32[1] * v7.f32[0]) + (v4.f32[0] * v7.f32[1]);
  v9 = v6 > 0.0001;
  if (v6 < -0.0001)
  {
    v9 = 0;
  }

  if (v9 && v8 > 0.0001 && v8 >= -0.0001)
  {
    return 0;
  }

  v10 = v8 < -0.0001;
  v11 = v6 < -0.0001;
  if (v6 > 0.0001)
  {
    v11 = 1;
  }

  if (v8 > 0.0001)
  {
    v10 = 1;
  }

  if (!v11 && !v10)
  {
    return 0;
  }

  if (v6 < -0.0001 && v8 < -0.0001)
  {
    return 1;
  }

  v14 = vabs_f32(v4);
  v15 = vmvn_s8(vcge_f32(v14, vdup_lane_s32(v14, 1))).u8[0];
  v16 = vadd_f32(vmul_n_f32(*a4, v6 / (v6 - v8)), vmul_n_f32(*a3, 1.0 - (v6 / (v6 - v8))));
  v27 = v16;
  if (!v11)
  {
    if (v8 >= -0.0001)
    {
      goto LABEL_34;
    }

    return 1;
  }

  if (v10)
  {
    v17 = *(&v27 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v15 & 1)));
    v18 = a1->f32[v15 & 1];
    v19 = a2->f32[v15 & 1];
    if (v18 <= v19)
    {
      v20 = a1->f32[v15 & 1];
    }

    else
    {
      v20 = a2->f32[v15 & 1];
    }

    if (v18 <= v19)
    {
      v18 = a2->f32[v15 & 1];
    }

    if ((v20 + -0.0001) >= v17 || (v18 + 0.0001) <= v17)
    {
      if (v9)
      {
        *a3 = v16;
      }

      else
      {
        *a4 = v16;
      }
    }

    return 1;
  }

  if (v6 < -0.0001)
  {
    return 1;
  }

LABEL_34:
  v22 = *(&v27 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v15 & 1)));
  v23 = a1->f32[v15 & 1];
  v24 = a2->f32[v15 & 1];
  if (v23 <= v24)
  {
    v25 = a1->f32[v15 & 1];
  }

  else
  {
    v25 = a2->f32[v15 & 1];
  }

  if (v23 <= v24)
  {
    v23 = a2->f32[v15 & 1];
  }

  return (v23 + -0.0001) > v22 && (v25 + 0.0001) < v22;
}

BOOL re::pathprocessing::BezierUtils::bezierHullOverlap(float32x2_t *a1, float32x2_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = vsub_f32(v3, *a1);
  v5 = vsub_f32(v2, *a1);
  v6 = a2[1];
  v7 = a2[2];
  v8 = vsub_f32(v7, *a2);
  v9 = vsub_f32(v6, *a2);
  v10 = vmla_f32(vmul_f32(vzip1_s32(v5, v9), vneg_f32(vzip2_s32(v4, v8))), vzip2_s32(v5, v9), vzip1_s32(v4, v8));
  if ((vcgt_f32(v10, vdup_lane_s32(v10, 1)).u8[0] & 1) == 0)
  {
    v18 = *a1;
    v19 = a1[1];
    if (!re::pathprocessing::BezierUtils::lineCrossBezierHull(a2, *a1, v2) && !re::pathprocessing::BezierUtils::lineCrossBezierHull(a2, v19, v3))
    {
      v14 = a2;
      v15 = v3;
      v16 = v18;
      goto LABEL_9;
    }

    return 1;
  }

  v12 = *a2;
  v13 = a2[1];
  if (re::pathprocessing::BezierUtils::lineCrossBezierHull(a1, *a2, v6) || re::pathprocessing::BezierUtils::lineCrossBezierHull(a1, v13, v7))
  {
    return 1;
  }

  v14 = a1;
  v15 = v7;
  v16 = v12;
LABEL_9:

  return re::pathprocessing::BezierUtils::lineCrossBezierHull(v14, v15, v16);
}

float32x2_t *re::pathprocessing::IndexedMesh::IndexedMesh(uint64_t a1, unsigned __int8 **a2, int a3)
{
  v84 = *MEMORY[0x1E69E9840];
  v6 = 0x7F0000007FLL;
  v7 = vneg_f32(0x7F0000007FLL);
  *a1 = v7;
  *(a1 + 8) = 0x7F0000007FLL;
  *(a1 + 16) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = a1 + 72;
  collection_2f = geom_create_collection_2f();
  v9 = *a2;
  v10 = a2[1];
  v73 = a3;
  if (*a2 != v10)
  {
    while (1)
    {
      v11 = *v9;
      if ((v11 - 76) < 2)
      {
        goto LABEL_8;
      }

      if (v11 == 81)
      {
        break;
      }

      if (v11 == 67)
      {
        v12 = *(v9 + 8);
        v7 = vminnm_f32(v7, v12);
        v6 = vmaxnm_f32(v6, v12);
        v13 = 16;
LABEL_7:
        v14 = *&v9[v13];
        v7 = vminnm_f32(v7, v14);
        v6 = vmaxnm_f32(v6, v14);
LABEL_8:
        v15 = *(v9 + 24);
        v7 = vminnm_f32(v7, v15);
        v6 = vmaxnm_f32(v6, v15);
      }

      v9 += 32;
      if (v9 == v10)
      {
        v16 = v7;
        v17 = v6;
        goto LABEL_12;
      }
    }

    v13 = 8;
    goto LABEL_7;
  }

  v17 = 0xFF800000FF800000;
  v16 = 0x7F8000007F800000;
LABEL_12:
  *a1 = v16;
  *(a1 + 8) = v17;
  v19 = *a2;
  v18 = a2[1];
  if (*a2 != v18)
  {
    v20 = -1;
    v21 = -1;
    v74 = v18;
    do
    {
      v22 = v19->u8[0];
      if (v22 <= 0x4C)
      {
        if (v22 == 67)
        {
          v82 = 0uLL;
          *&v83 = 0;
          monotonic_intervals_2f = geom_cubic_bezier_find_monotonic_intervals_2f();
          v32 = monotonic_intervals_2f - 1;
          if (monotonic_intervals_2f != 1)
          {
            v33 = 0;
            do
            {
              ++v33;
              geom_cubic_bezier_extract_2f();
              geom_cubic_bezier_fit_with_quadratic_beziers_2f();
              v34 = geom_collection_size_2f();
              v35 = geom_collection_data_2f();
              if (v34)
              {
                v36 = (v35 + 16);
                v37 = 1;
                do
                {
                  v77[0] = *(v36 - 1);
                  v38 = *v36;
                  v36 += 3;
                  __p[0] = v38;
                  v21 = re::pathprocessing::IndexedMesh::addBezierTo(a1, v21, v77, __p);
                  v39 = v37 + 2;
                  v37 += 3;
                }

                while (v39 < v34);
              }
            }

            while (v33 != v32);
          }

          v18 = v74;
        }

        else if (v22 == 76)
        {
          *&v82 = vsub_f32(v19[3], *a1);
          v26 = re::pathprocessing::IndexedMesh::getOrAddIndex(a1, &v82);
          re::pathprocessing::IndexedMesh::addLineTo(a1, v21, v26);
          v21 = v26;
        }
      }

      else
      {
        switch(v22)
        {
          case 'Z':
            if (v21 != v20)
            {
              v28 = *(a1 + 48);
              v27 = *(a1 + 56);
              if (v28 >= v27)
              {
                v40 = *(a1 + 40);
                v41 = v28 - v40;
                v42 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v40) >> 3);
                v43 = v42 + 1;
                if (v42 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  goto LABEL_82;
                }

                v44 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v40) >> 3);
                if (2 * v44 > v43)
                {
                  v43 = 2 * v44;
                }

                if (v44 >= 0x555555555555555)
                {
                  v45 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v45 = v43;
                }

                if (v45)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::IndexedPrimitive>>(v45);
                }

                v52 = 24 * v42;
                *v52 = v21;
                *(v52 + 8) = -1;
                *(v52 + 16) = v20;
                v29 = 24 * v42 + 24;
                v53 = v52 - v41;
                memcpy((v52 - v41), v40, v41);
                v54 = *(a1 + 40);
                *(a1 + 40) = v53;
                *(a1 + 48) = v29;
                *(a1 + 56) = 0;
                if (v54)
                {
                  operator delete(v54);
                }

                v18 = v74;
              }

              else
              {
                *v28 = v21;
                v28[1] = -1;
                v29 = (v28 + 3);
                v28[2] = v20;
              }

              *(a1 + 48) = v29;
            }

            v21 = v20;
            break;
          case 'Q':
            v30 = *a1;
            *&v82 = vsub_f32(v19[1], *a1);
            v77[0] = vsub_f32(v19[3], v30);
            v21 = re::pathprocessing::IndexedMesh::addBezierTo(a1, v21, &v82, v77);
            break;
          case 'M':
            if (v20 != v21)
            {
              v24 = *(a1 + 48);
              v23 = *(a1 + 56);
              if (v24 >= v23)
              {
                v46 = *(a1 + 40);
                v47 = v24 - v46;
                v48 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v46) >> 3);
                v49 = v48 + 1;
                if (v48 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  goto LABEL_82;
                }

                v50 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v46) >> 3);
                if (2 * v50 > v49)
                {
                  v49 = 2 * v50;
                }

                if (v50 >= 0x555555555555555)
                {
                  v51 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v51 = v49;
                }

                if (v51)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::IndexedPrimitive>>(v51);
                }

                v55 = 24 * v48;
                *v55 = v21;
                *(v55 + 8) = -1;
                *(v55 + 16) = v20;
                v25 = 24 * v48 + 24;
                v56 = v55 - v47;
                memcpy((v55 - v47), v46, v47);
                v57 = *(a1 + 40);
                *(a1 + 40) = v56;
                *(a1 + 48) = v25;
                *(a1 + 56) = 0;
                if (v57)
                {
                  operator delete(v57);
                }

                v18 = v74;
              }

              else
              {
                *v24 = v21;
                v24[1] = -1;
                v25 = (v24 + 3);
                v24[2] = v20;
              }

              *(a1 + 48) = v25;
            }

            *&v82 = vsub_f32(v19[3], *a1);
            v21 = re::pathprocessing::IndexedMesh::getOrAddIndex(a1, &v82);
            v20 = v21;
            break;
        }
      }

      v19 += 4;
    }

    while (v19 != v18);
    if (v20 != v21)
    {
      v59 = *(a1 + 48);
      v58 = *(a1 + 56);
      if (v59 >= v58)
      {
        v61 = *(a1 + 40);
        v62 = v59 - v61;
        v63 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v61) >> 3);
        v64 = v63 + 1;
        if (v63 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
LABEL_82:
          std::string::__throw_length_error[abi:nn200100]();
        }

        v65 = 0xAAAAAAAAAAAAAAABLL * ((v58 - v61) >> 3);
        if (2 * v65 > v64)
        {
          v64 = 2 * v65;
        }

        if (v65 >= 0x555555555555555)
        {
          v66 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v66 = v64;
        }

        if (v66)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::IndexedPrimitive>>(v66);
        }

        v67 = 24 * v63;
        *v67 = v21;
        *(v67 + 8) = -1;
        *(v67 + 16) = v20;
        v60 = 24 * v63 + 24;
        v68 = v67 - v62;
        memcpy((v67 - v62), v61, v62);
        v69 = *(a1 + 40);
        *(a1 + 40) = v68;
        *(a1 + 48) = v60;
        *(a1 + 56) = 0;
        if (v69)
        {
          operator delete(v69);
        }
      }

      else
      {
        *v59 = v21;
        v59[1] = -1;
        v59[2] = v20;
        v60 = (v59 + 3);
      }

      *(a1 + 48) = v60;
    }
  }

  os_release(collection_2f);
  if (v73)
  {
    v71 = *(a1 + 40);
    v70 = *(a1 + 48);
    if (v70 != v71)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v70 - v71) >> 3) <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    memset(v75, 0, sizeof(v75));
    v76 = 1065353216;
    memset(v81, 0, sizeof(v81));
    *__p = 0u;
    *v79 = 0u;
    v80 = 1065353216;
    __p[0] = 0;
    *&v82 = v81;
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v82);
    std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>>>::~__hash_table(v75);
  }

  return a1;
}

uint64_t re::pathprocessing::IndexedMesh::getOrAddIndex(void *a1, float *a2)
{
  v5 = (a1 + 9);
  v4 = a1[9];
  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = (a1 + 9);
  do
  {
    v7 = re::pathprocessing::MathUtils::lexicographicalApproxLess(v4 + 8, a2);
    if (v7)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v4;
    }

    v4 = *&v4[v8];
  }

  while (v4);
  if (v6 != v5 && !re::pathprocessing::MathUtils::lexicographicalApproxLess(a2, v6 + 8))
  {
    return *(v6 + 5);
  }

LABEL_11:
  v9 = (a1[3] - a1[2]) >> 3;
  std::vector<re::Vector2<float>>::push_back[abi:nn200100]((a1 + 2), a2);
  v10 = a1[9];
  if (!v10)
  {
    goto LABEL_17;
  }

  while (1)
  {
    while (1)
    {
      v11 = v10;
      if (!re::pathprocessing::MathUtils::lexicographicalApproxLess(a2, v10 + 8))
      {
        break;
      }

      v10 = *v11;
      v5 = v11;
      if (!*v11)
      {
        goto LABEL_17;
      }
    }

    if (!re::pathprocessing::MathUtils::lexicographicalApproxLess(v11 + 8, a2))
    {
      break;
    }

    v5 = v11 + 2;
    v10 = *(v11 + 1);
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  if (!*v5)
  {
LABEL_17:
    operator new();
  }

  *(*v5 + 40) = v9;
  return v9;
}

uint64_t re::pathprocessing::IndexedMesh::addBezierTo(re::pathprocessing::IndexedMesh *a1, uint64_t a2, uint64_t *a3, float *a4)
{
  v8 = a1 + 16;
  v9 = *a3;
  v27[0] = *(*(a1 + 2) + 8 * a2);
  v27[1] = v9;
  v27[2] = *a4;
  v10 = re::pathprocessing::Bezier2::geometryType(v27);
  if (v10 == 1)
  {
    return a2;
  }

  if (v10 == 2)
  {
    v11 = re::pathprocessing::IndexedMesh::getOrAddIndex(a1, a4);
    re::pathprocessing::IndexedMesh::addLineTo(a1, a2, v11);
  }

  else
  {
    v12 = (*(a1 + 3) - *(a1 + 2)) >> 3;
    std::vector<re::Vector2<float>>::push_back[abi:nn200100](v8, a3);
    v13 = re::pathprocessing::IndexedMesh::getOrAddIndex(a1, a4);
    v11 = v13;
    v15 = *(a1 + 6);
    v14 = *(a1 + 7);
    if (v15 >= v14)
    {
      v17 = *(a1 + 5);
      v18 = v15 - v17;
      v19 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v17) >> 3);
      v20 = v19 + 1;
      if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v21 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v17) >> 3);
      if (2 * v21 > v20)
      {
        v20 = 2 * v21;
      }

      if (v21 >= 0x555555555555555)
      {
        v22 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::IndexedPrimitive>>(v22);
      }

      v23 = 24 * v19;
      *v23 = a2;
      *(v23 + 8) = v12;
      *(v23 + 16) = v11;
      v16 = 24 * v19 + 24;
      v24 = v23 - v18;
      memcpy((v23 - v18), v17, v18);
      v25 = *(a1 + 5);
      *(a1 + 5) = v24;
      *(a1 + 6) = v16;
      *(a1 + 7) = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v15 = a2;
      v15[1] = v12;
      v16 = (v15 + 3);
      v15[2] = v13;
    }

    *(a1 + 6) = v16;
  }

  return v11;
}

void std::vector<re::Vector2<float>>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
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

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t re::pathprocessing::IndexedMesh::addLineTo(re::pathprocessing::IndexedMesh *this, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v7 = *(this + 6);
    v6 = *(this + 7);
    if (v7 >= v6)
    {
      v9 = *(this + 5);
      v10 = v7 - v9;
      v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v9) >> 3);
      v12 = v11 + 1;
      if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v13 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 3);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x555555555555555)
      {
        v14 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::IndexedPrimitive>>(v14);
      }

      v15 = 24 * v11;
      *v15 = a2;
      *(v15 + 8) = -1;
      *(v15 + 16) = a3;
      v8 = 24 * v11 + 24;
      v16 = v15 - v10;
      memcpy((v15 - v10), v9, v10);
      v17 = *(this + 5);
      *(this + 5) = v16;
      *(this + 6) = v8;
      *(this + 7) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v7 = a2;
      *(v7 + 1) = -1;
      *(v7 + 2) = a3;
      v8 = (v7 + 24);
    }

    *(this + 6) = v8;
  }

  return a3;
}

void re::pathprocessing::IndexedMesh::flatten(void *a1, uint64_t *a2, std::vector<int> *a3)
{
  v7 = a1[5];
  v6 = a1[6];
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
  std::vector<re::pathprocessing::Bezier2>::resize(a2, v8);
  std::vector<unsigned int>::resize(a3, v8);
  if (v6 != v7)
  {
    v9 = 0;
    v10 = 0;
    if (v8 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
    }

    while (1)
    {
      v12 = (a1[5] + v9);
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      if (v13 == -1 || v14 != -1)
      {
        goto LABEL_13;
      }

      if (v15 == -1)
      {
        break;
      }

      v17 = a1[2];
      v18 = *(v17 + 8 * v13);
      v19 = *(v17 + 8 * v15);
      v20 = *a2;
      v21 = (*a2 + v9);
      *v21 = v18;
      v21[1] = vadd_f32(vmul_f32(v18, 0x3F0000003F000000), vmul_f32(v19, 0x3F0000003F000000));
      v22 = 2;
LABEL_14:
      *(v20 + v9 + 16) = v19;
      a3->__begin_[v10++] = v22;
      v9 += 24;
      if (v11 == v10)
      {
        return;
      }
    }

    v14 = -1;
LABEL_13:
    v23 = a1[2];
    v24 = *(v23 + 8 * v13);
    v25 = *(v23 + 8 * v14);
    v19 = *(v23 + 8 * v15);
    v20 = *a2;
    v26 = (*a2 + v9);
    *v26 = v24;
    v26[1] = v25;
    v22 = 3;
    goto LABEL_14;
  }
}

void std::vector<re::pathprocessing::Bezier2>::resize(void *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<re::pathprocessing::Bezier2>::__append(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 24 * a2;
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::IndexedPrimitive>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<re::pathprocessing::Bezier2>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<double,3,1>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

uint64_t *std::__tree<std::__value_type<float,unsigned long>,std::__map_value_compare<float,std::__value_type<float,unsigned long>,re::pathprocessing::MathUtils::LexApproxCompare,true>,std::allocator<std::__value_type<float,unsigned long>>>::__emplace_unique_key_args<float,std::piecewise_construct_t const&,std::tuple<float const&>,std::tuple<>>(uint64_t **a1, _DWORD **a2, float a3)
{
  v3 = a1[1];
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
      v5 = *(v3 + 8);
      if ((a3 + 0.0001) >= v5)
      {
        break;
      }

      v3 = *v3;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if ((v5 + 0.0001) >= a3)
    {
      return v3;
    }

    v3 = v3[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(void *a1, unint64_t a2, uint64_t **a3)
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

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (result[2] == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void *std::deque<unsigned long>::__append_with_size[abi:nn200100]<unsigned long const*>(unint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) << 6) - 1;
  }

  v9 = a1[5] + a1[4];
  v10 = v8 - v9;
  if (a3 > v10)
  {
    std::deque<unsigned long>::__add_back_capacity(a1, a3 - v10);
    v6 = a1[1];
    v7 = a1[2];
    v9 = a1[4] + a1[5];
  }

  v11 = (v6 + 8 * (v9 >> 9));
  if (v7 == v6)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = *v11 + 8 * (v9 & 0x1FF);
    v13 = v12;
  }

  v20[0] = v11;
  v20[1] = v13;
  result = std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:nn200100](v20, a3);
  while (v12 != v15)
  {
    v16 = (v11 == result ? v15 : *v11 + 4096);
    if (v12 == v16)
    {
      v16 = v12;
    }

    else
    {
      v17 = v12;
      do
      {
        v18 = *a2++;
        *v17++ = v18;
      }

      while (v17 != v16);
    }

    a1[5] += (v16 - v12) >> 3;
    if (v11 == result)
    {
      break;
    }

    v19 = v11[1];
    ++v11;
    v12 = v19;
  }

  return result;
}

uint64_t std::deque<unsigned long>::__maybe_remove_back_spare[abi:nn200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void std::deque<unsigned long>::push_back(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<unsigned long>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++a1[5];
}

float32x2_t re::pathprocessing::Bezier2::curveBetween@<D0>(float32x2_t *this@<X0>, float a2@<S0>, float a3@<S1>, float32x2_t *a4@<X8>)
{
  v4 = *this;
  v5 = this[1];
  v6 = this[2];
  v7 = vadd_f32(vadd_f32(vmul_n_f32(*this, (1.0 - a2) * (1.0 - a2)), vmul_n_f32(v5, (a2 + a2) * (1.0 - a2))), vmul_n_f32(v6, a2 * a2));
  *a4 = v7;
  a4[1] = vadd_f32(vmul_n_f32(v7, 1.0 - ((a3 - a2) / (1.0 - a2))), vmul_n_f32(vadd_f32(vmul_n_f32(v5, 1.0 - a2), vmul_n_f32(v6, a2)), (a3 - a2) / (1.0 - a2)));
  result = vadd_f32(vadd_f32(vmul_n_f32(v4, (1.0 - a3) * (1.0 - a3)), vmul_n_f32(v5, (a3 + a3) * (1.0 - a3))), vmul_n_f32(v6, a3 * a3));
  a4[2] = result;
  return result;
}

uint64_t re::pathprocessing::Bezier2::geometryType(re::pathprocessing::Bezier2 *this)
{
  result = re::pathprocessing::Bezier2::isfinite(this);
  if (result)
  {
    if (re::pathprocessing::Bezier2::isPoint(this))
    {
      return 1;
    }

    else if (re::pathprocessing::Bezier2::isLine(this))
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

BOOL re::pathprocessing::Bezier2::isfinite(re::pathprocessing::Bezier2 *this)
{
  if ((*this & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(this + 1) & 0x7FFFFFFFu) < 0x7F800000 || (*(this + 2) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(this + 3) & 0x7FFFFFFFu) < 0x7F800000)
  {
    return 1;
  }

  if ((*(this + 4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    return (*(this + 5) & 0x7FFFFFFFu) < 0x7F800000;
  }

  return 0;
}

BOOL re::pathprocessing::Bezier2::isPoint(re::pathprocessing::Bezier2 *this)
{
  v1 = *this;
  v2 = *(this + 2);
  if (*this != v2 && vabds_f32(v1, v2) > 0.0001)
  {
    return 0;
  }

  v3 = *(this + 1);
  v4 = *(this + 3);
  if (v3 != v4 && vabds_f32(v3, v4) > 0.0001)
  {
    return 0;
  }

  v5 = *(this + 4);
  if (v2 != v5 && vabds_f32(v2, v5) > 0.0001)
  {
    return 0;
  }

  v6 = *(this + 5);
  if (v4 != v6 && vabds_f32(v4, v6) > 0.0001)
  {
    return 0;
  }

  if (v1 != v5 && vabds_f32(v1, v5) > 0.0001)
  {
    return 0;
  }

  if (vabds_f32(v3, v6) <= 0.0001)
  {
    return 1;
  }

  return v3 == v6;
}

BOOL re::pathprocessing::Bezier2::isLine(float32x2_t *this)
{
  if (re::pathprocessing::Bezier2::isPoint(this))
  {
    return 0;
  }

  v3 = this[1];
  v4 = vsub_f32(v3, *this);
  v5 = vmul_f32(v4, v4);
  v6 = this[2];
  v7 = vsub_f32(v6, v3);
  v8 = vmul_f32(v7, v7);
  v9 = vsqrt_f32(vadd_f32(vzip1_s32(v5, v8), vzip2_s32(v5, v8)));
  v10 = vsub_f32(*this, v6);
  v11 = sqrtf(vaddv_f32(vmul_f32(v10, v10)));
  if (v9.f32[0] <= v9.f32[1])
  {
    v12 = v9.f32[1];
  }

  else
  {
    v12 = v9.f32[0];
  }

  if (v9.f32[0] > v9.f32[1])
  {
    v9.f32[0] = v9.f32[1];
  }

  if (v12 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (v12 <= v11)
  {
    v11 = v12;
  }

  return fabsf(((v9.f32[0] + v11) / v13) + -1.0) < 0.0001;
}

BOOL re::pathprocessing::Bezier2::enclosingTriangleOverlaps(float32x2_t *this, float32x2_t *a2)
{
  v2 = *this;
  v3 = this[1];
  v4 = this[2];
  *v5.f32 = vminnm_f32(vminnm_f32(*this, v3), v4);
  v6 = vmaxnm_f32(vmaxnm_f32(*this, v3), v4);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = vminnm_f32(vminnm_f32(*a2, v8), v9);
  *v11.f32 = vmaxnm_f32(vmaxnm_f32(*a2, v8), v9);
  v5.i64[1] = __PAIR64__(v10.u32[0], v10.u32[1]);
  v11.i64[1] = __PAIR64__(v6.u32[0], v6.u32[1]);
  if ((vminv_u16(vmovn_s32(vcgeq_f32(v11, v5))) & 1) == 0)
  {
    return 0;
  }

  isLine = re::pathprocessing::Bezier2::isLine(this);
  v15 = re::pathprocessing::Bezier2::isLine(a2);
  v16 = !v15;
  if (isLine && !v16)
  {
    return 0;
  }

  if (isLine && !v15)
  {
    v21 = v2;
    v22 = v4;
    v23 = vsub_f32(v8, v7);
    v24 = vsub_f32(v9, v8);
    if (((-v23.f32[1] * v24.f32[0]) + (v23.f32[0] * v24.f32[1])) >= 0.0)
    {
      *&v30 = v9;
      *(&v30 + 1) = v8;
      v31 = v7;
      return re::pathprocessing::BezierUtils::lineCrossBezierHull(&v30, v21, v22);
    }

    v30 = *a2->f32;
    v25 = a2[2];
LABEL_13:
    v31 = v25;
    return re::pathprocessing::BezierUtils::lineCrossBezierHull(&v30, v21, v22);
  }

  v18 = vsub_f32(v3, v2);
  v19 = vsub_f32(v4, v3);
  v20 = (-v18.f32[1] * v19.f32[0]) + (v18.f32[0] * v19.f32[1]);
  if (((isLine | v16) & 1) == 0)
  {
    v21 = v7;
    v22 = v9;
    if (v20 >= 0.0)
    {
      *&v30 = v4;
      *(&v30 + 1) = v3;
      v31 = v2;
      return re::pathprocessing::BezierUtils::lineCrossBezierHull(&v30, v21, v22);
    }

    v30 = *this->f32;
    v25 = this[2];
    goto LABEL_13;
  }

  if (v20 >= 0.0)
  {
    *&v30 = v4;
    *(&v30 + 1) = v3;
    v31 = v2;
  }

  else
  {
    v30 = *this->f32;
    v31 = this[2];
  }

  v26 = vsub_f32(v8, v7);
  v27 = vsub_f32(v9, v8);
  if (((-v26.f32[1] * v27.f32[0]) + (v26.f32[0] * v27.f32[1])) >= 0.0)
  {
    *&v28 = v9;
    *(&v28 + 1) = v8;
    v29 = v7;
  }

  else
  {
    v28 = *a2->f32;
    v29 = a2[2];
  }

  return re::pathprocessing::BezierUtils::bezierHullOverlap(&v30, &v28);
}
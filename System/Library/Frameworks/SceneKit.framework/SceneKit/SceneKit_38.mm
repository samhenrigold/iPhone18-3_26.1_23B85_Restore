void std::vector<OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<std::vector<int>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<int>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory>(void *a1, uint64_t a2, _DWORD *a3, unsigned int *a4, uint64_t a5, unsigned int a6)
{
  if ((a6 & 0x80000000) != 0)
  {
    v7 = a1 + 12;
    v8 = -1;
  }

  else
  {
    v7 = (a1[15] + 24 * a6);
    v8 = *(a1[18] + 4 * a6);
  }

  PatchPoints = OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints(a2, *(*(*a1 + 40) + 8 * a4[1]), *a4, a5, *(*v7 + 4 * a4[1]), v8);
  result = v9;
  if (v9 >= 1)
  {
    v12 = v9 & 0x7FFFFFFF;
    do
    {
      v13 = *PatchPoints++;
      *a3++ = v13;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory>(void *a1, uint64_t a2, _DWORD *a3, unsigned int *a4, __int16 *a5, unsigned int a6)
{
  if ((a6 & 0x80000000) != 0)
  {
    v7 = a1 + 12;
    v8 = -1;
  }

  else
  {
    v7 = (a1[15] + 24 * a6);
    v8 = *(a1[18] + 4 * a6);
  }

  PatchPoints = OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::GetPatchPoints(a2, *(*(*a1 + 40) + 8 * a4[1]), *a4, a5, *(*v7 + 4 * a4[1]), v8);
  result = v9;
  if (v9 >= 1)
  {
    v12 = v9 & 0x7FFFFFFF;
    do
    {
      v13 = *PatchPoints++;
      *a3++ = v13;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory>(void *a1, uint64_t a2, _DWORD *a3, int *a4, int a5, unsigned int a6)
{
  if ((a6 & 0x80000000) != 0)
  {
    v7 = a1 + 12;
    v8 = -1;
  }

  else
  {
    v7 = (a1[15] + 24 * a6);
    v8 = *(a1[18] + 4 * a6);
  }

  PatchPoints = OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory::GetPatchPoints(a2, *(*(*a1 + 40) + 8 * a4[1]), *a4, a5, *(*v7 + 4 * a4[1]), v8);
  result = v9;
  if (v9 >= 1)
  {
    v12 = v9 & 0x7FFFFFFF;
    do
    {
      v13 = *PatchPoints++;
      *a3++ = v13;
      --v12;
    }

    while (v12);
  }

  return result;
}

void std::vector<OpenSubdiv::v3_1_1::Far::StencilTable const*>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Far::StencilTable const*>::__append(result, a2 - v2);
  }
}

void OpenSubdiv::v3_1_1::Far::StencilTable::shrinkToFit(OpenSubdiv::v3_1_1::Far::StencilTable *this)
{
  std::vector<unsigned int>::vector[abi:nn200100](&v11, this + 2);
  v2 = *(this + 2);
  *(this + 1) = v11;
  v3 = v12;
  v4 = *(this + 4);
  *&v11 = v2;
  v12 = v4;
  *(this + 4) = v3;
  if (v2)
  {
    *(&v11 + 1) = v2;
    operator delete(v2);
  }

  std::vector<unsigned int>::vector[abi:nn200100](&v11, this + 8);
  v5 = *(this + 8);
  *(this + 4) = v11;
  v6 = v12;
  v7 = *(this + 10);
  *&v11 = v5;
  v12 = v7;
  *(this + 10) = v6;
  if (v5)
  {
    *(&v11 + 1) = v5;
    operator delete(v5);
  }

  std::vector<unsigned int>::vector[abi:nn200100](&v11, this + 11);
  v8 = *(this + 11);
  *(this + 88) = v11;
  v9 = v12;
  v10 = *(this + 13);
  *&v11 = v8;
  v12 = v10;
  *(this + 13) = v9;
  if (v8)
  {
    *(&v11 + 1) = v8;
    operator delete(v8);
  }
}

void **std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:nn200100](v6, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15++ = v16;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t **std::vector<OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple>::__swap_out_circular_buffer(uint64_t **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void std::vector<std::vector<int>>::__append(uint64_t a1, unint64_t a2)
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

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<int>>>(a1, v9);
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
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<float>>::~__split_buffer(v18);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<OpenSubdiv::v3_1_1::Far::StencilTable const*>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivCPUPrimvarInfo>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::createUniform()
{
  __assert_rtn("createUniform", "patchTableFactory.cpp", 952, "ptype!=PatchDescriptor::NON_PATCH");
}

{
  __assert_rtn("createUniform", "patchTableFactory.cpp", 975, "npatches>=0");
}

{
  __assert_rtn("createUniform", "patchTableFactory.cpp", 1038, "(levelVertOffset + fvalues[vert]) < (int)table->getFVarValues(fvc).size()");
}

{
  __assert_rtn("createUniform", "patchTableFactory.cpp", 926, "refiner.IsUniform()");
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::populateAdaptivePatches()
{
  __assert_rtn("populateAdaptivePatches", "patchTableFactory.cpp", 1445, "false");
}

{
  __assert_rtn("populateAdaptivePatches", "patchTableFactory.cpp", 1527, "Unknown Descriptor for FVar patch == 0");
}

OpenSubdiv::v3_1_1::Osd::CpuPatchTable *OpenSubdiv::v3_1_1::Osd::CpuPatchTable::CpuPatchTable(OpenSubdiv::v3_1_1::Osd::CpuPatchTable *this, const OpenSubdiv::v3_1_1::Far::PatchTable *a2)
{
  *(this + 3) = 0u;
  v4 = (this + 48);
  *(this + 6) = 0u;
  v44 = (this + 96);
  *(this + 9) = 0u;
  v5 = (this + 144);
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  NumPatchArrays = OpenSubdiv::v3_1_1::Far::PatchTable::GetNumPatchArrays(a2);
  if (NumPatchArrays < 1)
  {
    v11 = 0;
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      NumPatches = OpenSubdiv::v3_1_1::Far::PatchTable::GetNumPatches(a2, v9);
      OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayDescriptor(&v50, a2, v9);
      v7 += NumPatches;
      v8 += NumPatches * OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v50);
      v9 = (v9 + 1);
    }

    while (NumPatchArrays != v9);
    v11 = v8;
  }

  v43 = NumPatchArrays;
  v12 = NumPatchArrays;
  std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::reserve(this, NumPatchArrays);
  std::vector<unsigned int>::reserve(this + 1, v11);
  std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::reserve(this + 9, NumPatchArrays);
  OpenSubdiv::v3_1_1::Far::PatchTable::GetVaryingPatchDescriptor(&v50, a2);
  NumControlVertices = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v50);
  std::vector<unsigned int>::reserve(v44, v7 * NumControlVertices);
  NumFVarChannels = OpenSubdiv::v3_1_1::Far::PatchTable::GetNumFVarChannels(a2);
  std::vector<std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>>::resize(this + 15, NumFVarChannels);
  v15 = OpenSubdiv::v3_1_1::Far::PatchTable::GetNumFVarChannels(a2);
  std::vector<std::vector<int>>::resize(v5, v15);
  v16 = OpenSubdiv::v3_1_1::Far::PatchTable::GetNumFVarChannels(a2);
  std::vector<std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>>::resize(this + 21, v16);
  if (OpenSubdiv::v3_1_1::Far::PatchTable::GetNumFVarChannels(a2) >= 1)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::reserve((*(this + 15) + v17), v12);
      v19 = *v5;
      OpenSubdiv::v3_1_1::Far::PatchTable::GetFVarPatchDescriptor(&v50, a2, v18);
      v20 = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v50);
      std::vector<unsigned int>::reserve((v19 + v17), v7 * v20);
      std::vector<OpenSubdiv::v3_1_1::Osd::PatchParam>::reserve((*(this + 21) + v17), v7);
      ++v18;
      v17 += 24;
    }

    while (v18 < OpenSubdiv::v3_1_1::Far::PatchTable::GetNumFVarChannels(a2));
  }

  std::vector<OpenSubdiv::v3_1_1::Osd::PatchParam>::reserve(v4, v7);
  if (v43 >= 1)
  {
    v21 = 0;
    v42 = v4;
    do
    {
      OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayDescriptor(v49, a2, v21);
      v22 = OpenSubdiv::v3_1_1::Far::PatchTable::GetNumPatches(a2, v21);
      v23 = (*(this + 4) - *(this + 3)) >> 2;
      v24 = -1431655765 * ((*(this + 7) - *(this + 6)) >> 2);
      v50 = __PAIR64__(v22, v49[0]);
      v51 = v23;
      v52 = v24;
      std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::push_back[abi:nn200100](this, &v50);
      PatchArrayVertices = OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayVertices(a2, v21);
      std::vector<int>::__insert_with_size[abi:nn200100]<int const*,int const*>(this + 3, *(this + 4), PatchArrayVertices, &PatchArrayVertices[4 * v26], v26);
      OpenSubdiv::v3_1_1::Far::PatchTable::GetVaryingPatchDescriptor(&v47, a2);
      v49[0] = __PAIR64__(v7, v47);
      v49[1] = 0;
      std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::push_back[abi:nn200100](this + 9, v49);
      PatchArrayVaryingVertices = OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayVaryingVertices(a2, v21);
      std::vector<int>::__insert_with_size[abi:nn200100]<int const*,int const*>(v44, *(this + 13), PatchArrayVaryingVertices, &PatchArrayVaryingVertices[4 * v28], v28);
      if (OpenSubdiv::v3_1_1::Far::PatchTable::GetNumFVarChannels(a2) >= 1)
      {
        v29 = 0;
        do
        {
          OpenSubdiv::v3_1_1::Far::PatchTable::GetFVarPatchDescriptor(&v45, a2, v29);
          v47 = __PAIR64__(v7, v45);
          v48 = 0;
          std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::push_back[abi:nn200100]((*(this + 15) + 24 * v29), &v47);
          PatchArrayFVarValues = OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayFVarValues(a2, v21, v29);
          std::vector<int>::__insert_with_size[abi:nn200100]<int const*,int const*>((*v5 + 24 * v29), *(*v5 + 24 * v29 + 8), PatchArrayFVarValues, &PatchArrayFVarValues[4 * v31], v31);
          PatchArrayFVarPatchParams = OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayFVarPatchParams(a2, v21, v29);
          if (v7 >= 1)
          {
            v33 = PatchArrayFVarPatchParams;
            v34 = v7;
            do
            {
              v45 = *v33;
              v45 |= v33[1] << 32;
              v46 = 0;
              std::vector<vmesh::Triangle>::push_back[abi:nn200100](*(this + 21) + 24 * v29, &v45);
              v33 += 2;
              --v34;
            }

            while (v34);
          }

          ++v29;
        }

        while (v29 < OpenSubdiv::v3_1_1::Far::PatchTable::GetNumFVarChannels(a2));
      }

      v35 = OpenSubdiv::v3_1_1::Far::PatchTable::GetNumPatches(a2, v21);
      if (v35 >= 1)
      {
        do
        {
          v36 = *(a2 + 28);
          v37 = 0xAAAAAAAB00000000 * ((*(this + 7) - *(this + 6)) >> 2);
          v38 = 0;
          if ((-1431655765 * ((*(this + 7) - *(this + 6)) >> 2)) < ((*(a2 + 29) - v36) >> 2))
          {
            v39 = *(v36 + (v37 >> 30));
            if ((v39 & 0x80000000) == 0)
            {
              v38 = *(*(a2 + 31) + 4 * v39);
            }
          }

          v40 = (*(a2 + 7) + (v37 >> 29));
          v47 = *v40;
          v47 |= v40[1] << 32;
          LODWORD(v48) = v38;
          std::vector<vmesh::Triangle>::push_back[abi:nn200100](v42, &v47);
          --v35;
        }

        while (v35);
      }

      v21 = (v21 + 1);
    }

    while (v21 != v43);
  }

  return this;
}

void std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::vector<OpenSubdiv::v3_1_1::Osd::PatchParam>::reserve(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<vmesh::Triangle>>(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - *a1;
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

    v18 = a1;
    if (v11)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v11);
    }

    v12 = 16 * v8;
    __p = 0;
    v15 = v12;
    v17 = 0;
    *v12 = *a2;
    v13 = *(a2 + 4);
    *(v12 + 12) = *(a2 + 12);
    *(v12 + 4) = v13;
    v16 = 16 * v8 + 16;
    std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::__swap_out_circular_buffer(a1, &__p);
    if (v16 != v15)
    {
      v16 += (v15 - v16 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    v7 = a1[1];
    if (__p)
    {
      operator delete(__p);
    }
  }

  else
  {
    *v4 = *a2;
    v6 = *(a2 + 4);
    *(v4 + 12) = *(a2 + 12);
    *(v4 + 4) = v6;
    v7 = v4 + 16;
  }

  a1[1] = v7;
}

uint64_t *std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      v6 = *(v2 + 4);
      *(v5 + 12) = *(v2 + 12);
      *(v5 + 4) = v6;
      v2 += 16;
      v5 += 16;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

void std::vector<std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>>::__append(uint64_t a1, unint64_t a2)
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

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<CFRange>>>(a1, v9);
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
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<float>>::~__split_buffer(v18);
  }
}

char *std::vector<int>::__insert_with_size[abi:nn200100]<int const*,int const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7;
      v7 += 4;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

double OpenSubdiv::v3_1_1::Far::PatchTable::PatchTable(OpenSubdiv::v3_1_1::Far::PatchTable *this, int a2)
{
  *this = a2;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  *(this + 36) = 3;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 33) = 0;
  return result;
}

void OpenSubdiv::v3_1_1::Far::PatchTable::~PatchTable(OpenSubdiv::v3_1_1::Far::PatchTable *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v5 = *(this + 25);
  v4 = *(this + 26);
  if (((v4 - v5) >> 3) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 8 * v6);
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v5 = *(this + 25);
        v4 = *(this + 26);
      }

      ++v6;
    }

    while (v6 < ((v4 - v5) >> 3));
  }

  v8 = *(this + 31);
  if (v8)
  {
    *(this + 32) = v8;
    operator delete(v8);
  }

  v9 = *(this + 28);
  if (v9)
  {
    *(this + 29) = v9;
    operator delete(v9);
  }

  v10 = *(this + 25);
  if (v10)
  {
    *(this + 26) = v10;
    operator delete(v10);
  }

  v17 = (this + 176);
  std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::__destroy_vector::operator()[abi:nn200100](&v17);
  v11 = *(this + 19);
  if (v11)
  {
    *(this + 20) = v11;
    operator delete(v11);
  }

  v12 = *(this + 13);
  if (v12)
  {
    *(this + 14) = v12;
    operator delete(v12);
  }

  v13 = *(this + 10);
  if (v13)
  {
    *(this + 11) = v13;
    operator delete(v13);
  }

  v14 = *(this + 7);
  if (v14)
  {
    *(this + 8) = v14;
    operator delete(v14);
  }

  v15 = *(this + 4);
  if (v15)
  {
    *(this + 5) = v15;
    operator delete(v15);
  }

  v16 = *(this + 1);
  if (v16)
  {
    *(this + 2) = v16;
    operator delete(v16);
  }
}

void std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>::reserve(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 2) < a2)
  {
    if (a2 < 0xCCCCCCCCCCCCCCDLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>>(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void OpenSubdiv::v3_1_1::Far::PatchTable::allocateVaryingVertices(uint64_t a1, OpenSubdiv::v3_1_1::Far::PatchDescriptor *a2, int a3)
{
  *(a1 + 144) = *a2;
  v4 = (OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(a2) * a3);

  std::vector<float>::resize((a1 + 152), v4);
}

void std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::resize(void *result, unint64_t a2)
{
  v3 = result[1];
  v4 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *result) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::__append(result, v6);
  }

  else if (!v5)
  {
    v7 = *result + 56 * a2;
    while (v3 != v7)
    {
      v3 -= 7;
      std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::destroy[abi:nn200100](result, v3);
    }

    result[1] = v7;
  }
}

void OpenSubdiv::v3_1_1::Far::PatchTable::allocateFVarPatchChannelValues(uint64_t a1, OpenSubdiv::v3_1_1::Far::PatchDescriptor *a2, int a3, signed int a4)
{
  if (a4 < 0 || (v4 = *(a1 + 176), (-1227133513 * ((*(a1 + 184) - v4) >> 3)) <= a4))
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::allocateFVarPatchChannelValues();
  }

  v6 = v4 + 56 * a4;
  *(v6 + 4) = *a2;
  NumControlVertices = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(a2);
  std::vector<float>::resize((v6 + 8), NumControlVertices * a3);

  std::vector<ClippedCorner>::resize((v6 + 32), a3);
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::setFVarPatchChannelLinearInterpolation(uint64_t result, uint64_t a2, signed int a3)
{
  if (a3 < 0 || (v3 = *(result + 176), (-1227133513 * ((*(result + 184) - v3) >> 3)) <= a3))
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::allocateFVarPatchChannelValues();
  }

  *(v3 + 56 * a3) = a2;
  return result;
}

uint64_t *OpenSubdiv::v3_1_1::Far::PatchTable::pushPatchArray(uint64_t *result, int *a2, int a3, int *a4, int *a5, int *a6)
{
  if (a3 >= 1)
  {
    v11 = result;
    if (a6)
    {
      v12 = *a6;
    }

    else
    {
      v12 = 0;
    }

    v13 = *a2;
    v14 = *a4;
    v15 = *a5;
    v16 = result[2];
    v17 = result[3];
    if (v16 >= v17)
    {
      v19 = result[1];
      v20 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - v19) >> 2);
      v21 = v20 + 1;
      if (v20 + 1 > 0xCCCCCCCCCCCCCCCLL)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v22 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - v19) >> 2);
      if (2 * v22 > v21)
      {
        v21 = 2 * v22;
      }

      if (v22 >= 0x666666666666666)
      {
        v23 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v23 = v21;
      }

      v30 = result + 1;
      if (v23)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>>((result + 1), v23);
      }

      v24 = 20 * v20;
      __p = 0;
      v27 = v24;
      v29 = 0;
      *v24 = v13;
      *(v24 + 4) = a3;
      *(v24 + 8) = v14;
      *(v24 + 12) = v15;
      *(v24 + 16) = v12;
      v28 = 20 * v20 + 20;
      std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>::__swap_out_circular_buffer(result + 1, &__p);
      if (v28 != v27)
      {
        v28 = (v28 - v27 - 20) % 0x14uLL + v27;
      }

      v18 = v11[2];
      if (__p)
      {
        operator delete(__p);
      }
    }

    else
    {
      *v16 = v13;
      v16[1] = a3;
      v16[2] = v14;
      v16[3] = v15;
      v18 = v16 + 5;
      v16[4] = v12;
    }

    v11[2] = v18;
    LODWORD(__p) = *a2;
    result = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&__p);
    v25 = result * a3;
    *a4 += result * a3;
    *a5 += a3;
    if (a6)
    {
      if (*a2 != 7)
      {
        v25 = 0;
      }

      *a6 += v25;
    }
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex(OpenSubdiv::v3_1_1::Far::PatchTable *this, signed int a2, int a3)
{
  v3 = *(this + 1);
  if ((-858993459 * ((*(this + 2) - v3) >> 2)) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex();
  }

  v4 = v3 + 20 * a2;
  if (*(v4 + 4) <= a3)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex();
  }

  return (*(v4 + 12) + a3);
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::getSharpnessIndices(OpenSubdiv::v3_1_1::Far::PatchTable *this, uint64_t a2)
{
  v2 = *(this + 1);
  if ((-858993459 * ((*(this + 2) - v2) >> 2)) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getSharpnessIndices();
  }

  return *(this + 28) + 4 * *(v2 + 20 * a2 + 12);
}

uint64_t *OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayDescriptor@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, uint64_t a3@<X1>)
{
  v3 = this[1];
  if ((-858993459 * ((this[2] - v3) >> 2)) <= a3)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex();
  }

  *a1 = *(v3 + 20 * a3);
  return this;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::GetNumPatches(OpenSubdiv::v3_1_1::Far::PatchTable *this, uint64_t a2)
{
  v2 = *(this + 1);
  if ((-858993459 * ((*(this + 2) - v2) >> 2)) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex();
  }

  return *(v2 + 20 * a2 + 4);
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::GetNumControlVertices(OpenSubdiv::v3_1_1::Far::PatchTable *this, uint64_t a2)
{
  v2 = *(this + 1);
  if ((-858993459 * ((*(this + 2) - v2) >> 2)) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex();
  }

  v3 = *(v2 + 20 * a2 + 4);
  v5 = *(v2 + 20 * a2);
  return v3 * OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v5);
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::getPatchArrayVertices(OpenSubdiv::v3_1_1::Far::PatchTable *this, uint64_t a2)
{
  v2 = *(this + 1);
  if ((-858993459 * ((*(this + 2) - v2) >> 2)) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getSharpnessIndices();
  }

  v4 = (v2 + 20 * a2);
  v8 = *v4;
  OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v8);
  v5 = v4[2];
  v6 = *(this + 4);
  if (v5 >= ((*(this + 5) - v6) >> 2))
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getPatchArrayVertices();
  }

  return v6 + 4 * v5;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayVertices(OpenSubdiv::v3_1_1::Far::PatchTable *this, uint64_t a2)
{
  v2 = *(this + 1);
  if ((-858993459 * ((*(this + 2) - v2) >> 2)) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex();
  }

  v4 = (v2 + 20 * a2);
  v8 = *v4;
  OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v8);
  v5 = v4[2];
  v6 = *(this + 4);
  if (v5 >= ((*(this + 5) - v6) >> 2))
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayVertices();
  }

  return v6 + 4 * v5;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchVertices(OpenSubdiv::v3_1_1::Far::PatchTable *this, uint64_t a2, int a3)
{
  v3 = *(this + 1);
  if ((-858993459 * ((*(this + 2) - v3) >> 2)) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex();
  }

  v5 = (v3 + 20 * a2);
  v9 = *v5;
  v6 = v5[2] + OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v9) * a3;
  v7 = *(this + 4);
  if (v6 >= ((*(this + 5) - v7) >> 2))
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchVertices();
  }

  return v7 + 4 * v6;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::getPatchParams(OpenSubdiv::v3_1_1::Far::PatchTable *this, uint64_t a2)
{
  v2 = *(this + 1);
  if ((-858993459 * ((*(this + 2) - v2) >> 2)) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getSharpnessIndices();
  }

  return *(this + 7) + 8 * *(v2 + 20 * a2 + 12);
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayVaryingVertices(OpenSubdiv::v3_1_1::Far::PatchTable *this, uint64_t a2)
{
  if (*(this + 19) == *(this + 20))
  {
    return 0;
  }

  v2 = *(this + 1);
  if ((-858993459 * ((*(this + 2) - v2) >> 2)) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex();
  }

  return *(this + 19) + 4 * (*(v2 + 20 * a2 + 12) * OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices((this + 144)));
}

_DWORD *OpenSubdiv::v3_1_1::Far::PatchTable::populateVaryingVertices(OpenSubdiv::v3_1_1::Far::PatchTable *this)
{
  result = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices((this + 144));
  v4 = *(this + 1);
  v3 = *(this + 2);
  if ((-858993459 * ((v3 - v4) >> 2)) >= 1)
  {
    v5 = result;
    v6 = 0;
    while (1)
    {
      if (v6 >= (-858993459 * ((v3 - v4) >> 2)))
      {
        OpenSubdiv::v3_1_1::Far::PatchTable::getSharpnessIndices();
      }

      v7 = (v4 + 20 * v6);
      if (v7[1] >= 1)
      {
        break;
      }

LABEL_18:
      if (++v6 >= (-858993459 * ((v3 - v4) >> 2)))
      {
        return result;
      }
    }

    v8 = 0;
    v9 = *v7;
    while (1)
    {
      result = OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchVertices(this, v6, v8);
      v10 = (v8 + v7[3]) * v5;
      if (v9 <= 5)
      {
        if (v9 != 3)
        {
          if (v9 == 4)
          {
            v11 = (*(this + 19) + 4 * v10);
            *v11 = *result;
            v11[1] = result[1];
            v11[2] = result[2];
          }

          goto LABEL_16;
        }

        v12 = (*(this + 19) + 4 * v10);
        *v12 = *result;
        v12[1] = result[1];
        v12[2] = result[2];
        v13 = result[3];
        goto LABEL_15;
      }

      if (v9 == 9)
      {
        break;
      }

      if (v9 == 6)
      {
        v12 = (*(this + 19) + 4 * v10);
        *v12 = result[5];
        v12[1] = result[6];
        v12[2] = result[10];
        v13 = result[9];
LABEL_15:
        v12[3] = v13;
      }

LABEL_16:
      if (++v8 >= v7[1])
      {
        v4 = *(this + 1);
        v3 = *(this + 2);
        goto LABEL_18;
      }
    }

    v12 = (*(this + 19) + 4 * v10);
    *v12 = *result;
    v12[1] = result[5];
    v12[2] = result[10];
    v13 = result[15];
    goto LABEL_15;
  }

  return result;
}

uint64_t *OpenSubdiv::v3_1_1::Far::PatchTable::GetFVarPatchDescriptor@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, signed int a3@<W1>)
{
  if (a3 < 0 || (v3 = this[22], (-1227133513 * ((this[23] - v3) >> 3)) <= a3))
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::GetFVarPatchDescriptor();
  }

  *a1 = *(v3 + 56 * a3 + 4);
  return this;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::getFVarValues(OpenSubdiv::v3_1_1::Far::PatchTable *this, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0 || (v2 = *(this + 22), (-1227133513 * ((*(this + 23) - v2) >> 3)) <= a2))
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::allocateFVarPatchChannelValues();
  }

  return *(v2 + 56 * a2 + 8);
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayFVarValues(OpenSubdiv::v3_1_1::Far::PatchTable *this, uint64_t a2, int a3)
{
  v3 = *(this + 1);
  if ((-858993459 * ((*(this + 2) - v3) >> 2)) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex();
  }

  if (a3 < 0 || (v4 = *(this + 22), (-1227133513 * ((*(this + 23) - v4) >> 3)) <= a3))
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::GetFVarPatchDescriptor();
  }

  return *(v4 + 56 * a3 + 8) + 4 * (*(v3 + 20 * a2 + 12) * OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices((v4 + 56 * a3 + 4)));
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayFVarPatchParams(OpenSubdiv::v3_1_1::Far::PatchTable *this, uint64_t a2, signed int a3)
{
  v3 = *(this + 1);
  if ((-858993459 * ((*(this + 2) - v3) >> 2)) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex();
  }

  if (a3 < 0 || (v4 = *(this + 22), (-1227133513 * ((*(this + 23) - v4) >> 3)) <= a3))
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::GetFVarPatchDescriptor();
  }

  return *(v4 + 56 * a3 + 32) + 8 * *(v3 + 20 * a2 + 12);
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::getFVarPatchParams(OpenSubdiv::v3_1_1::Far::PatchTable *this, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0 || (v2 = *(this + 22), (-1227133513 * ((*(this + 23) - v2) >> 3)) <= a2))
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::allocateFVarPatchChannelValues();
  }

  return *(v2 + 56 * a2 + 32);
}

void std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 7;
        std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::destroy[abi:nn200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::destroy[abi:nn200100](uint64_t a1, void *a2)
{
  v3 = a2[4];
  if (v3)
  {
    a2[5] = v3;
    operator delete(v3);
  }

  v4 = a2[1];
  if (v4)
  {
    a2[2] = v4;

    operator delete(v4);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t *std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      *(v5 + 4) = *(v2 + 4);
      v2 += 20;
      v5 += 20;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v6 = result[1];
  result[1] = a2[2];
  a2[2] = v6;
  v7 = result[2];
  result[2] = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::__append(void *a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 56 * ((56 * a2 - 56) / 0x38) + 56;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0x492492492492492)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x249249249249249)
    {
      v9 = 0x492492492492492;
    }

    else
    {
      v9 = v8;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>>(a1, v9);
    }

    v11 = 56 * v6;
    v12 = 56 * ((56 * a2 - 56) / 0x38) + 56;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = a1[1];
    v15 = (v11 + *a1 - v14);
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>,OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel*>(a1, *a1, v14, v15);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::~__split_buffer(v18);
  }
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>,OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      a4[2] = 0;
      a4[3] = 0;
      a4[1] = 0;
      *(a4 + 1) = *(v7 + 1);
      a4[3] = v7[3];
      v7[1] = 0;
      v7[2] = 0;
      v7[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      a4[6] = 0;
      *(a4 + 2) = *(v7 + 2);
      a4[6] = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      v7 += 7;
      a4 += 7;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::destroy[abi:nn200100](a1, v5);
      v5 += 7;
    }
  }
}

void **std::__split_buffer<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::~__split_buffer(void **a1)
{
  std::__split_buffer<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::clear[abi:nn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::destroy[abi:nn200100](v4, (i - 56));
  }
}

void OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex()
{
  __assert_rtn("getPatchArray", "patchTable.cpp", 121, "arrayIndex<(Index)GetNumPatchArrays()");
}

{
  __assert_rtn("getPatchIndex", "patchTable.cpp", 228, "patchIndex<pa.numPatches");
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTopologySizing(OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase *this, OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2)
{
  v2 = *(this + 5);
  v3 = *v2;
  end = (*v2)->__end_;
  if (!end)
  {
    OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- mesh contains no vertices.");
    return 0;
  }

  begin = v3->__begin_;
  if (!LODWORD(v3->__begin_))
  {
    OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- meshes without faces not yet supported.");
    return 0;
  }

  if (SHIDWORD(v3->__end_cap_.__value_) >= 0x10000)
  {
    OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- face with %d vertices > %d max.");
    return 0;
  }

  v6 = &v3[1].__begin_[2 * begin - 2];
  v8 = *v6;
  v7 = v6[1];
  v9 = v7 + v8;
  if (!(v7 + v8))
  {
    OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- mesh contains no face-vertices.");
    return 0;
  }

  if (*this == 2 && v9 != 3 * begin)
  {
    OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- non-triangular faces not supported by Loop scheme.");
    return 0;
  }

  std::vector<float>::resize(v3 + 2, v9);
  begin_high = HIDWORD(v3->__begin_);
  if (begin_high >= 1)
  {
    std::vector<float>::resize(v3 + 3, (v3[2].__end_ - v3[2].__begin_));
    std::vector<float>::resize(v3 + 5, 2 * SHIDWORD(v3->__begin_));
    v12 = &v3[6].__begin_[2 * begin_high - 2];
    v13 = *v12;
    v14 = v12[1];
    std::vector<float>::resize(v3 + 7, v14 + v13);
    std::vector<unsigned short>::resize(&v3[8].__begin_, v14 + v13);
    v15 = 2 * end - 2;
    v16 = v3[11].__begin_;
    v17 = v16[v15];
    v18 = (8 * (v15 >> 1)) | 4;
    v19 = *(v16 + v18);
    std::vector<float>::resize(v3 + 12, v19 + v17);
    std::vector<unsigned short>::resize(&v3[13].__begin_, v19 + v17);
    v20 = v3[14].__begin_;
    v21 = v20[v15];
    v22 = *(v20 + v18);
    std::vector<float>::resize(v3 + 15, v22 + v21);
    std::vector<unsigned short>::resize(&v3[16].__begin_, v22 + v21);
    if (((v3[3].__end_ - v3[3].__begin_) >> 2) <= 0)
    {
      OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTopologySizing();
    }

    if (((v3[5].__end_ - v3[5].__begin_) >> 2) <= 0)
    {
      OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTopologySizing();
    }

    if (((v3[7].__end_ - v3[7].__begin_) >> 2) <= 0)
    {
      OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTopologySizing();
    }

    if (((v3[12].__end_ - v3[12].__begin_) >> 2) <= 0)
    {
      OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTopologySizing();
    }

    if (((v3[15].__end_ - v3[15].__begin_) >> 2) <= 0)
    {
      OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTopologySizing();
    }
  }

  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTopologyAssignment(OpenSubdiv::v3_1_1::Far::TopologyRefiner *this, uint64_t a2, void (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v6 = a2;
  v8 = *(this + 5);
  v9 = *v8;
  v10 = *(*v8 + 1);
  if (v10)
  {
    if (!*(v9 + 5))
    {
      OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- maximum valence not assigned.");
      return 0;
    }
  }

  else if (!OpenSubdiv::v3_1_1::Vtr::internal::Level::completeTopologyFromFaceVertices(*v8))
  {
    OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- vertex with valence %d > %d max.");
    return 0;
  }

  if (!v6 || (OpenSubdiv::v3_1_1::Vtr::internal::Level::validateTopology(v9, a3, a4) & 1) != 0)
  {
    OpenSubdiv::v3_1_1::Far::TopologyRefiner::initializeInventory(this, a2);
    return 1;
  }

  if (v10)
  {
    OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- invalid topology detected as fully specified.");
  }

  else
  {
    OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- invalid topology detected from partial specification.");
  }

  return 0;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTagsAndSharpness(OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase *this, OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2)
{
  v3 = **(this + 5);
  v4 = *(this + 1);
  v65 = v4;
  v59 = v4 & 3;
  v62 = (v4 & 3) == 0 && OpenSubdiv::v3_1_1::Sdc::SchemeTypeTraits::GetLocalNeighborhoodSize(*this) > 0;
  if (*(v3 + 4) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(v3 + 240);
      v8 = *(v3 + 216);
      v9 = *(*(v3 + 144) + v5) < 2;
      v10 = *(v7 + v6);
      v11 = v10 & 0xFD | (2 * v9);
      *(v7 + v6) = v11;
      if (v9 || (v10 & 1) != 0)
      {
        *(v8 + 4 * v6) = 1092616192;
        v11 = *(v7 + v6);
        v12 = 10.0;
      }

      else
      {
        v12 = *(v8 + 4 * v6);
      }

      v13 = v12 >= 10.0;
      v14 = v11 & 0xFB | (4 * (v12 >= 10.0));
      *(v7 + v6) = v14;
      v15 = *(v8 + 4 * v6);
      v16 = (8 * v13) ^ 8;
      if (v15 <= 0.0)
      {
        v16 = 0;
      }

      *(v7 + v6++) = v16 | v14 & 0xF7;
      v5 += 8;
    }

    while (v6 < *(v3 + 4));
  }

  RegularVertexValence = OpenSubdiv::v3_1_1::Sdc::SchemeTypeTraits::GetRegularVertexValence(*this);
  if (*(v3 + 8) >= 1)
  {
    for (i = 0; i < *(v3 + 8); ++i)
    {
      v18 = *(v3 + 336);
      v19 = (8 * i) | 4;
      v20 = *(v3 + 360) + 4 * *(v18 + v19);
      v21 = *(v18 + 8 * i);
      if (v21 < 1)
      {
        v31 = 0;
        v24 = 0;
        v30 = 1;
      }

      else
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = v21;
        v26 = v20;
        do
        {
          v27 = *v26++;
          v28 = *(*(v3 + 240) + v27);
          v22 += (v28 >> 1) & 1;
          v24 = vadd_s32(v24, (*&vshl_u32(vdup_n_s32(v28), 0xFFFFFFFEFFFFFFFDLL) & 0xFFFFFFC1FFFFFFC1));
          v23 += v28 & 1;
          --v25;
        }

        while (v25);
        v29 = v23 == 2;
        v30 = v22 == 0;
        if (v22)
        {
          v31 = 0;
        }

        else
        {
          v31 = v29;
        }
      }

      v32 = *(v3 + 432);
      v33 = *(v3 + 408);
      v34 = *(v3 + 264);
      v35 = *(v34 + 8 * i);
      v61 = v20;
      v63 = *(v34 + v19);
      v64 = *(v3 + 288);
      if (v35 == 1)
      {
        v36 = v21 == 2;
        if (v59 == 2 && v21 == 2)
        {
          v36 = 1;
LABEL_32:
          *(v33 + 4 * i) = 1092616192;
          goto LABEL_33;
        }
      }

      else
      {
        v36 = 0;
      }

      v37 = v35 > v21 && v31;
      if ((*(v32 + 2 * i) & 1) != 0 && !v37)
      {
        goto LABEL_32;
      }

LABEL_33:
      v38 = v24.i32[1];
      v39 = v24.i32[0];
      v40 = *(v32 + 2 * i) & 0xFFEF | (16 * (*(v33 + 4 * i) >= 10.0));
      *(v32 + 2 * i) = v40;
      v41 = *(v33 + 4 * i);
      if (v41 < 10.0 && v41 > 0.0)
      {
        v43 = 32;
      }

      else
      {
        v43 = 0;
      }

      *(v32 + 2 * i) = v40 & 0xFF9F | ((v39 != 0) << 6) | v43;
      v44 = OpenSubdiv::v3_1_1::Sdc::Crease::DetermineVertexVertexRule(&v65, *(v33 + 4 * i), v24.i32[1] + v39);
      v45 = *(v32 + 2 * i);
      if (v30)
      {
        v46 = 0;
      }

      else
      {
        v46 = 4;
      }

      if (v36 && (v45 & 0x10) != 0)
      {
        v47 = 8;
      }

      else
      {
        v47 = 2 * (v35 != RegularVertexValence);
        if (!v30)
        {
          v47 = 2 * (v35 != RegularVertexValence / 2);
        }
      }

      *(v32 + 2 * i) = ((v44 & 0xF) << 7) | v47 | v45 & 0x8071 | v46 | ((v38 != 0) << 12) | (((v38 | v45 & 0x10) != 0) << 14);
      if (!v38)
      {
        goto LABEL_67;
      }

      v48 = *(v33 + 4 * i);
      if ((v45 & 0x10) == 0)
      {
        v48 = 0.0;
      }

      v49 = OpenSubdiv::v3_1_1::Sdc::Crease::DetermineVertexVertexRule(&v65, v48, v38);
      if (v49 == 8)
      {
        if (v38 != v21)
        {
          goto LABEL_67;
        }

        v54 = *(v32 + 2 * i);
        if (v21 <= 2 && (v54 & 0x10) == 0)
        {
          goto LABEL_67;
        }

        LOWORD(v55) = v54 & 0xBFFF;
      }

      else
      {
        if (v49 != 4)
        {
          goto LABEL_67;
        }

        v50 = *(v32 + 2 * i);
        v51 = v50 | 0x2000;
        *(v32 + 2 * i) = v50 | 0x2000;
        if ((v50 & 3) != 0)
        {
          goto LABEL_67;
        }

        if ((v50 & 4) != 0)
        {
          LOWORD(v55) = v50 & 0x9FFC | 0x2000;
        }

        else if (RegularVertexValence == 4)
        {
          v55 = v50 & 0x9FF8 | 0x2000 | ((((*(*(v3 + 240) + v61[2]) ^ *(*(v3 + 240) + *v61)) >> 2) & 1) << 14);
        }

        else
        {
          if (RegularVertexValence != 6)
          {
            OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTagsAndSharpness();
          }

          v52 = *(v3 + 240);
          if (((*(v52 + v61[3]) ^ *(v52 + *v61)) & 4) != 0)
          {
            v53 = 0x4000;
          }

          else
          {
            v53 = ((*(v52 + v61[4]) ^ *(v52 + v61[1])) & 4) << 12;
          }

          LOWORD(v55) = v53 | v51 & 0xBFF8;
        }
      }

      *(v32 + 2 * i) = v55;
LABEL_67:
      if (v62 && (*(v32 + 2 * i) & 4) != 0 && v35 >= 1)
      {
        v56 = (v64 + 4 * v63);
        do
        {
          v57 = *v56++;
          *(*(v3 + 96) + v57) |= 1u;
          *(this + 8) |= 2u;
          --v35;
        }

        while (v35);
      }
    }
  }

  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareFaceVaryingChannels(OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase *this, OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2)
{
  v3 = **(this + 5);
  RegularVertexValence = OpenSubdiv::v3_1_1::Sdc::SchemeTypeTraits::GetRegularVertexValence(*this);
  if (((*(**(this + 5) + 464) - *(**(this + 5) + 456)) >> 3) < 1)
  {
    return 1;
  }

  v5 = 0;
  v6 = RegularVertexValence / 2;
  while (OpenSubdiv::v3_1_1::Vtr::internal::Level::getNumFVarValues(v3, v5))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Level::completeFVarChannelTopology(v3, v5++, v6);
    if (v5 >= ((*(**(this + 5) + 464) - *(**(this + 5) + 456)) >> 3))
    {
      return 1;
    }
  }

  OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- face-varying channel %d has no values.", v5);
  return 0;
}

void OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTopologySizing()
{
  __assert_rtn("prepareComponentTopologySizing", "topologyRefinerFactory.cpp", 113, "baseLevel.getNumVertexEdgesTotal() > 0");
}

{
  __assert_rtn("prepareComponentTopologySizing", "topologyRefinerFactory.cpp", 112, "baseLevel.getNumVertexFacesTotal() > 0");
}

{
  __assert_rtn("prepareComponentTopologySizing", "topologyRefinerFactory.cpp", 111, "baseLevel.getNumEdgeFacesTotal() > 0");
}

{
  __assert_rtn("prepareComponentTopologySizing", "topologyRefinerFactory.cpp", 110, "baseLevel.getNumEdgeVerticesTotal() > 0");
}

{
  __assert_rtn("prepareComponentTopologySizing", "topologyRefinerFactory.cpp", 109, "baseLevel.getNumFaceEdgesTotal() > 0");
}

void OpenSubdiv::v3_1_1::Far::PtexIndices::initializePtexIndices(std::vector<int> *this, const OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2)
{
  RegularFaceSize = OpenSubdiv::v3_1_1::Sdc::SchemeTypeTraits::GetRegularFaceSize(*a2);
  v5 = *(a2 + 5);
  v6 = *v5;
  v7 = **v5;
  std::vector<float>::resize(this, v7 + 1);
  begin = this->__begin_;
  if (v7 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = *(v6 + 24);
    v11 = v7;
    v12 = this->__begin_;
    do
    {
      *v12++ = v9;
      v14 = *v10;
      v10 += 2;
      v13 = v14;
      if (v14 == RegularFaceSize)
      {
        v13 = 1;
      }

      v9 += v13;
      --v11;
    }

    while (v11);
  }

  begin[v7] = v9;
}

std::vector<int> *OpenSubdiv::v3_1_1::Far::PtexIndices::PtexIndices(std::vector<int> *this, const OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2)
{
  this->__begin_ = 0;
  this->__end_ = 0;
  this->__end_cap_.__value_ = 0;
  OpenSubdiv::v3_1_1::Far::PtexIndices::initializePtexIndices(this, a2);
  return this;
}

void OpenSubdiv::v3_1_1::Far::PtexIndices::~PtexIndices(OpenSubdiv::v3_1_1::Far::PtexIndices *this)
{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

uint64_t OpenSubdiv::v3_1_1::Far::PtexIndices::GetFaceId(OpenSubdiv::v3_1_1::Far::PtexIndices *this, uint64_t a2)
{
  if (((*(this + 1) - *this) >> 2) <= a2)
  {
    OpenSubdiv::v3_1_1::Far::PtexIndices::GetFaceId();
  }

  return *(*this + 4 * a2);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::ConstArray<int>::FindIndexIn4Tuple(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= 3)
  {
    OpenSubdiv::v3_1_1::Vtr::ConstArray<int>::FindIndexIn4Tuple();
  }

  v2 = *a1;
  if (**a1 == a2)
  {
    return 0;
  }

  if (v2[1] == a2)
  {
    return 1;
  }

  if (v2[2] == a2)
  {
    return 2;
  }

  if (v2[3] != a2)
  {
    OpenSubdiv::v3_1_1::Vtr::ConstArray<int>::FindIndexIn4Tuple();
  }

  return 3;
}

void OpenSubdiv::v3_1_1::Vtr::ConstArray<int>::FindIndexIn4Tuple()
{
  __assert_rtn("FindIndexIn4Tuple", "array.h", 86, "FindIndexIn4Tuple() did not find expected value! == 0");
}

{
  __assert_rtn("FindIndexIn4Tuple", "array.h", 81, "_size>=4");
}

void OpenSubdiv::v3_1_1::Osd::MTLPatchTable::~MTLPatchTable(id *this)
{
  v2 = this[12];
  v3 = this[13];
  while (v2 != v3)
  {
  }

  v4 = this[15];
  v5 = this[16];
  if (v4 != v5)
  {
    do
    {
    }

    while (v4 != v5);
    v4 = this[15];
  }

  if (v4)
  {
    this[16] = v4;
    operator delete(v4);
  }

  v6 = this[12];
  if (v6)
  {
    this[13] = v6;
    operator delete(v6);
  }

  v9 = this + 9;
  std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:nn200100](&v9);
  v7 = this[5];
  if (v7)
  {
    this[6] = v7;
    operator delete(v7);
  }

  v8 = *this;
  if (*this)
  {
    this[1] = v8;
    operator delete(v8);
  }
}

void sub_21C20AF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = *(v10 + 120);
  if (v12)
  {
    *(v10 + 128) = v12;
    operator delete(v12);
  }

  v13 = *(v10 + 96);
  if (v13)
  {
    *(v10 + 104) = v13;
    operator delete(v13);
  }

  a10 = (v10 + 72);
  std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:nn200100](&a10);
  v14 = *(v10 + 40);
  if (v14)
  {
    *(v10 + 48) = v14;
    operator delete(v14);
  }

  v15 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t OpenSubdiv::v3_1_1::Osd::MTLPatchTable::allocate(OpenSubdiv::v3_1_1::Osd::MTLPatchTable *this, const OpenSubdiv::v3_1_1::Far::PatchTable *a2, MTLContext *a3)
{
  OpenSubdiv::v3_1_1::Osd::CpuPatchTable::CpuPatchTable(&v24, a2);
  v5 = v25 - v24;
  v7 = v26;
  v6 = v27;
  v9 = v28;
  v8 = v29;
  v10 = (v25 - v24) >> 4;
  std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::__assign_with_size[abi:nn200100]<OpenSubdiv::v3_1_1::Osd::PatchArray const*,OpenSubdiv::v3_1_1::Osd::PatchArray const*>(this, v24, v25, v10);
  if (v6 == v7)
  {
    v16 = 24;
LABEL_14:
    v15 = 0;
    *(this + v16) = 0;
    goto LABEL_15;
  }

  v11 = [a3->var0 newBufferWithBytes:v26 length:v6 - v7 options:0];
  *(this + 3) = v11;
  if (!v11)
  {
    goto LABEL_11;
  }

  [v11 setLabel:@"OSD PatchIndexBuffer"];
  if (v8 == v9)
  {
    v16 = 32;
    goto LABEL_14;
  }

  v12 = [a3->var0 newBufferWithBytes:v28 length:v8 - v9 options:0];
  *(this + 4) = v12;
  if (v12)
  {
    [v12 setLabel:@"OSD PatchParamBuffer"];
    if (v30 == v31)
    {
      v13 = 0;
    }

    else
    {
      v13 = v30;
    }

    std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::__assign_with_size[abi:nn200100]<OpenSubdiv::v3_1_1::Osd::PatchArray const*,OpenSubdiv::v3_1_1::Osd::PatchArray const*>(this + 5, v13, (v13 + v5), v10);
    if (v33 == v32)
    {
      *(this + 8) = 0;
    }

    else
    {
      v14 = [a3->var0 newBufferWithBytes:v32 length:v33 - v32 options:0];
      *(this + 8) = v14;
      if (!v14 && v33 != v32)
      {
        goto LABEL_11;
      }
    }

    v18 = -1431655765 * ((v35 - v34) >> 3);
    std::vector<std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>>::resize(this + 9, v18);
    std::vector<objc_object  {objcproto9MTLBuffer}*>::resize(this + 12, v18);
    std::vector<objc_object  {objcproto9MTLBuffer}*>::resize(this + 15, v18);
    if (v18 < 1)
    {
      v15 = 1;
      goto LABEL_15;
    }

    v19 = 0;
    v20 = 0;
    v21 = v18 & 0x7FFFFFFF;
    while (1)
    {
      std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::__assign_with_size[abi:nn200100]<OpenSubdiv::v3_1_1::Osd::PatchArray const*,OpenSubdiv::v3_1_1::Osd::PatchArray const*>((*(this + 9) + v19), *(v34 + v19), (*(v34 + v19) + v5), v10);
      v22 = *(v36 + v19 + 8) == *(v36 + v19) ? 0 : [a3->var0 newBufferWithBytes:? length:? options:?];
      *(*(this + 12) + 8 * v20) = v22;
      if (!*(*(this + 12) + 8 * v20))
      {
        break;
      }

      v23 = *(v37 + v19 + 8) == *(v37 + v19) ? 0 : [a3->var0 newBufferWithBytes:? length:? options:?];
      *(*(this + 15) + 8 * v20) = v23;
      if (!*(*(this + 15) + 8 * v20))
      {
        break;
      }

      ++v20;
      v19 += 24;
      v15 = 1;
      if (v21 == v20)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_11:
  v15 = 0;
LABEL_15:
  OpenSubdiv::v3_1_1::Osd::CpuPatchTable::~CpuPatchTable(&v24);
  return v15;
}

void std::vector<objc_object  {objcproto9MTLBuffer}*>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<objc_object  {objcproto9MTLBuffer}*>::__append(result, a2 - v2);
  }
}

char *std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::__assign_with_size[abi:nn200100]<OpenSubdiv::v3_1_1::Osd::PatchArray const*,OpenSubdiv::v3_1_1::Osd::PatchArray const*>(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(a1, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v18 = *v5++;
      *result = v18;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12);
    if (v11 != result)
    {
      do
      {
        v14 = *v5++;
        *result = v14;
        result += 16;
        v12 -= 16;
      }

      while (v12);
      v11 = a1[1];
    }

    v15 = v11;
    if (v13 != a3)
    {
      v15 = v11;
      v16 = v11;
      do
      {
        *v16 = *v13;
        v17 = *(v13 + 4);
        *(v16 + 3) = *(v13 + 3);
        *(v16 + 4) = v17;
        ++v13;
        v16 += 16;
        v15 += 16;
      }

      while (v13 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void std::vector<objc_object  {objcproto9MTLBuffer}*>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<UITouch *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void OpenSubdiv::v3_1_1::Osd::MTLPatchTable::Create(id *a1)
{
  OpenSubdiv::v3_1_1::Osd::MTLPatchTable::~MTLPatchTable(a1);
  MEMORY[0x21CF07610]();
  __assert_rtn("Create", "mtlPatchTable.mm", 97, "0 && MTLPatchTable Creation Failed");
}

uint64_t OpenSubdiv::v3_1_1::Sdc::Crease::DetermineVertexVertexRule(OpenSubdiv::v3_1_1::Sdc::Crease *this, float a2, int a3)
{
  if (a3 <= 2 && a2 <= 0.0)
  {
    return (1 << a3);
  }

  else
  {
    return 8;
  }
}

uint64_t OpenSubdiv::v3_1_1::Sdc::Crease::DetermineVertexVertexRule(OpenSubdiv::v3_1_1::Sdc::Crease *this, float a2, unsigned int a3, float *a4)
{
  if (a2 > 0.0)
  {
    return 8;
  }

  if (a3 < 1)
  {
    return 1;
  }

  v5 = 0;
  v6 = a3;
  do
  {
    v7 = *a4++;
    if (v7 > 0.0)
    {
      ++v5;
    }

    --v6;
  }

  while (v6);
  if (v5 <= 2)
  {
    return (1 << v5);
  }

  else
  {
    return 8;
  }
}

double OpenSubdiv::v3_1_1::Sdc::Crease::ComputeFractionalWeightAtVertex(OpenSubdiv::v3_1_1::Sdc::Crease *this, float a2, float a3, unsigned int a4, float *a5, const float *a6)
{
  v6 = a2 > 0.0 && a3 <= 0.0;
  if (a2 <= 0.0 || a3 > 0.0)
  {
    a2 = 0.0;
  }

  if (a6 && (*this & 0x60) != 0)
  {
    if (a4 >= 1)
    {
      v7 = a4;
      do
      {
        if (*a5 > 0.0 && *a6 <= 0.0)
        {
          a2 = a2 + *a5;
          ++v6;
        }

        ++a6;
        ++a5;
        --v7;
      }

      while (v7);
    }
  }

  else if (a4 >= 1)
  {
    v8 = a4;
    do
    {
      v9 = *a5++;
      v10 = a2 + v9;
      v6 += v9 > 0.0 && v9 <= 1.0;
      if (v9 > 0.0 && v9 <= 1.0)
      {
        a2 = v10;
      }

      --v8;
    }

    while (v8);
  }

  if (!v6)
  {
    return 0.0;
  }

  *&result = a2 / v6;
  if (*&result > 1.0)
  {
    *&result = 1.0;
  }

  return result;
}

float OpenSubdiv::v3_1_1::Sdc::Crease::SubdivideEdgeSharpnessAtVertex(OpenSubdiv::v3_1_1::Sdc::Crease *this, float a2, unsigned int a3, float *a4)
{
  if (a3 >= 2 && (*this & 0x60) != 0)
  {
    v4 = 0.0;
    if (a2 > 0.0)
    {
      v4 = 10.0;
      if (a2 < 10.0)
      {
        v5 = 0;
        v6 = a3;
        v7 = 0.0;
        do
        {
          v8 = *a4++;
          v9 = v7 + v8;
          v10 = v8 > 0.0 && v8 < 10.0;
          if (v8 > 0.0 && v8 < 10.0)
          {
            v7 = v9;
          }

          v5 += v10;
          --v6;
        }

        while (v6);
        v11 = v5 != 0;
        v12 = v5 - 1;
        if (v12 != 0 && v11)
        {
          a2 = (((v7 - a2) / v12) * 0.25) + (a2 * 0.75);
        }

        return fmaxf(a2 + -1.0, 0.0);
      }
    }
  }

  else
  {
    v4 = 0.0;
    if (a2 > 0.0)
    {
      v4 = 10.0;
      if (a2 < 10.0)
      {
        v4 = 0.0;
        if (a2 > 1.0)
        {
          return a2 + -1.0;
        }
      }
    }
  }

  return v4;
}

_WORD *OpenSubdiv::v3_1_1::Sdc::Crease::SubdivideEdgeSharpnessesAroundVertex(_WORD *this, unsigned int a2, float *a3, float *a4)
{
  if (a2 > 1 && (*this & 0x60) != 0)
  {
    if ((*this & 0x60) == 0x20)
    {
      v4 = 0;
      v5 = a2;
      v6 = 0.0;
      v7 = a2;
      v8 = a3;
      do
      {
        v9 = *v8++;
        v10 = v6 + v9;
        v4 += v9 > 0.0 && v9 < 10.0;
        if (v9 > 0.0 && v9 < 10.0)
        {
          v6 = v10;
        }

        --v7;
      }

      while (v7);
      if (v4)
      {
        while (1)
        {
          v11 = *a3;
          v12 = 0.0;
          if (*a3 <= 0.0)
          {
            goto LABEL_16;
          }

          v12 = 10.0;
          if (v11 >= 10.0)
          {
            goto LABEL_16;
          }

          if (v4 == 1)
          {
            break;
          }

          v13 = ((((v6 - v11) / (v4 - 1)) * 0.25) + (v11 * 0.75)) + -1.0;
          v12 = 0.0;
          if (v13 <= 0.0)
          {
            goto LABEL_16;
          }

LABEL_17:
          *a4++ = v13;
          ++a3;
          if (!--v5)
          {
            return this;
          }
        }

        v12 = v11 + -1.0;
        if (v11 <= 1.0)
        {
          v12 = 0.0;
        }

LABEL_16:
        v13 = v12;
        goto LABEL_17;
      }

      do
      {
        v14 = *a3++;
        *a4++ = v14;
        --v5;
      }

      while (v5);
    }
  }

  else if (a2 >= 1)
  {
    v15 = a2;
    do
    {
      v16 = *a3;
      v17 = 0.0;
      if (*a3 > 0.0)
      {
        v17 = 10.0;
        if (v16 < 10.0)
        {
          v17 = 0.0;
          if (v16 > 1.0)
          {
            v17 = v16 + -1.0;
          }
        }
      }

      *a4++ = v17;
      ++a3;
      --v15;
    }

    while (v15);
  }

  return this;
}

double OpenSubdiv::v3_1_1::Vtr::internal::Level::Level(OpenSubdiv::v3_1_1::Vtr::internal::Level *this)
{
  result = 0.0;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

void OpenSubdiv::v3_1_1::Vtr::internal::Level::~Level(OpenSubdiv::v3_1_1::Vtr::internal::Level *this)
{
  v4 = this + 456;
  v2 = *(this + 57);
  v3 = *(v4 + 1);
  if (((v3 - v2) >> 3) >= 1)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::~FVarLevel(v2[v5]);
        MEMORY[0x21CF07610]();
        v2 = *(this + 57);
        v3 = *(this + 58);
      }

      ++v5;
    }

    while (v5 < ((v3 - v2) >> 3));
  }

  if (v2)
  {
    *(this + 58) = v2;
    operator delete(v2);
  }

  v6 = *(this + 54);
  if (v6)
  {
    *(this + 55) = v6;
    operator delete(v6);
  }

  v7 = *(this + 51);
  if (v7)
  {
    *(this + 52) = v7;
    operator delete(v7);
  }

  v8 = *(this + 48);
  if (v8)
  {
    *(this + 49) = v8;
    operator delete(v8);
  }

  v9 = *(this + 45);
  if (v9)
  {
    *(this + 46) = v9;
    operator delete(v9);
  }

  v10 = *(this + 42);
  if (v10)
  {
    *(this + 43) = v10;
    operator delete(v10);
  }

  v11 = *(this + 39);
  if (v11)
  {
    *(this + 40) = v11;
    operator delete(v11);
  }

  v12 = *(this + 36);
  if (v12)
  {
    *(this + 37) = v12;
    operator delete(v12);
  }

  v13 = *(this + 33);
  if (v13)
  {
    *(this + 34) = v13;
    operator delete(v13);
  }

  v14 = *(this + 30);
  if (v14)
  {
    *(this + 31) = v14;
    operator delete(v14);
  }

  v15 = *(this + 27);
  if (v15)
  {
    *(this + 28) = v15;
    operator delete(v15);
  }

  v16 = *(this + 24);
  if (v16)
  {
    *(this + 25) = v16;
    operator delete(v16);
  }

  v17 = *(this + 21);
  if (v17)
  {
    *(this + 22) = v17;
    operator delete(v17);
  }

  v18 = *(this + 18);
  if (v18)
  {
    *(this + 19) = v18;
    operator delete(v18);
  }

  v19 = *(this + 15);
  if (v19)
  {
    *(this + 16) = v19;
    operator delete(v19);
  }

  v20 = *(this + 12);
  if (v20)
  {
    *(this + 13) = v20;
    operator delete(v20);
  }

  v21 = *(this + 9);
  if (v21)
  {
    *(this + 10) = v21;
    operator delete(v21);
  }

  v22 = *(this + 6);
  if (v22)
  {
    *(this + 7) = v22;
    operator delete(v22);
  }

  v23 = *(this + 3);
  if (v23)
  {
    *(this + 4) = v23;
    operator delete(v23);
  }
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::validateTopology(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, void (*a2)(uint64_t, char *, uint64_t), uint64_t a3)
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = *(this + 6);
  if (((*(this + 7) - v6) & 0x3FFFFFFFCLL) == 0)
  {
    if (!a2)
    {
      return 0;
    }

    snprintf(__str, 0x400uLL, "%s - missing face-verts", "MISSING_FACE_VERTS");
    a2(3, __str, a3);
    v60 = 1;
LABEL_65:
    v62 = 0;
    if (v60 && ((*(this + 37) - *(this + 36)) & 0x3FFFFFFFCLL) == 0)
    {
      snprintf(__str, 0x400uLL, "%s - missing vert-faces", "MISSING_VERT_FACES");
      v61 = 4;
      goto LABEL_68;
    }

    return v62;
  }

  v7 = *(this + 36);
  if (((*(this + 37) - v7) & 0x3FFFFFFFCLL) == 0)
  {
    v60 = a2 != 0;
    goto LABEL_65;
  }

  v8 = *this;
  if (v8 >= 1)
  {
    v9 = 0;
    while (1)
    {
      v10 = (*(this + 3) + 8 * v9);
      v11 = *v10;
      if (v11 >= 1)
      {
        break;
      }

LABEL_14:
      if (++v9 == v8)
      {
        goto LABEL_15;
      }
    }

    v12 = 0;
    v13 = v6 + 4 * v10[1];
    v14 = *(this + 33);
    while (1)
    {
      v15 = *(v13 + 4 * v12);
      v16 = *(v14 + 8 * v15);
      if (v16 < 1)
      {
        break;
      }

      v17 = *(v14 + 8 * v15 + 4);
      v18 = (v7 + 4 * v17);
      v19 = (*(this + 39) + 2 * v17);
      while (1)
      {
        v20 = *v18++;
        if (v9 == v20 && v12 == *v19)
        {
          break;
        }

        ++v19;
        if (!--v16)
        {
          goto LABEL_61;
        }
      }

      if (++v12 == v11)
      {
        goto LABEL_14;
      }
    }

LABEL_61:
    if (!a2)
    {
      return 0;
    }

    snprintf(__str, 0x400uLL, "%s - face %d correlation of vert %d failed");
    goto LABEL_63;
  }

LABEL_15:
  v21 = *(this + 21);
  if (((*(this + 22) - v21) & 0x3FFFFFFFCLL) == 0)
  {
    if (!a2)
    {
      return 0;
    }

    snprintf(__str, 0x400uLL, "%s - missing edge-faces", "MISSING_EDGE_FACES");
    a2(0, __str, a3);
    v64 = 1;
LABEL_76:
    v62 = 0;
    if (v64 && ((*(this + 10) - *(this + 9)) & 0x3FFFFFFFCLL) == 0)
    {
      snprintf(__str, 0x400uLL, "%s - missing face-edges", "MISSING_FACE_EDGES");
      v61 = 2;
      goto LABEL_68;
    }

    return v62;
  }

  v22 = *(this + 9);
  if (((*(this + 10) - v22) & 0x3FFFFFFFCLL) == 0)
  {
    v64 = a2 != 0;
    goto LABEL_76;
  }

  if (v8 >= 1)
  {
    v23 = 0;
    while (1)
    {
      v24 = (*(this + 3) + 8 * v23);
      v25 = *v24;
      if (v25 >= 1)
      {
        break;
      }

LABEL_28:
      if (++v23 == v8)
      {
        goto LABEL_29;
      }
    }

    v26 = 0;
    v27 = v22 + 4 * v24[1];
    v28 = *(this + 18);
    while (1)
    {
      v29 = *(v27 + 4 * v26);
      v30 = *(v28 + 8 * v29);
      if (v30 < 1)
      {
        break;
      }

      v31 = *(v28 + 8 * v29 + 4);
      v32 = (v21 + 4 * v31);
      v33 = (*(this + 24) + 2 * v31);
      while (1)
      {
        v34 = *v32++;
        if (v23 == v34 && v26 == *v33)
        {
          break;
        }

        ++v33;
        if (!--v30)
        {
          goto LABEL_73;
        }
      }

      if (++v26 == v25)
      {
        goto LABEL_28;
      }
    }

LABEL_73:
    if (!a2)
    {
      return 0;
    }

    snprintf(__str, 0x400uLL, "%s - face %d correlation of edge %d failed", "FAILED_CORRELATION_FACE_EDGE", v23, v26);
    v61 = 8;
    goto LABEL_68;
  }

LABEL_29:
  v35 = *(this + 15);
  if (((*(this + 16) - v35) & 0x3FFFFFFFCLL) == 0)
  {
    if (!a2)
    {
      return 0;
    }

    snprintf(__str, 0x400uLL, "%s - missing edge-verts", "MISSING_EDGE_VERTS");
    v65 = 1;
    a2(1, __str, a3);
LABEL_84:
    v62 = 0;
    if (v65 && ((*(this + 46) - *(this + 45)) & 0x3FFFFFFFCLL) == 0)
    {
      snprintf(__str, 0x400uLL, "%s - missing vert-edges", "MISSING_VERT_EDGES");
      v61 = 5;
      goto LABEL_68;
    }

    return v62;
  }

  v36 = *(this + 45);
  if (((*(this + 46) - v36) & 0x3FFFFFFFCLL) == 0)
  {
    v65 = a2 != 0;
    goto LABEL_84;
  }

  v37 = *(this + 1);
  if (v37 >= 1)
  {
    v38 = 0;
    v39 = *(this + 42);
LABEL_33:
    v40 = 0;
    v41 = 1;
    while (1)
    {
      v42 = v41;
      v43 = *(v35 + 8 * v38 + 4 * v40);
      v44 = *(v39 + 8 * v43);
      if (v44 < 1)
      {
        break;
      }

      v45 = *(v39 + 8 * v43 + 4);
      v46 = (v36 + 4 * v45);
      v47 = (*(this + 48) + 2 * v45);
      while (1)
      {
        v48 = *v46++;
        if (v38 == v48 && v40 == *v47)
        {
          break;
        }

        ++v47;
        if (!--v44)
        {
          goto LABEL_81;
        }
      }

      v41 = 0;
      v40 = 1;
      if ((v42 & 1) == 0)
      {
        if (++v38 != v37)
        {
          goto LABEL_33;
        }

        goto LABEL_42;
      }
    }

LABEL_81:
    if (!a2)
    {
      return 0;
    }

    snprintf(__str, 0x400uLL, "%s - edge %d correlation of vert %d failed");
LABEL_63:
    v61 = 7;
LABEL_68:
    a2(v61, __str, a3);
    return 0;
  }

LABEL_42:
  v49 = 2 * *(this + 5);
  v76 = &v77;
  __p = 0;
  if (v49 >= 0x21)
  {
    __p = operator new(4 * v49);
    v76 = __p;
  }

  if (*(this + 2) >= 1)
  {
    for (i = 0; i < *(this + 2); ++i)
    {
      if ((*(*(this + 54) + 2 * i) & 0x801) == 0)
      {
        v51 = *(this + 33);
        v52 = (8 * i) | 4;
        v53 = *(v51 + v52);
        v54 = *(this + 36);
        v55 = *(v51 + 8 * i);
        v56 = *(this + 42);
        v74 = *(v56 + v52);
        v75 = *(this + 45);
        v57 = *(v56 + 8 * i);
        if (!OpenSubdiv::v3_1_1::Vtr::internal::Level::orderVertexFacesAndEdges(this, i, v76, &v76[v55]))
        {
          if (!a2)
          {
            goto LABEL_105;
          }

          snprintf(__str, 0x400uLL, "%s - vertex %d cannot orient incident faces and edges", "FAILED_ORIENTATION_INCIDENT_FACES_EDGES", i);
          v73 = 11;
          goto LABEL_104;
        }

        if (v55 >= 1)
        {
          v58 = 0;
          while (*(v54 + 4 * v53 + 4 * v58) == v76[v58])
          {
            if (v55 == ++v58)
            {
              goto LABEL_54;
            }
          }

          if (a2)
          {
            snprintf(__str, 0x400uLL, "%s - vertex %d orientation failure at incident face %d", "FAILED_ORIENTATION_INCIDENT_FACE", i, v58);
            v73 = 10;
            goto LABEL_104;
          }

          goto LABEL_105;
        }

LABEL_54:
        if (v57 >= 1)
        {
          v59 = 0;
          while (*(v75 + 4 * v74 + 4 * v59) == v76[v55 + v59])
          {
            if (v57 == ++v59)
            {
              goto LABEL_47;
            }
          }

          if (a2)
          {
            snprintf(__str, 0x400uLL, "%s - vertex %d orientation failure at incident edge %d", "FAILED_ORIENTATION_INCIDENT_EDGE", i, v59);
            v73 = 9;
            goto LABEL_104;
          }

          goto LABEL_105;
        }
      }

LABEL_47:
      ;
    }
  }

  v66 = *(this + 1);
  if (v66 < 1)
  {
LABEL_93:
    v62 = 1;
  }

  else
  {
    v67 = 0;
    v68 = 0;
    v69 = *(this + 30);
    v70 = 8 * v66;
    while (1)
    {
      v71 = *v69++;
      if ((v71 & 1) == 0)
      {
        if (*(*(this + 15) + v67) == *(*(this + 15) + v67 + 4))
        {
          if (!a2)
          {
            goto LABEL_105;
          }

          snprintf(__str, 0x400uLL, "%s - Error in eIndex = %d:  degenerate edge not tagged marked non-manifold", "DEGENERATE_EDGE", v68);
          v73 = 12;
          goto LABEL_104;
        }

        v72 = *(*(this + 18) + v67);
        if ((v72 - 3) <= 0xFFFFFFFD)
        {
          break;
        }
      }

      ++v68;
      v67 += 8;
      if (v70 == v67)
      {
        goto LABEL_93;
      }
    }

    if (!a2)
    {
      goto LABEL_105;
    }

    snprintf(__str, 0x400uLL, "%s - edge %d with %d incident faces not tagged non-manifold", "NON_MANIFOLD_EDGE", v68, v72);
    v73 = 13;
LABEL_104:
    a2(v73, __str, a3);
LABEL_105:
    v62 = 0;
  }

  operator delete(__p);
  return v62;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::orderVertexFacesAndEdges(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, int *a3, int *a4)
{
  v4 = *(this + 42);
  v5 = 8 * a2;
  v6 = *(v4 + v5);
  v7 = *(this + 33);
  v8 = *(v7 + v5);
  if (v8)
  {
    v9 = v6 < 2;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && v6 - v8 <= 1)
  {
    v12 = (8 * ((2 * a2) >> 1)) | 4;
    if (v6 == v8)
    {
      v13 = *(*(this + 36) + 4 * *(v7 + v12));
      v14 = *(this + 3);
      v15 = *(v14 + 4 * ((2 * v13) | 1));
      v16 = *(this + 6) + 4 * v15;
      v17 = *(v14 + 8 * v13);
      if (v17)
      {
        v18 = 4 * v17;
        v19 = (v16 + v18);
        v20 = (*(this + 6) + 4 * v15);
        while (*v20 != a2)
        {
          ++v20;
          v18 -= 4;
          if (!v18)
          {
            v20 = v19;
            break;
          }
        }
      }

      else
      {
        v20 = (*(this + 6) + 4 * v15);
      }

      v22 = (v20 - v16) >> 2;
      v25 = *(*(this + 9) + 4 * v15 + 4 * v22);
    }

    else
    {
      v21 = 0;
      LODWORD(v22) = 0;
      v23 = *(this + 45) + 4 * *(v4 + v12);
      v24 = *(this + 18);
      LODWORD(v13) = -1;
      v25 = -1;
      do
      {
        v26 = *(v23 + 4 * v21);
        if (*(v24 + 8 * v26) == 1)
        {
          v25 = *(v23 + 4 * v21);
          v13 = *(*(this + 21) + 4 * *(v24 + 4 * ((2 * v26) | 1)));
          v27 = *(this + 3);
          v28 = *(v27 + 4 * ((2 * v13) | 1));
          v29 = *(this + 6) + 4 * v28;
          v30 = *(v27 + 8 * v13);
          if (v30)
          {
            v31 = 4 * v30;
            v32 = (v29 + v31);
            v33 = (*(this + 6) + 4 * v28);
            while (*v33 != a2)
            {
              ++v33;
              v31 -= 4;
              if (!v31)
              {
                v33 = v32;
                break;
              }
            }
          }

          else
          {
            v33 = (*(this + 6) + 4 * v28);
          }

          v22 = (v33 - v29) >> 2;
          if (v25 == *(*(this + 9) + 4 * v28 + 4 * v22))
          {
            break;
          }
        }

        ++v21;
      }

      while (v21 != v6);
    }

    *a3 = v13;
    *a4 = v25;
    v34 = 1;
    LODWORD(v35) = v13;
    v36 = *(this + 3);
    v37 = v25;
    v38 = 1;
    v39 = *(this + 9);
    while (1)
    {
      v40 = v37;
      v41 = *(v36 + 8 * v35);
      if (v22)
      {
        v41 = v22;
      }

      v37 = *(v39 + 4 * *(v36 + 8 * v35 + 4) + 4 * v41 - 4);
      if (v37 == v40 || v37 == v25)
      {
        break;
      }

      a4[v34] = v37;
      if (v38 < v8)
      {
        v43 = *(this + 18);
        v44 = (*(this + 21) + 4 * *(v43 + 4 * ((2 * v37) | 1)));
        v45 = *(v43 + 8 * v37);
        if (v45 == 1)
        {
          v46 = *v44;
          if (*v44 == v35)
          {
            return 0;
          }
        }

        else
        {
          if (!v45)
          {
            return 0;
          }

          v46 = *v44;
        }

        v35 = v44[v46 == v35];
        v47 = v39 + 4 * *(v36 + 4 * ((2 * v35) | 1));
        v48 = *(v36 + 8 * v35);
        if (v48)
        {
          v49 = 4 * v48;
          v50 = (v47 + v49);
          v51 = (v39 + 4 * *(v36 + 4 * ((2 * v35) | 1)));
          while (*v51 != v37)
          {
            ++v51;
            v49 -= 4;
            if (!v49)
            {
              v51 = v50;
              break;
            }
          }
        }

        else
        {
          v51 = (v39 + 4 * *(v36 + 4 * ((2 * v35) | 1)));
        }

        v22 = (v51 - v47) >> 2;
        a3[v38++] = v35;
      }

      if (++v34 == v6)
      {
        if (v38 != v8)
        {
          OpenSubdiv::v3_1_1::Vtr::internal::Level::orderVertexFacesAndEdges();
        }

        return 1;
      }
    }
  }

  return 0;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(void *result, int a2, _WORD *a3, unsigned int a4)
{
  v4 = (2 * a2) | 1;
  v5 = result[3];
  v6 = (result[6] + 4 * *(v5 + 4 * v4));
  v7 = *(v5 + 8 * a2);
  if ((a4 & 0x80000000) != 0)
  {
    if (v7 >= 1)
    {
      do
      {
        v19 = *v6++;
        *a3++ = *(result[54] + 2 * v19);
        --v7;
      }

      while (v7);
    }
  }

  else if (v7 >= 1)
  {
    v8 = 0;
    v9 = *(result[57] + 8 * a4);
    v10 = v9[3] + 4 * *(*(*v9 + 24) + 4 * v4);
    do
    {
      v11 = v6[v8];
      v12 = *(v10 + 4 * v8);
      if (*(*v9 + 12) <= 0)
      {
        v13 = *(v9[12] + 4 * v11);
        v12 = v13 - 1;
        v14 = (v9[18] + 4 * v13);
        do
        {
          v15 = *v14++;
          ++v12;
        }

        while (v15 != *(v10 + 4 * v8));
      }

      v16 = *(v9[21] + v12);
      LOWORD(v11) = *(result[54] + 2 * v11);
      if (v16)
      {
        v17 = v11 & 0x8860;
        if (v16 >= 0x40)
        {
          v18 = 1040;
        }

        else
        {
          v18 = 1048;
        }

        if ((v16 & 8) != 0)
        {
          v18 = 8704;
        }

        LODWORD(v11) = (v18 | v17) & 0xFFFFBFFC | (((v16 >> 7) & 1) << 14) | v16 & 2 | (v16 >> 2) & 1 | 0x1004;
      }

      a3[v8++] = v11;
    }

    while (v8 != v7);
  }

  return result;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceETags(void *result, int a2, _BYTE *a3, unsigned int a4)
{
  v4 = result[3];
  v5 = (result[9] + 4 * *(v4 + 8 * a2 + 4));
  v6 = *(v4 + 8 * a2);
  if ((a4 & 0x80000000) != 0)
  {
    if (v6 >= 1)
    {
      do
      {
        v10 = *v5++;
        *a3++ = *(result[30] + v10);
        --v6;
      }

      while (v6);
    }
  }

  else if (v6 >= 1)
  {
    v7 = *(result[57] + 8 * a4);
    do
    {
      v8 = *v5++;
      v9 = *(result[30] + v8);
      if (*(*(v7 + 48) + v8))
      {
        v9 |= 6u;
      }

      *a3++ = v9;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag::BitwiseOr(unsigned __int16 *a1, unsigned int a2)
{
  result = *a1;
  if (a2 >= 2)
  {
    v4 = a1 + 1;
    v5 = a2 - 1;
    do
    {
      v6 = *v4++;
      result = v6 | result;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceCompositeVTag(uint64_t a1, int **a2)
{
  v2 = *(a1 + 432);
  result = *(v2 + 2 * **a2);
  v4 = *(a2 + 2);
  if (v4 >= 2)
  {
    v5 = *a2 + 1;
    v6 = v4 - 1;
    do
    {
      v7 = *v5++;
      result = *(v2 + 2 * v7) | result;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceCompositeVTag(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, unsigned int a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = *(this + 3);
  v6 = *(v5 + 8 * a2 + 4);
  v7 = *(this + 6);
  v8 = *(v5 + 8 * a2);
  if ((a3 & 0x80000000) != 0)
  {
    v24 = *(this + 54);
    v12 = *(v24 + 2 * *(v7 + 4 * v6));
    if (v8 >= 2)
    {
      v25 = v8 - 1;
      v26 = (v7 + 4 * v6 + 4);
      do
      {
        v27 = *v26++;
        v12 = *(v24 + 2 * v27) | v12;
        --v25;
      }

      while (v25);
    }
  }

  else
  {
    v9 = *(*(this + 57) + 8 * a3);
    v10 = v30;
    v29 = v30;
    __p = 0;
    if (v8 >= 0x41)
    {
      v10 = operator new(v8);
      __p = v10;
      v29 = v10;
    }

    OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceValueTags(v9, a2, v10);
    v11 = *(this + 54);
    v12 = *(v11 + 2 * *(v7 + 4 * v6));
    v13 = *v29;
    if (v13)
    {
      v14 = v12 & 0xD867 | (8 * (v13 < 0x40)) | 0x410;
      if ((v13 & 8) != 0)
      {
        v14 = v12 & 0xD867 | 0x2200;
      }

      v12 = v14 & 0xAFF8 | (((v13 >> 7) & 1) << 14) | v13 & 2 | (v13 >> 2) & 1 | 0x1004;
    }

    if (v8 >= 2)
    {
      v15 = v29 + 1;
      v16 = (v7 + 4 * v6 + 4);
      v17 = v8 - 1;
      do
      {
        v18 = *v16++;
        v19 = *(v11 + 2 * v18);
        LODWORD(v18) = *v15++;
        v20 = v18;
        if (v18)
        {
          v21 = v19 & 0xD867;
          v22 = v21 | 0x2200;
          v23 = v21 | (8 * (v20 < 0x40)) | 0x410;
          if ((v20 & 8) != 0)
          {
            v23 = v22;
          }

          v19 = v23 & 0xAFF8 | (((v20 >> 7) & 1) << 14) | v20 & 2 | (v20 >> 2) & 1 | 0x1004;
        }

        v12 = v19 | v12;
        --v17;
      }

      while (v17);
    }

    operator delete(__p);
  }

  return v12;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::getVertexCompositeFVarVTag(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, int a3)
{
  v3 = *(*(this + 57) + 8 * a3);
  v4 = *(v3[12] + 4 * a2);
  v5 = v3[21];
  v6 = *(*(this + 54) + 2 * a2);
  v7 = *(v5 + v4);
  if ((v7 & 1) == 0)
  {
    return *(*(this + 54) + 2 * a2);
  }

  v9 = *(v3[9] + 2 * a2);
  v10 = v6 & 0xD867 | (8 * (v7 < 0x40)) | 0x410;
  if ((v7 & 8) != 0)
  {
    v10 = v6 & 0xD867 | 0x2200;
  }

  result = v10 & 0xAFF8 | (((v7 >> 7) & 1) << 14) | v7 & 2 | (v7 >> 2) & 1 | 0x1004;
  if (v9 >= 2)
  {
    v11 = (v4 + v5 + 1);
    v12 = v9 - 1;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = v6;
      if (v14)
      {
        v16 = v6 & 0xD867 | (8 * (v13 < 0x40)) | 0x410;
        if ((v13 & 8) != 0)
        {
          v16 = v6 & 0xD867 | 0x2200;
        }

        v15 = v16 & 0xAE78 | (((v13 >> 7) & 1) << 14) | v13 & 2 | (v13 >> 2) & 1 | 0x1004;
      }

      result = v15 | result;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularRingAroundVertex(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, int *a3, unsigned int a4)
{
  v4 = *(this + 33);
  v5 = *(v4 + 8 * a2);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(v4 + 8 * a2 + 4);
  v8 = (*(this + 36) + 4 * v7);
  v9 = (*(this + 39) + 2 * v7);
  v10 = *(*(this + 42) + 8 * a2);
  v11 = (v5 - 1);
  v12 = v5;
  do
  {
    v13 = *v8++;
    v14 = (2 * v13) | 1;
    if ((a4 & 0x80000000) != 0)
    {
      v18 = (*(this + 3) + 4 * v14);
      v16 = (this + 48);
    }

    else
    {
      v15 = *(*(this + 57) + 8 * a4);
      v17 = *v15;
      v16 = v15 + 3;
      v18 = (*(v17 + 24) + 4 * v14);
    }

    v19 = *v16 + 4 * *v18;
    v20 = *v9;
    v21 = &a3[v6];
    *v21 = *(v19 + 4 * ((*v9 + 1) & 3));
    v22 = v6 + 2;
    v21[1] = *(v19 + 4 * (v20 & 3 ^ 2));
    if (v10 > v5 && !v11)
    {
      a3[v22] = *(v19 + 4 * ((v20 - 1) & 3));
      v22 = (v6 + 3);
    }

    --v11;
    ++v9;
    v6 = v22;
    --v12;
  }

  while (v12);
  return v22;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularPartialRingAroundVertex(void *a1, int a2, unsigned __int16 *a3, uint64_t a4, unsigned int a5)
{
  if (*(a1[54] + 2 * a2))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularPartialRingAroundVertex();
  }

  v5 = *a3;
  if (!*a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = a1[33];
  v8 = *(v7 + 8 * a2 + 4);
  v9 = *(v7 + 8 * a2);
  v10 = a1[36] + 4 * v8;
  v11 = a1[39] + 2 * v8;
  v12 = a3[1];
  do
  {
    v13 = (2 * *(v10 + 4 * (v12 % v9))) | 1;
    if ((a5 & 0x80000000) != 0)
    {
      v17 = (a1[3] + 4 * v13);
      v15 = a1 + 6;
    }

    else
    {
      v14 = *(a1[57] + 8 * a5);
      v16 = *v14;
      v15 = v14 + 3;
      v17 = (*(v16 + 24) + 4 * v13);
    }

    v18 = *v15 + 4 * *v17;
    v19 = *(v11 + 2 * (v12 % v9));
    v20 = (a4 + 4 * v6);
    *v20 = *(v18 + 4 * ((v19 + 1) & 3));
    v21 = v6 + 2;
    v20[1] = *(v18 + 4 * (v19 & 3 ^ 2));
    if (v5 == 1 && (a3[2] & 1) == 0)
    {
      *(a4 + 4 * v21) = *(v18 + 4 * ((v19 - 1) & 3));
      v21 = (v6 + 3);
    }

    ++v12;
    v6 = v21;
    --v5;
  }

  while (v5);
  return v21;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularInteriorPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, uint64_t a2, int *a3, unsigned int a4, unsigned int a5)
{
  if (a4 >= 4)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularInteriorPatchPoints();
  }

  v6 = a2;
  v8 = (&OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularInteriorPatchPoints(int,int *,int,int)const::rotationSequence + 4 * a4);
  v9 = *(this + 6);
  v10 = (2 * a2) | 1;
  v33 = this + 48;
  v11 = *(*(this + 3) + 4 * v10);
  v12 = v9 + 4 * v11;
  v34 = a5;
  if ((a5 & 0x80000000) != 0)
  {
    v14 = v9 + 4 * v11;
  }

  else
  {
    v13 = *(*(this + 57) + 8 * a5);
    v14 = v13[3] + 4 * *(*(*v13 + 24) + 4 * v10);
  }

  v15 = 0;
  *a3 = *(v14 + 4 * *v8);
  a3[1] = *(v14 + 4 * v8[1]);
  a3[2] = *(v14 + 4 * v8[2]);
  a3[3] = *(v14 + 4 * v8[3]);
  v16 = a3 + 6;
  do
  {
    v17 = *(v12 + 4 * v8[v15]);
    v18 = 2 * v17;
    v19 = *(this + 33);
    v20 = v19 + 8 * v17;
    v21 = *(v19 + 4 * v18);
    v35 = *(this + 36) + 4 * *(v20 + 4);
    v36 = v21;
    v22 = *(this + 39);
    v23 = *(v20 + 4);
    v24 = OpenSubdiv::v3_1_1::Vtr::ConstArray<int>::FindIndexIn4Tuple(&v35, v6) & 3 ^ 2;
    v25 = (2 * *(v35 + 4 * v24)) | 1;
    if ((a5 & 0x80000000) != 0)
    {
      v29 = (*(this + 3) + 4 * v25);
      v27 = v33;
    }

    else
    {
      v26 = *(*(this + 57) + 8 * v34);
      v28 = *v26;
      v27 = v26 + 3;
      v29 = (*(v28 + 24) + 4 * v25);
    }

    v30 = *(v22 + 2 * v23 + 2 * v24);
    ++v15;
    v31 = *v27 + 4 * *v29;
    *(v16 - 2) = *(v31 + 4 * ((v30 + 1) & 3));
    *(v16 - 1) = *(v31 + 4 * (v30 & 3 ^ 2));
    *v16 = *(v31 + 4 * ((v30 - 1) & 3));
    v16 += 3;
  }

  while (v15 != 4);
  return 16;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularBoundaryPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, int *a3, int a4, unsigned int a5)
{
  v5 = 0;
  v6 = a4 & 3 ^ 2;
  v7 = (2 * a2) | 1;
  v8 = *(this + 3);
  v9 = *(this + 6);
  v10 = v9 + 4 * *(v8 + 4 * v7);
  v11 = *(this + 36);
  v12 = *(this + 33);
  v13 = *(v12 + 8 * *(v10 + 4 * v6) + 4);
  v14 = v11 + 4 * v13;
  v15 = *(v12 + 8 * *(v10 + 4 * (((a4 & 3 ^ 2) + 1) & 3)) + 4);
  v16 = v11 + 4 * v15;
  v17 = *(this + 39);
  v18 = v17 + 2 * v13;
  v19 = -1;
  v20 = -1;
  do
  {
    if (*(v14 + 4 * v5) == a2)
    {
      v19 = v5;
    }

    if (*(v16 + 4 * v5) == a2)
    {
      v20 = v5;
    }

    ++v5;
  }

  while (v5 != 4);
  if (v19 < 0 || v20 < 0)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularBoundaryPatchPoints();
  }

  v21 = v19 & 3 ^ 2;
  v22 = v20 & 3 ^ 2;
  v23 = (v20 - 1) & 3;
  v24 = *(v14 + 4 * ((v19 + 1) & 3));
  v25 = *(v14 + 4 * v21);
  v26 = *(v18 + 2 * ((v19 + 1) & 3));
  v27 = *(v18 + 2 * v21);
  v28 = *(v16 + 4 * v22);
  v29 = *(v16 + 4 * v23);
  v30 = v17 + 2 * v15;
  v31 = *(v30 + 2 * v22);
  v32 = *(v30 + 2 * v23);
  if ((a5 & 0x80000000) == 0)
  {
    v33 = *(*(this + 57) + 8 * a5);
    v8 = *(*v33 + 24);
    v9 = v33[3];
    v10 = v9 + 4 * *(v8 + 4 * v7);
  }

  v34 = *(v8 + 8 * v24 + 4);
  v35 = *(v8 + 8 * v25 + 4);
  v36 = *(v8 + 8 * v28 + 4);
  v37 = *(v8 + 8 * v29 + 4);
  *a3 = *(v10 + 4 * ((a4 + 1) & 3));
  a3[1] = *(v10 + 4 * v6);
  a3[2] = *(v10 + 4 * ((a4 - 1) & 3));
  a3[3] = *(v10 + 4 * a4);
  v38 = v9 + 4 * v35;
  a3[4] = *(v9 + 4 * v34 + 4 * (v26 & 3 ^ 2));
  a3[5] = *(v38 + 4 * ((v27 + 1) & 3));
  a3[6] = *(v38 + 4 * (v27 & 3 ^ 2));
  v39 = *(v38 + 4 * ((v27 - 1) & 3));
  v40 = v9 + 4 * v36;
  a3[7] = v39;
  a3[8] = *(v40 + 4 * ((v31 + 1) & 3));
  a3[9] = *(v40 + 4 * (v31 & 3 ^ 2));
  a3[10] = *(v40 + 4 * ((v31 - 1) & 3));
  a3[11] = *(v9 + 4 * v37 + 4 * (v32 & 3 ^ 2));
  return 12;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularCornerPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, int *a3, int a4, unsigned int a5)
{
  v5 = a4 & 3 ^ 2;
  v6 = (2 * a2) | 1;
  v7 = *(this + 3);
  v8 = *(this + 6);
  v9 = v8 + 4 * *(v7 + 4 * v6);
  v10 = *(v9 + 4 * v5);
  v11 = *(this + 33);
  v12 = *(v11 + 8 * v10);
  if (v12 < 1)
  {
LABEL_5:
    OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularCornerPatchPoints();
  }

  v13 = 0;
  v14 = *(v11 + 8 * v10 + 4);
  v15 = *(this + 36) + 4 * v14;
  v16 = *(this + 39) + 2 * v14;
  while (*(v15 + 4 * v13) != a2)
  {
    if (v12 == ++v13)
    {
      goto LABEL_5;
    }
  }

  v17 = (v13 + 1) & 3;
  v18 = v13 & 3 ^ 2;
  v19 = (v13 - 1) & 3;
  v20 = *(v15 + 4 * v17);
  v21 = *(v15 + 4 * v18);
  v22 = *(v15 + 4 * v19);
  v23 = *(v16 + 2 * v17);
  v24 = *(v16 + 2 * v18);
  v25 = *(v16 + 2 * v19);
  if ((a5 & 0x80000000) == 0)
  {
    v26 = *(*(this + 57) + 8 * a5);
    v7 = *(*v26 + 24);
    v8 = v26[3];
    v9 = v8 + 4 * *(v7 + 4 * v6);
  }

  v27 = *(v7 + 8 * v20 + 4);
  v28 = *(v7 + 8 * v21 + 4);
  v29 = *(v7 + 8 * v22 + 4);
  *a3 = *(v9 + 4 * a4);
  a3[1] = *(v9 + 4 * ((a4 + 1) & 3));
  a3[2] = *(v9 + 4 * v5);
  a3[3] = *(v9 + 4 * ((a4 - 1) & 3));
  v30 = v8 + 4 * v28;
  a3[4] = *(v8 + 4 * v27 + 4 * (v23 & 3 ^ 2));
  a3[5] = *(v30 + 4 * ((v24 + 1) & 3));
  a3[6] = *(v30 + 4 * (v24 & 3 ^ 2));
  a3[7] = *(v30 + 4 * ((v24 - 1) & 3));
  a3[8] = *(v8 + 4 * v29 + 4 * (v25 & 3 ^ 2));
  return 9;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::isSingleCreasePatch(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, float *a3, int *a4)
{
  v4 = *(this + 3);
  v5 = *(v4 + 8 * a2 + 4);
  v6 = *(v4 + 8 * a2);
  v7 = (*(this + 6) + 4 * v5);
  v8 = *(this + 54);
  if (v6 < 2)
  {
    v11 = *(v8 + 2 * *v7);
  }

  else
  {
    v9 = v6 - 1;
    v10 = v7 + 1;
    v11 = *(v8 + 2 * *v7);
    do
    {
      v12 = *v10++;
      v11 |= *(v8 + 2 * v12);
      --v9;
    }

    while (v9);
  }

  if ((v11 & 0x707) != 0x200)
  {
    return 0;
  }

  v13 = ((*(v8 + 2 * *v7) & 0x780) == 512) | (2 * ((*(v8 + 2 * v7[1]) & 0x780) == 512)) | (4 * ((*(v8 + 2 * v7[2]) & 0x780) == 512)) | (8 * ((*(v8 + 2 * v7[3]) & 0x780) == 512));
  if ((0xEDB7uLL >> v13))
  {
    return 0;
  }

  v14 = OpenSubdiv::v3_1_1::Vtr::internal::Level::isSingleCreasePatch(int,float *,int *)const::sharpEdgeFromCreaseMask[v13];
  v15 = *(this + 45);
  v16 = *(this + 42);
  v17 = (v15 + 4 * *(v16 + 8 * v7[v14] + 4));
  v18 = *(this + 27);
  if (*(v18 + 4 * *v17) != *(v18 + 4 * v17[2]))
  {
    return 0;
  }

  if (*(v18 + 4 * v17[1]) != *(v18 + 4 * v17[3]))
  {
    return 0;
  }

  v19 = (v15 + 4 * *(v16 + 8 * v7[(v14 + 1) & 3] + 4));
  if (*(v18 + 4 * *v19) != *(v18 + 4 * v19[2]) || *(v18 + 4 * v19[1]) != *(v18 + 4 * v19[3]))
  {
    return 0;
  }

  if (a3)
  {
    *a3 = *(v18 + 4 * *(*(this + 9) + 4 * v5 + 4 * v14));
  }

  if (a4)
  {
    *a4 = v14;
  }

  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::findEdge(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, int a3)
{
  v3 = *(this + 42);
  v4 = (*(this + 45) + 4 * *(v3 + 8 * a2 + 4));
  v5 = *(v3 + 8 * a2);
  if (a2 == a3)
  {
    if (v5 >= 1)
    {
      v6 = *(this + 15);
      while (1)
      {
        v8 = *v4++;
        result = v8;
        if (*(v6 + 8 * v8) == *(v6 + 8 * v8 + 4))
        {
          break;
        }

        if (!--v5)
        {
          return 0xFFFFFFFFLL;
        }
      }

      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if (v5 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(this + 15);
  while (1)
  {
    v10 = *v4++;
    result = v10;
    v11 = (v9 + 8 * v10);
    if (*v11 == a3 || v11[1] == a3)
    {
      break;
    }

    if (!--v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

BOOL OpenSubdiv::v3_1_1::Vtr::internal::Level::completeTopologyFromFaceVertices(OpenSubdiv::v3_1_1::Vtr::internal::Level *this)
{
  v1 = *(this + 2);
  v2 = *this;
  v3 = (this + 4);
  if (v1 < 1 || v2 < 1 || *(this + 1) != 0)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Level::completeTopologyFromFaceVertices();
  }

  v6 = this;
  v7 = this + 264;
  std::vector<float>::resize(this + 11, 2 * v1);
  std::vector<float>::resize(v6 + 14, 2 * v1);
  std::vector<float>::resize(v6 + 17, v1);
  std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>::resize(v6 + 54, v1);
  bzero(*(v6 + 54), 2 * *(v6 + 2));
  *v6 = v2;
  std::vector<float>::resize(v6 + 1, 2 * v2);
  v8 = *(v6 + 12);
  v9 = *(v6 + 13) - v8;
  if (v2 <= v9)
  {
    if (v2 < v9)
    {
      *(v6 + 13) = &v8[v2];
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::FTag>::__append(v6 + 12, v2 - v9);
    v8 = *(v6 + 12);
  }

  bzero(v8, *v6);
  *(v6 + 1) = 0;
  std::vector<float>::resize(v6 + 6, 0);
  std::vector<float>::resize(v6 + 9, 0);
  v10 = *(v6 + 30);
  if (*(v6 + 31) != v10)
  {
    *(v6 + 31) = v10;
  }

  std::vector<float>::resize(v6 + 3, ((*(v6 + 7) - *(v6 + 6)) >> 2));
  v11 = 4 * v1;
  std::vector<unsigned int>::reserve(v6 + 5, v11);
  std::vector<unsigned int>::reserve(v6 + 7, v11);
  std::vector<unsigned int>::reserve(v6 + 6, v11);
  v12 = 2;
  v112 = (v6 + 144);
  v113 = (v6 + 168);
  v115[0] = 0;
  v115[1] = 0;
  v114 = v115;
  v13 = *(v6 + 18);
  v14 = (*(v6 + 19) - v13) >> 2;
  v15 = v14 / 2;
  v110 = v14 / 2;
  v111 = 2;
  v89 = v3;
  if (v14 >= 2)
  {
    v16 = 0;
    v17 = (v13 + 4);
    do
    {
      *(v17 - 1) = 0;
      *v17 = v111 * v16;
      v17 += 2;
      ++v16;
      v15 = v110;
    }

    while (v16 < v110);
    v12 = v111;
  }

  std::vector<float>::resize(v6 + 7, v15 * v12);
  v18 = 6;
  v106 = v7;
  v107 = (v6 + 288);
  v109[0] = 0;
  v109[1] = 0;
  v108 = v109;
  v19 = *(v6 + 33);
  v20 = (*(v6 + 34) - v19) >> 2;
  v21 = v20 / 2;
  v104 = v20 / 2;
  v105 = 6;
  if (v20 < 2)
  {
    v24 = 6;
  }

  else
  {
    v22 = 0;
    v23 = (v19 + 4);
    do
    {
      *(v23 - 1) = 0;
      *v23 = v105 * v22;
      v23 += 2;
      ++v22;
      v21 = v104;
    }

    while (v22 < v104);
    v24 = v105;
  }

  std::vector<float>::resize(v6 + 12, v21 * v24);
  v100 = (v6 + 336);
  v101 = (v6 + 360);
  v103[0] = 0;
  v103[1] = 0;
  v102 = v103;
  v25 = *(v6 + 42);
  v26 = (*(v6 + 43) - v25) >> 2;
  v27 = v26 / 2;
  v98 = v26 / 2;
  v99 = 6;
  v86 = (v6 + 240);
  v87 = (v6 + 144);
  if (v26 >= 2)
  {
    v28 = 0;
    v29 = (v25 + 4);
    do
    {
      *(v29 - 1) = 0;
      *v29 = v99 * v28;
      v29 += 2;
      ++v28;
      v27 = v98;
    }

    while (v28 < v98);
    v18 = v99;
  }

  std::vector<float>::resize(v6 + 15, v27 * v18);
  v30 = 0;
  __p = 0;
  v96 = 0;
  v97 = 0;
  v31 = v89;
  v88 = v2;
  do
  {
    v32 = (*(v6 + 3) + 8 * v30);
    v33 = *v32;
    if (v33 >= 1)
    {
      v34 = 0;
      v35 = v32[1];
      v90 = *(v6 + 9) + 4 * v35;
      v91 = *(v6 + 6) + 4 * v35;
      do
      {
        v36 = *(v91 + 4 * v34);
        v94 = v36;
        v37 = v34 + 1;
        v38 = (v34 + 1);
        if (v34 + 1 == v33)
        {
          v38 = 0;
        }

        v39 = *(v91 + 4 * v38);
        v92 = 0;
        v93 = v39;
        if (v36 == v39)
        {
          v92 = -1;
          std::vector<int>::push_back[abi:nn200100](&__p, v31);
          v40 = v92;
        }

        else
        {
          v41 = v36;
          v117 = v36;
          v42 = *(*v100 + 8 * v36);
          if (v42 <= v99)
          {
            v44 = (*v101 + 4 * *(*v100 + 4 * ((2 * v41) | 1)));
          }

          else
          {
            v118[0] = &v117;
            v43 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v102, &v117, &std::piecewise_construct, v118);
            v44 = v43[5];
            v42 = ((v43[6] - v44) >> 2);
          }

          if (v42 < 1)
          {
LABEL_42:
            v40 = -1;
          }

          else
          {
            while (1)
            {
              v45 = *v44++;
              v40 = v45;
              v46 = (*(v6 + 15) + 8 * v45);
              if (*v46 == v39 || v46[1] == v39)
              {
                break;
              }

              if (!--v42)
              {
                goto LABEL_42;
              }
            }
          }

          v92 = v40;
        }

        if (v40 != -1)
        {
          v117 = v40;
          LODWORD(v47) = *(*v112 + 2 * v40);
          if (v47 <= v111)
          {
            v49 = &v113->__begin_[*(*v112 + 2 * v40 + 1)];
          }

          else
          {
            v118[0] = &v117;
            v48 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v114, &v117, &std::piecewise_construct, v118);
            v49 = v48[5];
            v47 = (v48[6] - v49) >> 2;
          }

          if (v30 == v49[v47 - 1])
          {
            std::vector<int>::push_back[abi:nn200100](&__p, &v92);
            std::vector<int>::push_back[abi:nn200100](&__p, v31);
LABEL_54:
            v92 = *v31;
            *v31 = v92 + 1;
            std::vector<int>::push_back[abi:nn200100](v6 + 15, &v94);
            v51 = v6;
            std::vector<int>::push_back[abi:nn200100](v6 + 15, &v93);
            LODWORD(v118[0]) = 0;
            std::vector<int>::push_back[abi:nn200100](v112, v118);
            LODWORD(v118[0]) = v111 * v110;
            std::vector<int>::push_back[abi:nn200100](v112, v118);
            v52 = ++v110;
            std::vector<float>::resize(v113, v111 * v52);
            v53 = v92;
            v116 = v92;
            v117 = v94;
            v54 = *(*v100 + 8 * v94);
            v55 = *(*v100 + 4 * ((2 * v94) | 1));
            if (v54 >= v99)
            {
              v118[0] = &v117;
              v56 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v102, &v117, &std::piecewise_construct, v118);
              v57 = v56;
              if (v54 <= v99)
              {
                std::vector<float>::resize((v56 + 5), v99 + 1);
                memcpy(v57[5], (*v101 + 4 * v55), 4 * v99);
                *(v57[5] + 4 * v99) = v53;
              }

              else
              {
                std::vector<int>::push_back[abi:nn200100](v56 + 5, &v116);
              }
            }

            else
            {
              *(*v101 + 4 * (v55 + v54)) = v92;
            }

            v58 = *v100;
            *(v58 + 8 * v117) = *(*v100 + 8 * v117) + 1;
            v59 = v92;
            v116 = v92;
            v117 = v93;
            v60 = *(v58 + 8 * v93);
            v61 = *(v58 + 4 * ((2 * v93) | 1));
            if (v60 >= v99)
            {
              v118[0] = &v117;
              v62 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v102, &v117, &std::piecewise_construct, v118);
              v63 = v62;
              if (v60 <= v99)
              {
                std::vector<float>::resize((v62 + 5), v99 + 1);
                memcpy(v63[5], (*v101 + 4 * v61), 4 * v99);
                *(v63[5] + 4 * v99) = v59;
              }

              else
              {
                std::vector<int>::push_back[abi:nn200100](v62 + 5, &v116);
              }
            }

            else
            {
              *(*v101 + 4 * (v61 + v60)) = v92;
            }

            v6 = v51;
            ++*(*v100 + 8 * v117);
            v50 = v92;
            v31 = v89;
            goto LABEL_65;
          }

          if (v47 > 1 || v94 == *(*(v6 + 15) + 8 * v92))
          {
            std::vector<int>::push_back[abi:nn200100](&__p, &v92);
          }
        }

        v50 = v92;
        if (v92 == -1)
        {
          goto LABEL_54;
        }

LABEL_65:
        v116 = v30;
        v117 = v50;
        v64 = *(*v112 + 2 * v50);
        v65 = *(*v112 + 2 * v50 + 1);
        if (v64 >= v111)
        {
          v118[0] = &v117;
          v66 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v114, &v117, &std::piecewise_construct, v118);
          v67 = v66;
          if (v64 <= v111)
          {
            std::vector<float>::resize((v66 + 5), v111 + 1);
            memcpy(v67[5], &v113->__begin_[v65], 4 * v111);
            *(v67[5] + 4 * v111) = v30;
          }

          else
          {
            std::vector<int>::push_back[abi:nn200100](v66 + 5, &v116);
          }
        }

        else
        {
          v113->__begin_[v65 + v64] = v30;
        }

        ++*(*v112 + 2 * v117);
        v116 = v30;
        v117 = v94;
        v68 = *(*v106 + 8 * v94);
        v69 = *(*v106 + 4 * ((2 * v94) | 1));
        if (v68 >= v105)
        {
          v118[0] = &v117;
          v70 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v108, &v117, &std::piecewise_construct, v118);
          v71 = v70;
          if (v68 <= v105)
          {
            std::vector<float>::resize((v70 + 5), v105 + 1);
            memcpy(v71[5], (*v107 + 4 * v69), 4 * v105);
            *(v71[5] + 4 * v105) = v30;
          }

          else
          {
            std::vector<int>::push_back[abi:nn200100](v70 + 5, &v116);
          }
        }

        else
        {
          *(*v107 + 4 * (v69 + v68)) = v30;
        }

        ++*(*v106 + 8 * v117);
        *(v90 + 4 * v34++) = v92;
      }

      while (v37 != v33);
    }

    ++v30;
  }

  while (v30 != v88);
  *(v6 + 4) = v72;
  v75 = *(v6 + 5);
  if (v75 < 1)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Level::completeTopologyFromFaceVertices();
  }

  if (v73 > v75)
  {
    v75 = v73;
  }

  if (v74 <= v75)
  {
    v76 = v75;
  }

  else
  {
    v76 = v74;
  }

  *(v6 + 5) = v76;
  if (!HIWORD(v76))
  {
    v77 = *(v6 + 1);
    std::vector<float>::resize(v87, 2 * v77);
    std::vector<float>::resize(v6 + 9, v77);
    v78 = *(v6 + 30);
    v79 = *(v6 + 31) - v78;
    if (v77 <= v79)
    {
      v80 = v86;
      if (v77 < v79)
      {
        *(v6 + 31) = v78 + v77;
      }
    }

    else
    {
      v80 = v86;
      std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::ETag>::__append(v86, v77 - v79);
    }

    if (v77 >= 1)
    {
      bzero(*v80, *v89);
    }

    v81 = __p;
    if (((v96 - __p) >> 2) >= 1)
    {
      v82 = 0;
      do
      {
        v83 = v81[v82];
        *(*v80 + v83) |= 1u;
        v84 = (*(v6 + 15) + 8 * v83);
        *(*(v6 + 54) + 2 * *v84) |= 1u;
        *(*(v6 + 54) + 2 * v84[1]) |= 1u;
        ++v82;
        v81 = __p;
      }

      while (v82 < ((v96 - __p) >> 2));
    }

    OpenSubdiv::v3_1_1::Vtr::internal::Level::orientIncidentComponents(v6);
    OpenSubdiv::v3_1_1::Vtr::internal::Level::populateLocalIndices(v6);
  }

  if (__p)
  {
    v96 = __p;
    operator delete(__p);
  }

  std::__tree<std::__value_type<SKNode *,std::vector<UITouch *>>,std::__map_value_compare<SKNode *,std::__value_type<SKNode *,std::vector<UITouch *>>,std::less<SKNode *>,true>,std::allocator<std::__value_type<SKNode *,std::vector<UITouch *>>>>::destroy(&v102, v103[0]);
  std::__tree<std::__value_type<SKNode *,std::vector<UITouch *>>,std::__map_value_compare<SKNode *,std::__value_type<SKNode *,std::vector<UITouch *>>,std::less<SKNode *>,true>,std::allocator<std::__value_type<SKNode *,std::vector<UITouch *>>>>::destroy(&v108, v109[0]);
  std::__tree<std::__value_type<SKNode *,std::vector<UITouch *>>,std::__map_value_compare<SKNode *,std::__value_type<SKNode *,std::vector<UITouch *>>,std::less<SKNode *>,true>,std::allocator<std::__value_type<SKNode *,std::vector<UITouch *>>>>::destroy(&v114, v115[0]);
  return v76 < 0x10000;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::anonymous namespace::DynamicRelation::compressMemberIndices(OpenSubdiv::v3_1_1::Vtr::internal::_anonymous_namespace_::DynamicRelation *this)
{
  v2 = **(this + 1);
  v3 = *v2;
  LODWORD(v4) = *this;
  if (*(this + 5))
  {
    if (v4 < 2)
    {
      v5 = 0;
      v8 = *(this + 1);
    }

    else
    {
      v5 = 0;
      v6 = v2 + 3;
      v7 = 1;
      do
      {
        *v6 = v3;
        v8 = *(this + 1);
        v4 = *this;
        v5 |= v3 > v8 * v7;
        v3 += *(v6 - 1);
        ++v7;
        v6 += 2;
      }

      while (v7 < v4);
    }

    v12 = v5 | (v3 > v8 * v4);
    memset(&v26, 0, sizeof(v26));
    if (v5 & 1 | (v3 > v8 * v4))
    {
      v13 = &v26;
      std::vector<float>::resize(&v26, v3);
      LODWORD(v4) = *this;
      v8 = *(this + 1);
    }

    else
    {
      v13 = *(this + 2);
    }

    v25 = 0;
    if (v4 >= 1)
    {
      v14 = 0;
      do
      {
        v15 = **(this + 1);
        v16 = *(v15 + 8 * v14);
        v17 = *(v15 + 8 * v14 + 4);
        begin = v13->__begin_;
        v19 = *(this + 1);
        if (v16 <= v19)
        {
          v20 = (**(this + 2) + 4 * v19 * v14);
        }

        else
        {
          v27 = &v25;
          v20 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 24, &v25, &std::piecewise_construct, &v27)[5];
          if (v8 <= v16)
          {
            v8 = v16;
          }

          else
          {
            v8 = v8;
          }
        }

        memmove(&begin[v17], v20, 4 * v16);
        v14 = v25 + 1;
        v25 = v14;
      }

      while (v14 < *this);
    }

    v21 = *(this + 2);
    if (v12)
    {
      v22 = *v21;
      *v21 = v26.__begin_;
      *(v21 + 8) = v26.__end_;
      v23 = *(v21 + 16);
      *(v21 + 16) = v26.__end_cap_.__value_;
      v26.__begin_ = v22;
      v26.__end_cap_.__value_ = v23;
      if (!v22)
      {
        return v8;
      }

      goto LABEL_29;
    }

    std::vector<float>::resize(*(this + 2), v3);
    v22 = v26.__begin_;
    if (v26.__begin_)
    {
LABEL_29:
      v26.__end_ = v22;
      operator delete(v22);
    }
  }

  else
  {
    if (v4 < 2)
    {
      v8 = *v2;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      LODWORD(v8) = *v2;
      do
      {
        v11 = v2[v9 + 2];
        memmove((**(this + 2) + 4 * v3), (**(this + 2) + 4 * v2[v9 + 3]), 4 * v11);
        v2 = **(this + 1);
        v2[v9 + 3] = v3;
        v3 += v11;
        if (v8 <= v11)
        {
          v8 = v11;
        }

        else
        {
          v8 = v8;
        }

        ++v10;
        v9 += 2;
      }

      while (v10 < *this);
    }

    std::vector<float>::resize(*(this + 2), v3);
  }

  return v8;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::orientIncidentComponents(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 >= 1)
  {
    v2 = this;
    for (i = 0; i != v1; ++i)
    {
      v4 = *(v2 + 54);
      if ((*(v4 + 2 * i) & 1) == 0)
      {
        this = OpenSubdiv::v3_1_1::Vtr::internal::Level::orderVertexFacesAndEdges(v2, i);
        if ((this & 1) == 0)
        {
          *(v4 + 2 * i) |= 1u;
        }
      }
    }
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::Level::populateLocalIndices(OpenSubdiv::v3_1_1::Vtr::internal::Level *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  std::vector<unsigned short>::resize(this + 39, (*(this + 37) - *(this + 36)) >> 2);
  std::vector<unsigned short>::resize(this + 48, (*(this + 46) - *(this + 45)) >> 2);
  std::vector<unsigned short>::resize(this + 24, (*(this + 22) - *(this + 21)) >> 2);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(this + 36);
    v6 = *(this + 33);
    v7 = *(this + 39);
    do
    {
      v8 = (v6 + 8 * v4);
      v9 = *v8;
      if (v9 >= 1)
      {
        v10 = 0;
        v11 = v8[1];
        v12 = v5 + 4 * v11;
        v13 = v7 + 2 * v11;
        v14 = *(this + 3);
        v15 = *(this + 6);
        LODWORD(v16) = -1;
        do
        {
          v17 = v16;
          v16 = *(v12 + 4 * v10);
          if (v16 == v17)
          {
            v18 = *(v13 - 2 + 2 * v10) + 1;
          }

          else
          {
            v18 = 0;
          }

          v19 = v15 + 4 * *(v14 + 4 * ((2 * v16) | 1));
          v20 = *(v14 + 8 * v16);
          v21 = (v19 + 4 * v18);
          if (v18 != v20)
          {
            v22 = 4 * v20 - 4 * v18;
            do
            {
              if (v4 == *v21)
              {
                goto LABEL_13;
              }

              ++v21;
              v22 -= 4;
            }

            while (v22);
            LODWORD(v21) = v19 + 4 * v20;
          }

LABEL_13:
          *(v13 + 2 * v10++) = (v21 - v19) >> 2;
        }

        while (v10 != v9);
      }

      ++v4;
    }

    while (v4 != v3);
    v23 = 0;
    v24 = *(this + 45);
    v25 = *(this + 42);
    v26 = *(this + 48);
    v27 = *(this + 5);
    while (1)
    {
      v28 = (v25 + 8 * v23);
      v29 = *v28;
      if (v29 >= 1)
      {
        break;
      }

LABEL_28:
      if (v27 <= v29)
      {
        v27 = v29;
      }

      *(this + 5) = v27;
      if (++v23 == v3)
      {
        goto LABEL_31;
      }
    }

    v30 = 0;
    v31 = v28[1];
    v32 = (v24 + 4 * v31);
    v33 = v26 + 2 * v31;
    v34 = *(this + 15);
    v35 = v32;
    while (1)
    {
      v37 = *v35++;
      v36 = v37;
      v38 = (v34 + 8 * v37);
      v40 = *v38;
      v39 = v38[1];
      if (v40 != v39)
      {
        break;
      }

      if (v30)
      {
        v41 = v36 == *(v32 - 1);
        goto LABEL_22;
      }

      v42 = 0;
LABEL_25:
      *(v33 + v30) = v42;
      v30 += 2;
      v32 = v35;
      if (2 * v29 == v30)
      {
        goto LABEL_28;
      }
    }

    v41 = v23 == v39;
LABEL_22:
    v42 = v41;
    goto LABEL_25;
  }

LABEL_31:
  if (v2 >= 1)
  {
    v43 = 0;
    v44 = *(this + 21);
    v45 = *(this + 18);
    v46 = *(this + 24);
    do
    {
      v47 = (v45 + 8 * v43);
      v48 = *v47;
      if (v48 >= 1)
      {
        v49 = 0;
        v50 = v47[1];
        v51 = v44 + 4 * v50;
        v52 = v46 + 2 * v50;
        v53 = *(this + 3);
        v54 = *(this + 9);
        LODWORD(v55) = -1;
        do
        {
          v56 = v55;
          v55 = *(v51 + 4 * v49);
          if (v55 == v56)
          {
            v57 = *(v52 - 2 + 2 * v49) + 1;
          }

          else
          {
            v57 = 0;
          }

          v58 = v54 + 4 * *(v53 + 4 * ((2 * v55) | 1));
          v59 = *(v53 + 8 * v55);
          v60 = (v58 + 4 * v57);
          if (v57 != v59)
          {
            v61 = 4 * v59 - 4 * v57;
            while (v43 != *v60)
            {
              ++v60;
              v61 -= 4;
              if (!v61)
              {
                LODWORD(v60) = v58 + 4 * v59;
                break;
              }
            }
          }

          *(v52 + 2 * v49++) = (v60 - v58) >> 2;
        }

        while (v49 != v48);
      }

      ++v43;
    }

    while (v43 != v2);
  }
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::orderVertexFacesAndEdges(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(this + 36);
  v5 = *(this + 33);
  v6 = (8 * ((2 * a2) >> 1)) | 4;
  v7 = *(v5 + v6);
  v8 = 8 * a2;
  v9 = *(v5 + v8);
  v10 = *(this + 42);
  v11 = *(v10 + v6);
  v12 = *(this + 45);
  v13 = *(v10 + v8);
  v14 = &v17;
  __p = 0;
  if ((v13 + v9) >= 0x21)
  {
    v14 = operator new(4 * (v13 + v9));
    __p = v14;
  }

  v15 = OpenSubdiv::v3_1_1::Vtr::internal::Level::orderVertexFacesAndEdges(this, a2, v14, v14 + v9);
  if (v15)
  {
    memcpy((v4 + 4 * v7), v14, 4 * v9);
    memcpy((v12 + 4 * v11), v14 + 4 * v9, 4 * v13);
  }

  operator delete(__p);
  return v15;
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>::resize(const void **result, unint64_t a2)
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
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>::__append(result, a2 - v2);
  }
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 1)
  {
    a1[1] = &v5[2 * a2];
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v7 >> 1;
    v10 = v4 - v6;
    if (v10 > v8)
    {
      v8 = v10;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v8;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>>(a1, v12);
    }

    memcpy(0, v6, v7);
    v13 = *a1;
    *a1 = 0;
    a1[1] = (2 * v9 + 2 * a2);
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::FTag>::__append(char **a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v4 - v3 >= a2)
  {
    a1[1] = &v3[a2];
  }

  else
  {
    v5 = *a1;
    v6 = v3 - *a1;
    v7 = v6 + a2;
    if ((v6 + a2) < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - v5;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      operator new();
    }

    v10 = (v6 + a2);
    memcpy(0, *a1, v3 - *a1);
    *a1 = 0;
    a1[1] = v10;
    a1[2] = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::ETag>::__append(char **a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v4 - v3 >= a2)
  {
    a1[1] = &v3[a2];
  }

  else
  {
    v5 = *a1;
    v6 = v3 - *a1;
    v7 = v6 + a2;
    if ((v6 + a2) < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - v5;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      operator new();
    }

    v10 = (v6 + a2);
    memcpy(0, *a1, v3 - *a1);
    *a1 = 0;
    a1[1] = v10;
    a1[2] = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t *std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::Level::completeTopologyFromFaceVertices()
{
  __assert_rtn("completeTopologyFromFaceVertices", "level.cpp", 1780, "_maxValence > 0");
}

{
  __assert_rtn("completeTopologyFromFaceVertices", "level.cpp", 1665, "(vCount > 0) && (fCount > 0) && (eCount == 0)");
}

id *OpenSubdiv::v3_1_1::Osd::MTLStencilTable::MTLStencilTable(id *this, const OpenSubdiv::v3_1_1::Far::StencilTable *a2, MTLContext *a3)
{
  if (!a3)
  {
    OpenSubdiv::v3_1_1::Osd::MTLStencilTable::MTLStencilTable();
  }

  var0 = a3->var0;
  if (!a3->var0 || !a3->var1)
  {
    OpenSubdiv::v3_1_1::Osd::MTLStencilTable::MTLStencilTable();
  }

  v7 = (*(a2 + 3) - *(a2 + 2)) >> 2;
  *(this + 12) = v7;
  if (v7 < 1)
  {
    *this = 0u;
    *(this + 1) = 0u;
  }

  else
  {
    *this = [var0 newBufferWithBytes:? length:? options:?];
    this[1] = [a3->var0 newBufferWithBytes:*(a2 + 5) length:*(a2 + 6) - *(a2 + 5) options:0];
    this[2] = [a3->var0 newBufferWithBytes:*(a2 + 8) length:*(a2 + 9) - *(a2 + 8) options:0];
    this[3] = [a3->var0 newBufferWithBytes:*(a2 + 11) length:*(a2 + 12) - *(a2 + 11) options:0];
    [*this setLabel:@"StencilTable Sizes"];
    [this[1] setLabel:@"StencilTable Offsets"];
    [this[2] setLabel:@"StencilTable Indices"];
    [this[3] setLabel:@"StencilTable Weights"];
  }

  this[4] = 0;
  this[5] = 0;
  return this;
}

void OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::Create(const BufferDescriptor *this, const BufferDescriptor *a2, const BufferDescriptor *a3, const BufferDescriptor *a4, MTLContext *a5, MTLContext *a6)
{
  if (a5)
  {
    if (a5->var0)
    {
      if (a5->var1)
      {
        operator new();
      }
    }

    OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::Create();
  }

  OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::Create();
}

uint64_t OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::Compile(id *this, const BufferDescriptor *a2, const BufferDescriptor *a3, const BufferDescriptor *a4, const BufferDescriptor *a5, MTLContext *a6)
{
  v37[21] = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::Compile();
  }

  if (!a6->var0 || !a6->var1)
  {
    OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::Compile();
  }

  v12 = objc_alloc_init(MEMORY[0x277CD6D08]);
  [v12 setLanguageVersion:C3DOpenSubdivMetalVersion()];
  [v12 setPreprocessorMacros:0];
  [v12 setAdditionalCompilerArguments:@" -w "];
  v14 = a4->var1 > 0 || a5->var1 > 0;
  if (v14)
  {
    printf("Using OPENSUBDIV_MTL_COMPUTE_USE_DERIVATIVES");
  }

  v36[0] = @"LENGTH";
  v37[0] = [MEMORY[0x277CCABB0] numberWithInt:a2->var1];
  v36[1] = @"SRC_STRIDE";
  v37[1] = [MEMORY[0x277CCABB0] numberWithInt:a2->var2];
  v36[2] = @"DST_STRIDE";
  v37[2] = [MEMORY[0x277CCABB0] numberWithInt:a3->var2];
  v36[3] = @"WORK_GROUP_SIZE";
  v37[3] = [MEMORY[0x277CCABB0] numberWithInt:*(this + 6)];
  v36[4] = @"OPENSUBDIV_MTL_COMPUTE_USE_DERIVATIVES";
  v36[5] = @"PARAMETER_BUFFER_INDEX";
  v36[6] = @"SIZES_BUFFER_INDEX";
  v37[6] = &unk_282E0FA08;
  v37[7] = &unk_282E0FA20;
  v36[7] = @"OFFSETS_BUFFER_INDEX";
  v36[8] = @"INDICES_BUFFER_INDEX";
  v37[8] = &unk_282E0FA38;
  v37[9] = &unk_282E0FA50;
  v36[9] = @"WEIGHTS_BUFFER_INDEX";
  v36[10] = @"SRC_VERTEX_BUFFER_INDEX";
  v37[10] = &unk_282E0FA68;
  v37[11] = &unk_282E0FA80;
  v36[11] = @"DST_VERTEX_BUFFER_INDEX";
  v36[12] = @"DU_WEIGHTS_BUFFER_INDEX";
  v37[12] = &unk_282E0FA98;
  v37[13] = &unk_282E0FAB0;
  v36[13] = @"DV_WEIGHTS_BUFFER_INDEX";
  v36[14] = @"DU_DERIVATIVE_BUFFER_INDEX";
  v37[14] = &unk_282E0FAC8;
  v37[15] = &unk_282E0FAE0;
  v36[15] = @"DV_DERIVATIVE_BUFFER_INDEX";
  v36[16] = @"PATCH_ARRAYS_BUFFER_INDEX";
  v37[16] = &unk_282E0FAF8;
  v37[17] = &unk_282E0FB10;
  v36[17] = @"PATCH_COORDS_BUFFER_INDEX";
  v36[18] = @"PATCH_INDICES_BUFFER_INDEX";
  v37[18] = &unk_282E0FB28;
  v37[19] = &unk_282E0FB40;
  v37[4] = [MEMORY[0x277CCABB0] numberWithBool:v14];
  v37[5] = &unk_282E0F9F0;
  v36[19] = @"PATCH_PARAMS_BUFFER_INDEX";
  v36[20] = @"C3D_OPTIMIZE_OPENSUBDIV_STORAGE";
  v37[20] = &unk_282E0F9F0;
  [v12 setPreprocessorMacros:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v37, v36, 21)}];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v30);
  OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource::GetPatchBasisShaderSource();
  if ((v29 & 0x80u) == 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if ((v29 & 0x80u) == 0)
  {
    v16 = v29;
  }

  else
  {
    v16 = __p[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v31, v15, v16);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v31, aLine0OsdMtlcom, 9645);
  v17 = objc_alloc(MEMORY[0x277CCACA8]);
  std::stringbuf::str();
  if ((v29 & 0x80u) == 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  v19 = [v17 initWithUTF8String:v18];
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = 0;
  *this = [a6->var0 newLibraryWithSource:v19 options:v12 error:__p];

  if (*this)
  {
    v20 = [*this newFunctionWithName:@"eval_stencils"];
    this[1] = [a6->var0 newComputePipelineStateWithFunction:v20 error:__p];

    if (this[1])
    {
      v21 = [*this newFunctionWithName:@"eval_patches"];
      this[2] = [a6->var0 newComputePipelineStateWithFunction:v21 error:__p];

      if (this[2])
      {
        v22 = 1;
        goto LABEL_42;
      }

      if (__p[0])
      {
        v25 = [objc_msgSend(__p[0] "localizedDescription")];
      }

      else
      {
        v25 = "";
      }

      OpenSubdiv::v3_1_1::Far::Error(4, "Error compiling MTL Pipeline eval_patches:  %s\n", v25);
    }

    else
    {
      if (__p[0])
      {
        v24 = [objc_msgSend(__p[0] "localizedDescription")];
      }

      else
      {
        v24 = "";
      }

      OpenSubdiv::v3_1_1::Far::Error(4, "Error compiling MTL Pipeline eval_stencils: %s\n", v24);
    }
  }

  else
  {
    if (__p[0])
    {
      v23 = [objc_msgSend(__p[0] "localizedDescription")];
    }

    else
    {
      v23 = "";
    }

    OpenSubdiv::v3_1_1::Far::Error(4, "Error compiling MTL Shader: %s\n", v23);
  }

  v22 = 0;
LABEL_42:
  v30[0] = *MEMORY[0x277D82818];
  v26 = *(MEMORY[0x277D82818] + 72);
  *(v30 + *(v30[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v31 = v26;
  v32 = MEMORY[0x277D82878] + 16;
  if (v34 < 0)
  {
    operator delete(v33[7].__locale_);
  }

  v32 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v33);
  std::iostream::~basic_iostream();
  MEMORY[0x21CF075C0](&v35);
  return v22;
}

void sub_21C20F450(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a13, MEMORY[0x277D82818]);
  MEMORY[0x21CF075C0](va);
  _Unwind_Resume(a1);
}

BOOL OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::EvalStencils(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, void *a20)
{
  v20 = *(a1 + 8);
  if (v20 && a19 - a18 >= 1)
  {
    if (!a20)
    {
      OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::EvalStencils();
    }

    v22 = a20[1];
    if (*a20)
    {
      v23 = v22 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::EvalStencils();
    }

    v41[0] = a18;
    v41[1] = a19;
    v27 = *a5;
    v41[2] = *a3;
    v41[3] = v27;
    a9.n128_u64[0] = *a7;
    a9.n128_u32[2] = *(a7 + 8);
    a10.n128_u64[0] = *a11;
    a10.n128_u32[2] = *(a11 + 8);
    v42 = a9;
    v43 = a10;
    v28 = a20[2];
    v29 = a20[3];
    if (v29)
    {
      v35 = 0;
      v30 = a20[3];
      [v29 setBytes:v41 length:48 atIndex:{0, v28}];
    }

    else
    {
      v35 = v28 == 0;
      if (!v28)
      {
        v28 = [v22 commandBuffer];
      }

      v30 = [v28 computeCommandEncoder];
      [v30 setBytes:v41 length:48 atIndex:{0, v34}];
    }

    [v30 setBuffer:a12 offset:0 atIndex:1];
    [v30 setBuffer:a15 offset:0 atIndex:4];
    [v30 setBuffer:a13 offset:0 atIndex:2];
    [v30 setBuffer:a14 offset:0 atIndex:3];
    [v30 setBuffer:a2 offset:0 atIndex:6];
    [v30 setBuffer:a4 offset:0 atIndex:5];
    if (a16 && a17)
    {
      [v30 setBuffer:? offset:? atIndex:?];
      [v30 setBuffer:a17 offset:0 atIndex:8];
    }

    [v30 setBuffer:a6 offset:0 atIndex:9];
    [v30 setBuffer:a8 offset:0 atIndex:10];
    [v30 setComputePipelineState:*(a1 + 8)];
    v31 = *(a1 + 24);
    v39 = (a19 - a18 + v31 - 1) / v31;
    v40 = vdupq_n_s64(1uLL);
    v37 = v31;
    v38 = v40;
    [v30 dispatchThreadgroups:&v39 threadsPerThreadgroup:&v37];
    if (!v29)
    {
      [v30 endEncoding];
    }

    if (v35)
    {
      [v33 commit];
    }
  }

  return v20 != 0;
}

void OpenSubdiv::v3_1_1::Osd::MTLStencilTable::MTLStencilTable()
{
  __assert_rtn("MTLStencilTable", "mtlComputeEvaluator.mm", 131, "context->device != nil && context->commandQueue != nil");
}

{
  __assert_rtn("MTLStencilTable", "mtlComputeEvaluator.mm", 130, "context != nil");
}

void OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::Create()
{
  __assert_rtn("Create", "mtlComputeEvaluator.mm", 242, "context->device != nil && context->commandQueue != nil");
}

{
  __assert_rtn("Create", "mtlComputeEvaluator.mm", 241, "context != nil");
}

void OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::Compile()
{
  __assert_rtn("Compile", "mtlComputeEvaluator.mm", 260, "context->device != nil && context->commandQueue != nil");
}

{
  __assert_rtn("Compile", "mtlComputeEvaluator.mm", 259, "context != nil");
}

void OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::EvalStencils()
{
  __assert_rtn("EvalStencils", "mtlComputeEvaluator.mm", 408, "device != nil && commandQueue != nil");
}

{
  __assert_rtn("EvalStencils", "mtlComputeEvaluator.mm", 403, "context != nullptr");
}

void OpenSubdiv::v3_1_1::Far::StencilTableFactory::Create(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = **(a1 + 88);
  if ((a2 & 3) == 2)
  {
    NumFVarValues = OpenSubdiv::v3_1_1::Vtr::internal::Level::getNumFVarValues(v4, SHIDWORD(a2));
  }

  else
  {
    NumFVarValues = *(v4 + 2);
  }

  if (((*(a1 + 8) >> 2) & 0xFu) >= ((v3 >> 6) & 0xF))
  {
    v6 = (v3 >> 6) & 0xF;
  }

  else
  {
    v6 = (*(a1 + 8) >> 2) & 0xF;
  }

  if (!(v3 & 8 | v6))
  {
    operator new();
  }

  OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::StencilBuilder(&v7, NumFVarValues, 1, 1);
}

void OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Interpolate<OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(int **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a2 < 1 || (v4 = a2, ((*(*a1 + 9) - *(*a1 + 8)) >> 3) < a2))
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner11InterpolateIP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0__cold_1();
  }

  v8 = **a1;
  if (v8)
  {
    if (v8 == 2)
    {
      OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFromFaces<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(a1, a2, a3, a4);
      OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFromEdges<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(a1, v4, a3, a4);

      OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFromVerts<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(a1, v4, a3, a4, v9);
    }

    else if (v8 == 1)
    {
      OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFromFaces<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(a1, a2, a3, a4);
      OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFromEdges<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(a1, v4, a3, a4);

      OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFromVerts<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(a1, v4, a3, a4);
    }
  }

  else
  {
    OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFromFaces<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(a1, a2, a3, a4);
    OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFromEdges<(OpenSubdiv::v3_1_1::Sdc::SchemeType)0,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(a1, v4, a3, a4);
    v10 = 0;
    v11 = *(*(*a1 + 8) + 8 * v4 - 8);
    v12 = *(v11 + 8);
    v13 = 2 * *(v12 + 20);
    v23 = &v26;
    v24 = v13;
    v25 = 32;
    __p = 0;
    if (v13 >= 0x21)
    {
      v10 = operator new(4 * v13);
      __p = v10;
      v23 = v10;
      v25 = v13;
    }

    v14 = *(v12 + 8);
    if (v14 >= 1)
    {
      for (i = 0; i < v14; ++i)
      {
        v16 = *(*(v11 + 240) + 4 * i);
        if (v16 != -1)
        {
          v17 = *(a4 + 2);
          v21 = *a4;
          v22 = v17 + v16;
          v18 = i + *(a3 + 2);
          v19 = *a3;
          v20 = v18;
          OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v21, &v19, 1.0);
          v14 = *(v12 + 8);
        }
      }

      v10 = __p;
    }

    operator delete(v10);
  }
}

void OpenSubdiv::v3_1_1::Far::PrimvarRefiner::InterpolateVarying<OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(uint64_t result, int a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 < 1 || (v4 = *(*result + 64), ((*(*result + 72) - v4) >> 3) < a2))
  {
    _ZN23C3DSubdivCPUPrimvarDataIDv3_fE11InterpolateEiPN10OpenSubdiv6v3_1_13Far14PrimvarRefinerEPNS4_15TopologyRefinerE_cold_2();
  }

  v7 = *(v4 + 8 * a2 - 8);
  v8 = *(v7 + 8);
  if (*(v7 + 52) >= 1)
  {
    v9 = *v8;
    if (*v8 >= 1)
    {
      v10 = 0;
      do
      {
        v11 = *(*(v7 + 168) + 4 * v10);
        if (v11 != -1)
        {
          v12 = (*(v8 + 24) + 8 * v10);
          v13 = *v12;
          if (v13 >= 1)
          {
            v14 = (*(v8 + 48) + 4 * v12[1]);
            v15 = 1.0 / v13;
            do
            {
              v16 = *(a4 + 2) + v11;
              v35 = *a4;
              v36 = v16;
              v17 = *v14++;
              v18 = *(a3 + 2);
              v33 = *a3;
              v34 = v18 + v17;
              OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v35, &v33, v15);
              --v13;
            }

            while (v13);
            v9 = *v8;
          }
        }

        ++v10;
      }

      while (v10 < v9);
    }
  }

  v19 = *(v8 + 4);
  if (v19 >= 1)
  {
    v20 = 0;
    for (i = 0; i < v19; ++i)
    {
      v22 = *(*(v7 + 216) + 4 * i);
      if (v22 != -1)
      {
        v23 = (*(v8 + 120) + v20);
        v24 = *(a4 + 2) + v22;
        v35 = *a4;
        v36 = v24;
        v25 = *(a3 + 2) + *v23;
        v33 = *a3;
        v34 = v25;
        OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v35, &v33, 0.5);
        v26 = *(a4 + 2) + v22;
        v35 = *a4;
        v36 = v26;
        v27 = *(a3 + 2) + v23[1];
        v33 = *a3;
        v34 = v27;
        OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v35, &v33, 0.5);
        v19 = *(v8 + 4);
      }

      v20 += 8;
    }
  }

  v28 = *(v8 + 8);
  if (v28 >= 1)
  {
    for (j = 0; j < v28; ++j)
    {
      v30 = *(*(v7 + 240) + 4 * j);
      if (v30 != -1)
      {
        v31 = *(a4 + 2);
        v35 = *a4;
        v36 = v31 + v30;
        v32 = j + *(a3 + 2);
        v33 = *a3;
        v34 = v32;
        OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v35, &v33, 1.0);
        v28 = *(v8 + 8);
      }
    }
  }
}

void OpenSubdiv::v3_1_1::Far::PrimvarRefiner::InterpolateFaceVarying<OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(int **result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (a2 < 1 || (v5 = a2, ((*(*result + 9) - *(*result + 8)) >> 3) < a2))
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner22InterpolateFaceVaryingIP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_i_cold_1();
  }

  v7 = a5;
  v10 = **result;
  if (v10)
  {
    if (v10 == 2)
    {
      OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFVarFromFaces<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(result, a2, a3, a4, a5);
      OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFVarFromEdges<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(result, v5, a3, a4, v7);

      OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFVarFromVerts<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(result, v5, a3, a4, v7, v11);
    }

    else if (v10 == 1)
    {
      OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFVarFromFaces<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(result, a2, a3, a4, a5);
      OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFVarFromEdges<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(result, v5, a3, a4, v7);

      OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFVarFromVerts<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(result, v5, a3, a4, v7);
    }
  }

  else
  {
    OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFVarFromFaces<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(result, a2, a3, a4, a5);
    OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFVarFromEdges<(OpenSubdiv::v3_1_1::Sdc::SchemeType)0,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(result, v5, a3, a4, v7);

    OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFVarFromVerts<(OpenSubdiv::v3_1_1::Sdc::SchemeType)0,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(result, v5, a3, a4, v7);
  }
}

uint64_t OpenSubdiv::v3_1_1::Far::StencilTableFactory::appendLocalPointStencilTable(OpenSubdiv::v3_1_1::Far::StencilTableFactory *this, const OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2, const OpenSubdiv::v3_1_1::Far::StencilTable *a3, const OpenSubdiv::v3_1_1::Far::StencilTable *a4, BOOL a5)
{
  if (a2 && a3 && ((*(a3 + 3) - *(a3 + 2)) & 0x3FFFFFFFCLL) != 0)
  {
    v6 = a4;
    v9 = **(this + 11);
    if ((a4 & 0x80000000) != 0)
    {
      NumFVarValues = *(v9 + 2);
    }

    else
    {
      NumFVarValues = OpenSubdiv::v3_1_1::Vtr::internal::Level::getNumFVarValues(v9, a4);
    }

    v11 = (*(a2 + 3) - *(a2 + 2)) >> 2;
    if (v6 < 0)
    {
      NumFVarValuesTotal = *(this + 5);
    }

    else
    {
      NumFVarValuesTotal = OpenSubdiv::v3_1_1::Far::TopologyRefiner::GetNumFVarValuesTotal(this, v6);
    }

    if (NumFVarValuesTotal != v11 && NumFVarValuesTotal - NumFVarValues != v11)
    {
      OpenSubdiv::v3_1_1::Far::StencilTableFactory::appendLocalPointStencilTable();
    }

    OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::StencilBuilder(&v14, NumFVarValues, 0, a5);
  }

  return 0;
}

void OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFromFaces<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = *(*(*a1 + 64) + 8 * a2 - 8);
  if (*(v4 + 52))
  {
    v7 = 0;
    v8 = *(v4 + 8);
    v9 = *(v8 + 20);
    v33 = &v36;
    v34 = v9;
    v35 = 16;
    __p = 0;
    if (v9 >= 0x11)
    {
      v7 = operator new(4 * v9);
      __p = v7;
      v33 = v7;
      v35 = v9;
    }

    v10 = *v8;
    if (*v8 >= 1)
    {
      v11 = 0;
      v12.i32[1] = 0;
      v13 = vdupq_n_s64(4uLL);
      v28 = v13;
      do
      {
        v14 = *(*(v4 + 168) + 4 * v11);
        if (v14 != -1)
        {
          v15 = (*(v8 + 24) + 8 * v11);
          v16 = *v15;
          if (v16 >= 1)
          {
            v17 = *(v8 + 48) + 4 * v15[1];
            *v12.i32 = 1.0 / v16;
            v18 = (v16 + 3) & 0xFFFFFFFC;
            v19 = vdupq_n_s64(v16 - 1);
            v20 = v33 + 1;
            v21 = xmmword_21C27F640;
            v22 = xmmword_21C27F630;
            do
            {
              v23 = vmovn_s64(vcgeq_u64(v19, v21));
              if (vuzp1_s16(v23, v12).u8[0])
              {
                *(v20 - 2) = v12.i32[0];
              }

              if (vuzp1_s16(v23, v12).i8[2])
              {
                *(v20 - 1) = v12.i32[0];
              }

              if (vuzp1_s16(v12, vmovn_s64(vcgeq_u64(v19, *&v22))).i32[1])
              {
                *v20 = v12.i32[0];
                v20[1] = v12.i32[0];
              }

              v22 = vaddq_s64(v22, v13);
              v21 = vaddq_s64(v21, v13);
              v20 += 4;
              v18 -= 4;
            }

            while (v18);
            v24 = 0;
            v25 = 4 * v16;
            do
            {
              v26 = *(a4 + 2) + v14;
              v31 = *a4;
              v32 = v26;
              v27 = *(a3 + 2) + *(v17 + v24);
              v29 = *a3;
              v30 = v27;
              OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v31, &v29, *(v33 + v24));
              v24 += 4;
            }

            while (v25 != v24);
            v10 = *v8;
            v13 = v28;
          }
        }

        ++v11;
      }

      while (v11 < v10);
      v7 = __p;
    }

    operator delete(v7);
  }
}

void OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFromEdges<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 0;
  v55 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*(v8 + 64) + 8 * a2 - 8);
  v10 = *(v9 + 8);
  v40 = *(v9 + 16);
  v48 = *(v8 + 4);
  v11 = *(v10 + 16);
  v49 = &v52;
  v50 = v11;
  v51 = 8;
  v46 = v10;
  __p = 0;
  if (v11 >= 9)
  {
    v7 = operator new(4 * v11);
    __p = v7;
    v49 = v7;
    v51 = v11;
  }

  v12 = *(v10 + 4);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v9 + 216) + 4 * i);
      if (v14 != -1)
      {
        v15 = (*(v10 + 120) + 8 * i);
        v16 = *(v10 + 168);
        v17 = (*(v10 + 144) + 8 * i);
        v18 = *v17;
        v19 = v17[1];
        v45[0] = v54;
        v45[1] = 0;
        v45[2] = v49;
        memset(&v45[3], 0, 13);
        v47 = i;
        if (*(*(v10 + 216) + 4 * i) <= 0.0)
        {
          v20 = 1;
        }

        else
        {
          v20 = 4;
        }

        OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeEdgeVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v48, &v46, v45, v20, (*(*(v40 + 432) + 2 * v14) >> 7) & 0xF);
        v21 = *(a4 + 2) + v14;
        v43 = *a4;
        v44 = v21;
        v22 = *(a3 + 2) + *v15;
        v41 = *a3;
        v42 = v22;
        OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v43, &v41, v54[0]);
        v23 = *(a4 + 2) + v14;
        v43 = *a4;
        v44 = v23;
        v24 = *(a3 + 2) + v15[1];
        v41 = *a3;
        v42 = v24;
        OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v43, &v41, v54[1]);
        if (SLODWORD(v45[4]) >= 1 && v18 >= 1)
        {
          v25 = 0;
          v26 = v16 + 4 * v19;
          do
          {
            if (BYTE4(v45[4]) == 1)
            {
              if (*(v9 + 52) <= 0)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_2();
              }

              v27 = *(*(v9 + 168) + 4 * *(v26 + 4 * v25));
              if (v27 == -1)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_1();
              }

              v28 = *a4;
              v29 = *(a4 + 2);
              v43 = *a4;
              v44 = v29 + v14;
            }

            else
            {
              v30 = *(v26 + 4 * v25);
              v31 = 2 * v30;
              v32 = *(v10 + 24);
              v33 = *(v32 + 8 * v30 + 4);
              v34 = (*(v10 + 72) + 4 * v33);
              v35 = *(v32 + 4 * v31);
              v36 = 1;
              do
              {
                v37 = *v34++;
                ++v36;
              }

              while (i != v37);
              v38 = *(v10 + 48) + 4 * v33;
              if (v36 < v35)
              {
                v35 = 0;
              }

              v27 = *(v38 + 4 * (v36 - v35));
              v39 = *(a4 + 2) + v14;
              v43 = *a4;
              v44 = v39;
              v28 = *a3;
              v29 = *(a3 + 2);
            }

            v41 = v28;
            v42 = v29 + v27;
            OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v43, &v41, v49[v25++]);
          }

          while (v25 != v18);
        }

        v12 = *(v10 + 4);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFromVerts<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 0;
  v57 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v39 = *(*(v8 + 64) + 8 * a2 - 8);
  v10 = v39[1];
  v9 = v39[2];
  v51 = *(v8 + 4);
  v11 = 2 * *(v10 + 20);
  v52 = &v55;
  v53 = v11;
  v54 = 32;
  v46[0] = v10;
  v46[1] = v9;
  v35 = v9;
  __p = 0;
  if (v11 >= 0x21)
  {
    v7 = operator new(4 * v11);
    __p = v7;
    v52 = v7;
    v54 = v11;
  }

  v12 = *(v10 + 8);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(v39[30] + 4 * i);
      if (v14 != -1)
      {
        v15 = *(v10 + 336);
        v16 = (8 * i) | 4;
        v37 = *(v15 + v16);
        v38 = *(v10 + 360);
        v17 = *(v15 + 8 * i);
        v18 = *(v10 + 264);
        v36 = *(v18 + v16);
        v19 = *(v18 + 8 * i);
        v45 = 0.0;
        v20 = v52;
        v21 = v52 + v17;
        v44[0] = &v45;
        v44[1] = v52;
        v44[2] = v21;
        memset(&v44[3], 0, 13);
        v47 = i;
        v48 = v14;
        v49 = *(*(v46[0] + 336) + 8 * i);
        v50 = *(*(v46[0] + 264) + 8 * i);
        v22 = *(v10 + 288);
        OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v51, v46, v44, (*(*(v10 + 432) + 2 * i) >> 7) & 0xF, (*(*(v35 + 432) + 2 * v14) >> 7) & 0xF);
        if (SLODWORD(v44[4]) >= 1)
        {
          if (BYTE4(v44[4]) != 1)
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_1();
          }

          if (v19 >= 1)
          {
            v23 = (v22 + 4 * v36);
            do
            {
              v24 = *v23++;
              v25 = *(v39[21] + 4 * v24);
              if (v25 == -1)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_2();
              }

              v26 = *(a4 + 2);
              v42 = *a4;
              v43 = v26 + v14;
              v40 = v42;
              v41 = v26 + v25;
              v27 = *v21++;
              OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v42, &v40, v27);
              --v19;
            }

            while (v19);
          }
        }

        if (SHIDWORD(v44[3]) >= 1 && v17 >= 1)
        {
          v28 = (v38 + 4 * v37);
          do
          {
            v29 = *v28++;
            v30 = *(*(v10 + 120) + 8 * v29 + 4 * (i == *(*(v10 + 120) + 8 * v29)));
            v31 = *(a4 + 2) + v14;
            v42 = *a4;
            v43 = v31;
            v32 = *(a3 + 2) + v30;
            v40 = *a3;
            v41 = v32;
            LODWORD(v29) = *v20;
            v20 = (v20 + 4);
            OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v42, &v40, *&v29);
            --v17;
          }

          while (v17);
        }

        v33 = *(a4 + 2) + v14;
        v42 = *a4;
        v43 = v33;
        v34 = *(a3 + 2) + i;
        v40 = *a3;
        v41 = v34;
        OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v42, &v40, v45);
        v12 = *(v10 + 8);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFromEdges<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 0;
  v55 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*(v8 + 64) + 8 * a2 - 8);
  v10 = *(v9 + 8);
  v40 = *(v9 + 16);
  v48 = *(v8 + 4);
  v11 = *(v10 + 16);
  v49 = &v52;
  v50 = v11;
  v51 = 8;
  v46 = v10;
  __p = 0;
  if (v11 >= 9)
  {
    v7 = operator new(4 * v11);
    __p = v7;
    v49 = v7;
    v51 = v11;
  }

  v12 = *(v10 + 4);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v9 + 216) + 4 * i);
      if (v14 != -1)
      {
        v15 = (*(v10 + 120) + 8 * i);
        v16 = *(v10 + 168);
        v17 = (*(v10 + 144) + 8 * i);
        v18 = *v17;
        v19 = v17[1];
        v45[0] = v54;
        v45[1] = 0;
        v45[2] = v49;
        memset(&v45[3], 0, 13);
        v47 = i;
        if (*(*(v10 + 216) + 4 * i) <= 0.0)
        {
          v20 = 1;
        }

        else
        {
          v20 = 4;
        }

        OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeEdgeVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v48, &v46, v45, v20, (*(*(v40 + 432) + 2 * v14) >> 7) & 0xF);
        v21 = *(a4 + 2) + v14;
        v43 = *a4;
        v44 = v21;
        v22 = *(a3 + 2) + *v15;
        v41 = *a3;
        v42 = v22;
        OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v43, &v41, v54[0]);
        v23 = *(a4 + 2) + v14;
        v43 = *a4;
        v44 = v23;
        v24 = *(a3 + 2) + v15[1];
        v41 = *a3;
        v42 = v24;
        OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v43, &v41, v54[1]);
        if (SLODWORD(v45[4]) >= 1 && v18 >= 1)
        {
          v25 = 0;
          v26 = v16 + 4 * v19;
          do
          {
            if (BYTE4(v45[4]) == 1)
            {
              if (*(v9 + 52) <= 0)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_2();
              }

              v27 = *(*(v9 + 168) + 4 * *(v26 + 4 * v25));
              if (v27 == -1)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_1();
              }

              v28 = *a4;
              v29 = *(a4 + 2);
              v43 = *a4;
              v44 = v29 + v14;
            }

            else
            {
              v30 = *(v26 + 4 * v25);
              v31 = 2 * v30;
              v32 = *(v10 + 24);
              v33 = *(v32 + 8 * v30 + 4);
              v34 = (*(v10 + 72) + 4 * v33);
              v35 = *(v32 + 4 * v31);
              v36 = 1;
              do
              {
                v37 = *v34++;
                ++v36;
              }

              while (i != v37);
              v38 = *(v10 + 48) + 4 * v33;
              if (v36 < v35)
              {
                v35 = 0;
              }

              v27 = *(v38 + 4 * (v36 - v35));
              v39 = *(a4 + 2) + v14;
              v43 = *a4;
              v44 = v39;
              v28 = *a3;
              v29 = *(a3 + 2);
            }

            v41 = v28;
            v42 = v29 + v27;
            OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v43, &v41, v49[v25++]);
          }

          while (v25 != v18);
        }

        v12 = *(v10 + 4);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFromVerts<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4, double a5)
{
  v8 = 0;
  v58 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v40 = *(*(v9 + 64) + 8 * a2 - 8);
  v11 = v40[1];
  v10 = v40[2];
  v52 = *(v9 + 4);
  v12 = 2 * *(v11 + 20);
  v53 = &v56;
  v54 = v12;
  v55 = 32;
  v47[0] = v11;
  v47[1] = v10;
  v36 = v10;
  __p = 0;
  if (v12 >= 0x21)
  {
    v8 = operator new(4 * v12);
    __p = v8;
    v53 = v8;
    v55 = v12;
  }

  v13 = *(v11 + 8);
  if (v13 >= 1)
  {
    for (i = 0; i < v13; ++i)
    {
      v15 = *(v40[30] + 4 * i);
      if (v15 != -1)
      {
        v16 = *(v11 + 336);
        v17 = (8 * i) | 4;
        v38 = *(v16 + v17);
        v39 = *(v11 + 360);
        v18 = *(v16 + 8 * i);
        v19 = *(v11 + 264);
        v37 = *(v19 + v17);
        v20 = *(v19 + 8 * i);
        v46 = 0.0;
        v21 = v53;
        v22 = v53 + v18;
        v45[0] = &v46;
        v45[1] = v53;
        v45[2] = v22;
        memset(&v45[3], 0, 13);
        v48 = i;
        v49 = v15;
        v50 = *(*(v47[0] + 336) + 8 * i);
        v51 = *(*(v47[0] + 264) + 8 * i);
        v23 = *(v11 + 288);
        OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v52, v47, v45, (*(*(v11 + 432) + 2 * i) >> 7) & 0xF, (*(*(v36 + 432) + 2 * v15) >> 7) & 0xF, a5);
        if (SLODWORD(v45[4]) >= 1)
        {
          if (BYTE4(v45[4]) != 1)
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_1();
          }

          if (v20 >= 1)
          {
            v24 = (v23 + 4 * v37);
            do
            {
              v25 = *v24++;
              v26 = *(v40[21] + 4 * v25);
              if (v26 == -1)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_2();
              }

              v27 = *(a4 + 2);
              v43 = *a4;
              v44 = v27 + v15;
              v41 = v43;
              v42 = v27 + v26;
              v28 = *v22++;
              OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v43, &v41, v28);
              --v20;
            }

            while (v20);
          }
        }

        if (SHIDWORD(v45[3]) >= 1 && v18 >= 1)
        {
          v29 = (v39 + 4 * v38);
          do
          {
            v30 = *v29++;
            v31 = *(*(v11 + 120) + 8 * v30 + 4 * (i == *(*(v11 + 120) + 8 * v30)));
            v32 = *(a4 + 2) + v15;
            v43 = *a4;
            v44 = v32;
            v33 = *(a3 + 2) + v31;
            v41 = *a3;
            v42 = v33;
            LODWORD(v30) = *v21;
            v21 = (v21 + 4);
            OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v43, &v41, *&v30);
            --v18;
          }

          while (v18);
        }

        v34 = *(a4 + 2) + v15;
        v43 = *a4;
        v44 = v34;
        v35 = *(a3 + 2) + i;
        v41 = *a3;
        v42 = v35;
        OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v43, &v41, v46);
        v13 = *(v11 + 8);
      }
    }

    v8 = __p;
  }

  operator delete(v8);
}

void OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFromEdges<(OpenSubdiv::v3_1_1::Sdc::SchemeType)0,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 0;
  v29 = *MEMORY[0x277D85DE8];
  v8 = *(*(*a1 + 64) + 8 * a2 - 8);
  v9 = *(v8 + 8);
  v10 = *(v9 + 16);
  v24 = &v27;
  v25 = v10;
  v26 = 8;
  __p = 0;
  if (v10 >= 9)
  {
    v7 = operator new(4 * v10);
    __p = v7;
    v24 = v7;
    v26 = v10;
  }

  v11 = *(v9 + 4);
  if (v11 >= 1)
  {
    v12 = 0;
    for (i = 0; i < v11; ++i)
    {
      v14 = *(*(v8 + 216) + 4 * i);
      if (v14 != -1)
      {
        v15 = (*(v9 + 120) + v12);
        v16 = *(a4 + 2) + v14;
        v22 = *a4;
        v23 = v16;
        v17 = *(a3 + 2) + *v15;
        v20 = *a3;
        v21 = v17;
        OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v22, &v20, 0.5);
        v18 = *(a4 + 2) + v14;
        v22 = *a4;
        v23 = v18;
        v19 = *(a3 + 2) + v15[1];
        v20 = *a3;
        v21 = v19;
        OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v22, &v20, 0.5);
        v11 = *(v9 + 4);
      }

      v12 += 8;
    }

    v7 = __p;
  }

  operator delete(v7);
}

void OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFVarFromFaces<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = *(*(*a1 + 64) + 8 * a2 - 8);
  if (*(v5 + 52))
  {
    v8 = 0;
    v9 = *(v5 + 8);
    v10 = *(*(v9 + 456) + 8 * a5);
    v11 = *(*(*(v5 + 16) + 456) + 8 * a5);
    v33 = v9;
    v12 = *(v9 + 20);
    v38 = &v41;
    v39 = v12;
    v40 = 16;
    __p = 0;
    if (v12 >= 0x11)
    {
      v8 = operator new(4 * v12);
      __p = v8;
      v38 = v8;
      v40 = v12;
    }

    v13 = *v33;
    if (*v33 >= 1)
    {
      v14 = 0;
      v15.i32[1] = 0;
      v16 = vdupq_n_s64(4uLL);
      v32 = v16;
      do
      {
        v17 = *(*(v5 + 168) + 4 * v14);
        if (v17 != -1)
        {
          v18 = (*(*v10 + 24) + 8 * v14);
          v19 = *v18;
          if (v19 >= 1)
          {
            v20 = *(*(v11 + 96) + 4 * v17);
            v21 = v10[3] + 4 * v18[1];
            *v15.i32 = 1.0 / v19;
            v22 = (v19 + 3) & 0xFFFFFFFC;
            v23 = vdupq_n_s64(v19 - 1);
            v24 = v38 + 1;
            v25 = xmmword_21C27F640;
            v26 = xmmword_21C27F630;
            do
            {
              v27 = vmovn_s64(vcgeq_u64(v23, v25));
              if (vuzp1_s16(v27, v15).u8[0])
              {
                *(v24 - 2) = v15.i32[0];
              }

              if (vuzp1_s16(v27, v15).i8[2])
              {
                *(v24 - 1) = v15.i32[0];
              }

              if (vuzp1_s16(v15, vmovn_s64(vcgeq_u64(v23, *&v26))).i32[1])
              {
                *v24 = v15.i32[0];
                v24[1] = v15.i32[0];
              }

              v26 = vaddq_s64(v26, v16);
              v25 = vaddq_s64(v25, v16);
              v24 += 4;
              v22 -= 4;
            }

            while (v22);
            v28 = 0;
            v29 = 4 * v19;
            do
            {
              v30 = *(a4 + 2) + v20;
              v36 = *a4;
              v37 = v30;
              v31 = *(a3 + 2) + *(v21 + v28);
              v34 = *a3;
              v35 = v31;
              OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v36, &v34, *(v38 + v28));
              v28 += 4;
            }

            while (v29 != v28);
            v13 = *v33;
            v16 = v32;
          }
        }

        ++v14;
      }

      while (v14 < v13);
      v8 = __p;
    }

    operator delete(v8);
  }
}

void OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFVarFromEdges<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v70[1] = *MEMORY[0x277D85DE8];
  v8 = *(*(*a1 + 64) + 8 * a2 - 8);
  v62 = *(*a1 + 4);
  v53 = v8;
  v54 = v8[1];
  v9 = *(v8[60] + 8 * a5);
  v10 = *(*(v54 + 456) + 8 * a5);
  v50 = v8[2];
  v11 = *(*(v50 + 456) + 8 * a5);
  v12 = *(v54 + 16);
  v13 = v68;
  v65 = v68;
  v66 = v12;
  v67 = 8;
  __p = 0;
  if (v12 < 9)
  {
    v14 = 0;
  }

  else
  {
    v14 = operator new(4 * v12);
    __p = v14;
    v65 = v14;
    v67 = v12;
    v13 = v14;
  }

  v61[0] = v70;
  v61[1] = 0;
  v61[2] = v13;
  memset(&v61[3], 0, 13);
  if ((*(v10 + 12) & 1) != 0 || !**a1)
  {
    LODWORD(v61[3]) = 2;
    LODWORD(v61[4]) = 0;
    v70[0] = 0x3F0000003F000000;
    v51 = 1;
  }

  else
  {
    v51 = 0;
  }

  v59 = v54;
  if (*(v54 + 4) >= 1)
  {
    v52 = v11;
    v15 = 0;
    do
    {
      v16 = *(v53[27] + 4 * v15);
      if (v16 != -1)
      {
        v17 = (v52[18] + 4 * *(v52[12] + 4 * v16));
        if (*(v52[21] + *v17))
        {
          v41 = v52[9];
          v42 = *(v41 + 2 * v16);
          if (*(v41 + 2 * v16))
          {
            v43 = 0;
            do
            {
              v44 = *(*(v9 + 40) + 2 * (v43 + *(*(*(v9 + 32) + 96) + 4 * v16)));
              if (v43 != v44)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v10, v15, v44, &v63);
              v45 = v17[v43];
              v46 = *(a4 + 2) + v45;
              v57 = *a4;
              v58 = v46;
              v47 = *(a3 + 2);
              v55 = *a3;
              v56 = v47 + v63;
              OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v57, &v55, 0.5);
              v48 = *(a4 + 2) + v45;
              v57 = *a4;
              v58 = v48;
              v49 = *(a3 + 2);
              v55 = *a3;
              v56 = v49 + v64;
              OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v57, &v55, 0.5);
              ++v43;
            }

            while (v42 != v43);
          }
        }

        else
        {
          if ((v51 & 1) == 0)
          {
            v60 = v15;
            if (*(*(v54 + 216) + 4 * v15) <= 0.0)
            {
              v18 = 1;
            }

            else
            {
              v18 = 4;
            }

            OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeEdgeVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v62, &v59, v61, v18, (*(*(v50 + 432) + 2 * v16) >> 7) & 0xF);
          }

          OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v10, v15, 0, &v63);
          v19 = *v17;
          v20 = *(a4 + 2) + v19;
          v57 = *a4;
          v58 = v20;
          v21 = *(a3 + 2);
          v55 = *a3;
          v56 = v21 + v63;
          OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v57, &v55, *v70);
          v22 = *(a4 + 2) + v19;
          v57 = *a4;
          v58 = v22;
          v23 = *(a3 + 2);
          v55 = *a3;
          v56 = v23 + v64;
          OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v57, &v55, *(v70 + 1));
          if (SLODWORD(v61[4]) >= 1)
          {
            v24 = (*(v54 + 144) + 8 * v15);
            v25 = *v24;
            if (v25 >= 1)
            {
              v26 = 0;
              v27 = *(v54 + 168) + 4 * v24[1];
              do
              {
                v28 = *(v27 + 4 * v26);
                if (BYTE4(v61[4]) == 1)
                {
                  v29 = *(v53[21] + 4 * v28);
                  if (v29 == -1)
                  {
                    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_2();
                  }

                  v30 = *(v52[12] + 4 * v29);
                  v31 = *a4;
                  v32 = *(a4 + 2);
                  v57 = *a4;
                  v58 = v32 + v19;
                }

                else
                {
                  v33 = (2 * v28) | 1;
                  v34 = *(v54 + 24);
                  v35 = (*(v54 + 72) + 4 * *(v34 + 4 * v33));
                  v36 = *(v34 + 8 * v28);
                  v37 = 1;
                  do
                  {
                    v38 = *v35++;
                    ++v37;
                  }

                  while (v15 != v38);
                  v39 = *(*(*v10 + 24) + 4 * v33);
                  if (v37 < v36)
                  {
                    v36 = 0;
                  }

                  v30 = *(*(v10 + 24) + 4 * v39 + 4 * (v37 - v36));
                  v40 = *(a4 + 2) + v19;
                  v57 = *a4;
                  v58 = v40;
                  v31 = *a3;
                  v32 = *(a3 + 2);
                }

                v55 = v31;
                v56 = v32 + v30;
                OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v57, &v55, *&v65[4 * v26++]);
              }

              while (v26 != v25);
            }
          }
        }
      }

      ++v15;
    }

    while (v15 < *(v54 + 4));
    v14 = __p;
  }

  operator delete(v14);
}

void OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFVarFromVerts<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v100 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = *(*(*a1 + 64) + 8 * a2 - 8);
  v87 = *(*a1 + 4);
  v71 = v8;
  v67 = v8[1];
  v65 = v8[2];
  v69 = *(*(v67 + 456) + 8 * a5);
  v9 = (*(v69 + 12) & 1) != 0 || *v7 == 0;
  v74 = v9;
  v73 = *(v8[60] + 8 * a5);
  v70 = *(*(v65 + 456) + 8 * a5);
  v10 = *(v67 + 20);
  v95 = &v98;
  v96 = 2 * v10;
  v97 = 32;
  v99 = 0;
  if (2 * v10 >= 0x21)
  {
    v99 = operator new(8 * v10);
    v95 = v99;
    v97 = 2 * v10;
    v10 = *(v67 + 20);
  }

  v11 = 0;
  v90 = &v93;
  v91 = v10;
  v92 = 16;
  __p = 0;
  if (v10 >= 0x11)
  {
    v11 = operator new(4 * v10);
    __p = v11;
    v90 = v11;
    v92 = v10;
  }

  v82[0] = v67;
  v82[1] = v65;
  if (*(v67 + 8) >= 1)
  {
    v12 = 0;
    while (1)
    {
      v13 = *(v71[30] + 4 * v12);
      if (v13 != -1)
      {
        v14 = *(*(v69 + 12) + 4 * v12);
        v15 = (*(v69 + 18) + 4 * v14);
        v16 = *(v70[12] + 4 * v13);
        v17 = (v70[18] + 4 * v16);
        v18 = *v17;
        v19 = v70[21];
        v20 = v74;
        if (*(v19 + v18))
        {
          v20 = 0;
        }

        if (v20)
        {
          v21 = v18 + *(a4 + 8);
          v75 = *a4;
          LODWORD(v76) = v21;
          v22 = *(a3 + 8) + *v15;
          v80 = *a3;
          v81 = v22;
          v23 = &v75;
          v24 = &v80;
          v25 = 1.0;
        }

        else
        {
          if (*(v19 + v18))
          {
            v72 = *(v70[9] + 2 * v13);
            if (*(v70[9] + 2 * v13))
            {
              v45 = 0;
              v66 = *(v69 + 21) + v14;
              v68 = v19 + v16;
              do
              {
                v46 = *(*(v73 + 5) + 2 * (*(*(*(v73 + 4) + 96) + 4 * v13) + v45));
                if (v45 != v46)
                {
                  _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
                }

                v47 = v15;
                v48 = v15[v46];
                v49 = v17[v45];
                v50 = *(a4 + 8);
                if (!v74 && (*(v68 + v45) & 8) != 0)
                {
                  OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(v69, v12, v46, v88);
                  if ((*(v66 + v46) & 0x10) != 0)
                  {
                    if ((*(v66 + v46) & 0x20) != 0)
                    {
                      v57 = v46 == 0;
                      v55 = v73;
                      v56 = v12;
                    }

                    else
                    {
                      v55 = v73;
                      v56 = v12;
                      v57 = v46;
                    }

                    FractionalWeight = OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(v55, v56, v57, v13);
                    v53 = FractionalWeight + ((1.0 - FractionalWeight) * 0.75);
                    v54 = (1.0 - FractionalWeight) * 0.125;
                  }

                  else
                  {
                    v53 = 0.75;
                    v54 = 0.125;
                  }

                  v59 = *(a4 + 8) + v49;
                  v75 = *a4;
                  LODWORD(v76) = v59;
                  v60 = *(a3 + 8);
                  v80 = *a3;
                  v81 = v60 + v88[0];
                  OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v75, &v80, v54);
                  v61 = *(a4 + 8) + v49;
                  v75 = *a4;
                  LODWORD(v76) = v61;
                  v62 = *(a3 + 8);
                  v80 = *a3;
                  v81 = v62 + v88[1];
                  OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v75, &v80, v54);
                  v63 = *(a4 + 8) + v49;
                  v75 = *a4;
                  LODWORD(v76) = v63;
                  v64 = *(a3 + 8) + v48;
                  v80 = *a3;
                  v81 = v64;
                  v52 = v53;
                }

                else
                {
                  v75 = *a4;
                  LODWORD(v76) = v50 + v49;
                  v51 = *(a3 + 8) + v48;
                  v80 = *a3;
                  v81 = v51;
                  v52 = 1.0;
                }

                OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v75, &v80, v52);
                ++v45;
                v15 = v47;
              }

              while (v72 != v45);
            }

            goto LABEL_28;
          }

          v26 = *(*(v67 + 336) + 8 * v12);
          v79 = 0.0;
          v27 = v95;
          v28 = v95 + v26;
          v75 = &v79;
          v76 = v95;
          v77 = v28;
          memset(v78, 0, 13);
          v83 = v12;
          v84 = v13;
          v85 = *(*(v82[0] + 336) + 8 * v12);
          v86 = *(*(v82[0] + 264) + 8 * v12);
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v87, v82, &v75, (*(*(v67 + 432) + 2 * v12) >> 7) & 0xF, (*(*(v65 + 432) + 2 * v13) >> 7) & 0xF);
          v29 = *v15;
          v30 = *v17;
          if (v78[2] >= 1)
          {
            if ((v78[3] & 1) == 0)
            {
              _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_2();
            }

            v31 = *(v67 + 264);
            v32 = *(v31 + 8 * v12);
            if (v32 >= 1)
            {
              v33 = (*(v67 + 288) + 4 * *(v31 + 4 * ((2 * v12) | 1)));
              do
              {
                v34 = *v33++;
                v35 = *(v71[21] + 4 * v34);
                if (v35 == -1)
                {
                  _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_3();
                }

                v36 = *(v70[12] + 4 * v35);
                v37 = *(a4 + 8);
                v80 = *a4;
                v81 = v37 + v30;
                *v88 = v80;
                v89 = v37 + v36;
                v38 = *v28++;
                OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v80, v88, v38);
                --v32;
              }

              while (v32);
            }
          }

          if (v78[1] >= 1)
          {
            OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexEdgeValues(v69, v12, v90);
            if (v26 >= 1)
            {
              v39 = 0;
              v40 = 4 * v26;
              do
              {
                v41 = *(a4 + 8) + v30;
                v80 = *a4;
                v81 = v41;
                v42 = *(a3 + 8) + v90[v39 / 4];
                *v88 = *a3;
                v89 = v42;
                OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v80, v88, *(v27 + v39));
                v39 += 4;
              }

              while (v40 != v39);
            }
          }

          v43 = *(a4 + 8) + v30;
          v80 = *a4;
          v81 = v43;
          v44 = *(a3 + 8) + v29;
          *v88 = *a3;
          v89 = v44;
          v25 = v79;
          v23 = &v80;
          v24 = v88;
        }

        OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(v23, v24, v25);
      }

LABEL_28:
      if (++v12 >= *(v67 + 8))
      {
        v11 = __p;
        break;
      }
    }
  }

  operator delete(v11);
  operator delete(v99);
}

void OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFVarFromEdges<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v70[1] = *MEMORY[0x277D85DE8];
  v8 = *(*(*a1 + 64) + 8 * a2 - 8);
  v62 = *(*a1 + 4);
  v53 = v8;
  v54 = v8[1];
  v9 = *(v8[60] + 8 * a5);
  v10 = *(*(v54 + 456) + 8 * a5);
  v50 = v8[2];
  v11 = *(*(v50 + 456) + 8 * a5);
  v12 = *(v54 + 16);
  v13 = v68;
  v65 = v68;
  v66 = v12;
  v67 = 8;
  __p = 0;
  if (v12 < 9)
  {
    v14 = 0;
  }

  else
  {
    v14 = operator new(4 * v12);
    __p = v14;
    v65 = v14;
    v67 = v12;
    v13 = v14;
  }

  v61[0] = v70;
  v61[1] = 0;
  v61[2] = v13;
  memset(&v61[3], 0, 13);
  if ((*(v10 + 12) & 1) != 0 || !**a1)
  {
    LODWORD(v61[3]) = 2;
    LODWORD(v61[4]) = 0;
    v70[0] = 0x3F0000003F000000;
    v51 = 1;
  }

  else
  {
    v51 = 0;
  }

  v59 = v54;
  if (*(v54 + 4) >= 1)
  {
    v52 = v11;
    v15 = 0;
    do
    {
      v16 = *(v53[27] + 4 * v15);
      if (v16 != -1)
      {
        v17 = (v52[18] + 4 * *(v52[12] + 4 * v16));
        if (*(v52[21] + *v17))
        {
          v41 = v52[9];
          v42 = *(v41 + 2 * v16);
          if (*(v41 + 2 * v16))
          {
            v43 = 0;
            do
            {
              v44 = *(*(v9 + 40) + 2 * (v43 + *(*(*(v9 + 32) + 96) + 4 * v16)));
              if (v43 != v44)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v10, v15, v44, &v63);
              v45 = v17[v43];
              v46 = *(a4 + 2) + v45;
              v57 = *a4;
              v58 = v46;
              v47 = *(a3 + 2);
              v55 = *a3;
              v56 = v47 + v63;
              OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v57, &v55, 0.5);
              v48 = *(a4 + 2) + v45;
              v57 = *a4;
              v58 = v48;
              v49 = *(a3 + 2);
              v55 = *a3;
              v56 = v49 + v64;
              OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v57, &v55, 0.5);
              ++v43;
            }

            while (v42 != v43);
          }
        }

        else
        {
          if ((v51 & 1) == 0)
          {
            v60 = v15;
            if (*(*(v54 + 216) + 4 * v15) <= 0.0)
            {
              v18 = 1;
            }

            else
            {
              v18 = 4;
            }

            OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeEdgeVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v62, &v59, v61, v18, (*(*(v50 + 432) + 2 * v16) >> 7) & 0xF);
          }

          OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v10, v15, 0, &v63);
          v19 = *v17;
          v20 = *(a4 + 2) + v19;
          v57 = *a4;
          v58 = v20;
          v21 = *(a3 + 2);
          v55 = *a3;
          v56 = v21 + v63;
          OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v57, &v55, *v70);
          v22 = *(a4 + 2) + v19;
          v57 = *a4;
          v58 = v22;
          v23 = *(a3 + 2);
          v55 = *a3;
          v56 = v23 + v64;
          OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v57, &v55, *(v70 + 1));
          if (SLODWORD(v61[4]) >= 1)
          {
            v24 = (*(v54 + 144) + 8 * v15);
            v25 = *v24;
            if (v25 >= 1)
            {
              v26 = 0;
              v27 = *(v54 + 168) + 4 * v24[1];
              do
              {
                v28 = *(v27 + 4 * v26);
                if (BYTE4(v61[4]) == 1)
                {
                  v29 = *(v53[21] + 4 * v28);
                  if (v29 == -1)
                  {
                    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_2();
                  }

                  v30 = *(v52[12] + 4 * v29);
                  v31 = *a4;
                  v32 = *(a4 + 2);
                  v57 = *a4;
                  v58 = v32 + v19;
                }

                else
                {
                  v33 = (2 * v28) | 1;
                  v34 = *(v54 + 24);
                  v35 = (*(v54 + 72) + 4 * *(v34 + 4 * v33));
                  v36 = *(v34 + 8 * v28);
                  v37 = 1;
                  do
                  {
                    v38 = *v35++;
                    ++v37;
                  }

                  while (v15 != v38);
                  v39 = *(*(*v10 + 24) + 4 * v33);
                  if (v37 < v36)
                  {
                    v36 = 0;
                  }

                  v30 = *(*(v10 + 24) + 4 * v39 + 4 * (v37 - v36));
                  v40 = *(a4 + 2) + v19;
                  v57 = *a4;
                  v58 = v40;
                  v31 = *a3;
                  v32 = *(a3 + 2);
                }

                v55 = v31;
                v56 = v32 + v30;
                OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v57, &v55, *&v65[4 * v26++]);
              }

              while (v26 != v25);
            }
          }
        }
      }

      ++v15;
    }

    while (v15 < *(v54 + 4));
    v14 = __p;
  }

  operator delete(v14);
}

void OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFVarFromVerts<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, double a6)
{
  v101 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*(*a1 + 64) + 8 * a2 - 8);
  v88 = *(*a1 + 4);
  v72 = v9;
  v68 = v9[1];
  v66 = v9[2];
  v70 = *(*(v68 + 456) + 8 * a5);
  v10 = (*(v70 + 12) & 1) != 0 || *v8 == 0;
  v75 = v10;
  v74 = *(v9[60] + 8 * a5);
  v71 = *(*(v66 + 456) + 8 * a5);
  v11 = *(v68 + 20);
  v96 = &v99;
  v97 = 2 * v11;
  v98 = 32;
  v100 = 0;
  if (2 * v11 >= 0x21)
  {
    v100 = operator new(8 * v11);
    v96 = v100;
    v98 = 2 * v11;
    v11 = *(v68 + 20);
  }

  v12 = 0;
  v91 = &v94;
  v92 = v11;
  v93 = 16;
  __p = 0;
  if (v11 >= 0x11)
  {
    v12 = operator new(4 * v11);
    __p = v12;
    v91 = v12;
    v93 = v11;
  }

  v83[0] = v68;
  v83[1] = v66;
  if (*(v68 + 8) >= 1)
  {
    v13 = 0;
    while (1)
    {
      v14 = *(v72[30] + 4 * v13);
      if (v14 != -1)
      {
        v15 = *(*(v70 + 12) + 4 * v13);
        v16 = (*(v70 + 18) + 4 * v15);
        v17 = *(v71[12] + 4 * v14);
        v18 = (v71[18] + 4 * v17);
        v19 = *v18;
        v20 = v71[21];
        v21 = v75;
        if (*(v20 + v19))
        {
          v21 = 0;
        }

        if (v21)
        {
          v22 = v19 + *(a4 + 8);
          v76 = *a4;
          LODWORD(v77) = v22;
          v23 = *(a3 + 8) + *v16;
          v81 = *a3;
          v82 = v23;
          v24 = &v76;
          v25 = &v81;
          v26 = 1.0;
        }

        else
        {
          if (*(v20 + v19))
          {
            v73 = *(v71[9] + 2 * v14);
            if (*(v71[9] + 2 * v14))
            {
              v46 = 0;
              v67 = *(v70 + 21) + v15;
              v69 = v20 + v17;
              do
              {
                v47 = *(*(v74 + 5) + 2 * (*(*(*(v74 + 4) + 96) + 4 * v14) + v46));
                if (v46 != v47)
                {
                  _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
                }

                v48 = v16;
                v49 = v16[v47];
                v50 = v18[v46];
                v51 = *(a4 + 8);
                if (!v75 && (*(v69 + v46) & 8) != 0)
                {
                  OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(v70, v13, v47, v89);
                  if ((*(v67 + v47) & 0x10) != 0)
                  {
                    if ((*(v67 + v47) & 0x20) != 0)
                    {
                      v58 = v47 == 0;
                      v56 = v74;
                      v57 = v13;
                    }

                    else
                    {
                      v56 = v74;
                      v57 = v13;
                      v58 = v47;
                    }

                    FractionalWeight = OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(v56, v57, v58, v14);
                    v54 = FractionalWeight + ((1.0 - FractionalWeight) * 0.75);
                    v55 = (1.0 - FractionalWeight) * 0.125;
                  }

                  else
                  {
                    v54 = 0.75;
                    v55 = 0.125;
                  }

                  v60 = *(a4 + 8) + v50;
                  v76 = *a4;
                  LODWORD(v77) = v60;
                  v61 = *(a3 + 8);
                  v81 = *a3;
                  v82 = v61 + v89[0];
                  OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v76, &v81, v55);
                  v62 = *(a4 + 8) + v50;
                  v76 = *a4;
                  LODWORD(v77) = v62;
                  v63 = *(a3 + 8);
                  v81 = *a3;
                  v82 = v63 + v89[1];
                  OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v76, &v81, v55);
                  v64 = *(a4 + 8) + v50;
                  v76 = *a4;
                  LODWORD(v77) = v64;
                  v65 = *(a3 + 8) + v49;
                  v81 = *a3;
                  v82 = v65;
                  v53 = v54;
                }

                else
                {
                  v76 = *a4;
                  LODWORD(v77) = v51 + v50;
                  v52 = *(a3 + 8) + v49;
                  v81 = *a3;
                  v82 = v52;
                  v53 = 1.0;
                }

                OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v76, &v81, v53);
                ++v46;
                v16 = v48;
              }

              while (v73 != v46);
            }

            goto LABEL_28;
          }

          v27 = *(*(v68 + 336) + 8 * v13);
          v80 = 0.0;
          v28 = v96;
          v29 = v96 + v27;
          v76 = &v80;
          v77 = v96;
          v78 = v29;
          memset(v79, 0, 13);
          v84 = v13;
          v85 = v14;
          v86 = *(*(v83[0] + 336) + 8 * v13);
          v87 = *(*(v83[0] + 264) + 8 * v13);
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v88, v83, &v76, (*(*(v68 + 432) + 2 * v13) >> 7) & 0xF, (*(*(v66 + 432) + 2 * v14) >> 7) & 0xF, a6);
          v30 = *v16;
          v31 = *v18;
          if (v79[2] >= 1)
          {
            if ((v79[3] & 1) == 0)
            {
              _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_2();
            }

            v32 = *(v68 + 264);
            v33 = *(v32 + 8 * v13);
            if (v33 >= 1)
            {
              v34 = (*(v68 + 288) + 4 * *(v32 + 4 * ((2 * v13) | 1)));
              do
              {
                v35 = *v34++;
                v36 = *(v72[21] + 4 * v35);
                if (v36 == -1)
                {
                  _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_3();
                }

                v37 = *(v71[12] + 4 * v36);
                v38 = *(a4 + 8);
                v81 = *a4;
                v82 = v38 + v31;
                *v89 = v81;
                v90 = v38 + v37;
                v39 = *v29++;
                OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v81, v89, v39);
                --v33;
              }

              while (v33);
            }
          }

          if (v79[1] >= 1)
          {
            OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexEdgeValues(v70, v13, v91);
            if (v27 >= 1)
            {
              v40 = 0;
              v41 = 4 * v27;
              do
              {
                v42 = *(a4 + 8) + v31;
                v81 = *a4;
                v82 = v42;
                v43 = *(a3 + 8) + v91[v40 / 4];
                *v89 = *a3;
                v90 = v43;
                OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v81, v89, *(v28 + v40));
                v40 += 4;
              }

              while (v41 != v40);
            }
          }

          v44 = *(a4 + 8) + v31;
          v81 = *a4;
          v82 = v44;
          v45 = *(a3 + 8) + v30;
          *v89 = *a3;
          v90 = v45;
          v26 = v80;
          v24 = &v81;
          v25 = v89;
        }

        OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(v24, v25, v26);
      }

LABEL_28:
      if (++v13 >= *(v68 + 8))
      {
        v12 = __p;
        break;
      }
    }
  }

  operator delete(v12);
  operator delete(v100);
}

void OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFVarFromEdges<(OpenSubdiv::v3_1_1::Sdc::SchemeType)0,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v8 = 0;
  v44 = *MEMORY[0x277D85DE8];
  v31 = *(*(*a1 + 64) + 8 * a2 - 8);
  v32 = v31[1];
  v9 = *(v31[60] + 8 * a5);
  v10 = *(*(v32 + 456) + 8 * a5);
  v11 = *(*(v31[2] + 456) + 8 * a5);
  v12 = *(v32 + 16);
  v39 = &v42;
  v40 = v12;
  v41 = 8;
  __p = 0;
  if (v12 >= 9)
  {
    v8 = operator new(4 * v12);
    __p = v8;
    v39 = v8;
    v41 = v12;
  }

  if (*(v32 + 4) >= 1)
  {
    v30 = v11;
    v13 = 0;
    do
    {
      v14 = *(v31[27] + 4 * v13);
      if (v14 != -1)
      {
        v15 = (v30[18] + 4 * *(v30[12] + 4 * v14));
        if (*(v30[21] + *v15))
        {
          v21 = v30[9];
          v22 = *(v21 + 2 * v14);
          if (*(v21 + 2 * v14))
          {
            v23 = 0;
            do
            {
              v24 = *(*(v9 + 40) + 2 * (v23 + *(*(*(v9 + 32) + 96) + 4 * v14)));
              if (v23 != v24)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v10, v13, v24, &v37);
              v25 = v15[v23];
              v26 = *(a4 + 2) + v25;
              v35 = *a4;
              v36 = v26;
              v27 = *(a3 + 2);
              v33 = *a3;
              v34 = v27 + v37;
              OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v35, &v33, 0.5);
              v28 = *(a4 + 2) + v25;
              v35 = *a4;
              v36 = v28;
              v29 = *(a3 + 2);
              v33 = *a3;
              v34 = v29 + v38;
              OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v35, &v33, 0.5);
              ++v23;
            }

            while (v22 != v23);
          }
        }

        else
        {
          OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v10, v13, 0, &v37);
          v16 = *v15;
          v17 = *(a4 + 2) + *v15;
          v35 = *a4;
          v36 = v17;
          v18 = *(a3 + 2);
          v33 = *a3;
          v34 = v18 + v37;
          OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v35, &v33, 0.5);
          v19 = *(a4 + 2) + v16;
          v35 = *a4;
          v36 = v19;
          v20 = *(a3 + 2);
          v33 = *a3;
          v34 = v20 + v38;
          OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v35, &v33, 0.5);
        }
      }

      ++v13;
    }

    while (v13 < *(v32 + 4));
    v8 = __p;
  }

  operator delete(v8);
}

void OpenSubdiv::v3_1_1::Far::PrimvarRefiner::interpFVarFromVerts<(OpenSubdiv::v3_1_1::Sdc::SchemeType)0,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index,OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index>(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v71 = *MEMORY[0x277D85DE8];
  v7 = *(*(*a1 + 64) + 8 * a2 - 8);
  v8 = v7[2];
  v49 = v7;
  v50 = v7[1];
  v9 = v7[60];
  v10 = *(v8 + 456);
  v51 = *(*(v50 + 456) + 8 * a5);
  v11 = (*(v51 + 12) & 1) != 0 || **a1 == 0;
  v55 = v11;
  v54 = *(v9 + 8 * a5);
  v47 = *(v10 + 8 * a5);
  v12 = *(v50 + 20);
  v66 = &v69;
  v67 = 2 * v12;
  v68 = 32;
  v70 = 0;
  if (2 * v12 >= 0x21)
  {
    v70 = operator new(8 * v12);
    v66 = v70;
    v68 = 2 * v12;
    v12 = *(v50 + 20);
  }

  v13 = 0;
  v61 = &v64;
  v62 = v12;
  v63 = 16;
  __p = 0;
  if (v12 >= 0x11)
  {
    v13 = operator new(4 * v12);
    __p = v13;
    v61 = v13;
    v63 = v12;
  }

  if (*(v50 + 8) >= 1)
  {
    v14 = 0;
    while (1)
    {
      v15 = *(v49[30] + 4 * v14);
      if (v15 != -1)
      {
        v16 = *(*(v51 + 12) + 4 * v14);
        v17 = (*(v51 + 18) + 4 * v16);
        v18 = *(v47[12] + 4 * v15);
        v19 = (v47[18] + 4 * v18);
        v20 = *v19;
        v21 = v47[21];
        v22 = v55;
        if (*(v21 + v20))
        {
          v22 = 0;
        }

        if (v22)
        {
          v23 = v20 + *(a4 + 2);
          v58 = *a4;
          v59 = v23;
          v24 = *v17;
        }

        else
        {
          if (*(v21 + v20))
          {
            v53 = *(v47[9] + 2 * v15);
            if (*(v47[9] + 2 * v15))
            {
              v27 = 0;
              v48 = *(v51 + 21) + v16;
              v52 = v21 + v18;
              do
              {
                v28 = *(*(v54 + 5) + 2 * (*(*(*(v54 + 4) + 96) + 4 * v15) + v27));
                if (v27 != v28)
                {
                  _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
                }

                v29 = v17;
                v30 = v17[v28];
                v31 = v19[v27];
                v32 = *(a4 + 2);
                if (!v55 && (*(v52 + v27) & 8) != 0)
                {
                  OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(v51, v14, v28, v60);
                  if ((*(v48 + v28) & 0x10) != 0)
                  {
                    if ((*(v48 + v28) & 0x20) != 0)
                    {
                      v39 = v28 == 0;
                      v37 = v54;
                      v38 = v14;
                    }

                    else
                    {
                      v37 = v54;
                      v38 = v14;
                      v39 = v28;
                    }

                    FractionalWeight = OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(v37, v38, v39, v15);
                    v35 = FractionalWeight + ((1.0 - FractionalWeight) * 0.75);
                    v36 = (1.0 - FractionalWeight) * 0.125;
                  }

                  else
                  {
                    v35 = 0.75;
                    v36 = 0.125;
                  }

                  v41 = *(a4 + 2) + v31;
                  v58 = *a4;
                  v59 = v41;
                  v42 = *(a3 + 2);
                  v56 = *a3;
                  v57 = v42 + v60[0];
                  OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v58, &v56, v36);
                  v43 = *(a4 + 2) + v31;
                  v58 = *a4;
                  v59 = v43;
                  v44 = *(a3 + 2);
                  v56 = *a3;
                  v57 = v44 + v60[1];
                  OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v58, &v56, v36);
                  v45 = *(a4 + 2) + v31;
                  v58 = *a4;
                  v59 = v45;
                  v46 = *(a3 + 2) + v30;
                  v56 = *a3;
                  v57 = v46;
                  v34 = v35;
                }

                else
                {
                  v58 = *a4;
                  v59 = v32 + v31;
                  v33 = *(a3 + 2) + v30;
                  v56 = *a3;
                  v57 = v33;
                  v34 = 1.0;
                }

                OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v58, &v56, v34);
                ++v27;
                v17 = v29;
              }

              while (v53 != v27);
            }

            goto LABEL_18;
          }

          v24 = *v17;
          v25 = *(a4 + 2) + v20;
          v58 = *a4;
          v59 = v25;
        }

        v26 = *(a3 + 2) + v24;
        v56 = *a3;
        v57 = v26;
        OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(&v58, &v56, 1.0);
      }

LABEL_18:
      if (++v14 >= *(v50 + 8))
      {
        v13 = __p;
        break;
      }
    }
  }

  operator delete(v13);
  operator delete(v70);
}

void OpenSubdiv::v3_1_1::Far::StencilTableFactory::appendLocalPointStencilTable()
{
  __assert_rtn("appendLocalPointStencilTable", "stencilTableFactory.cpp", 312, "0");
}

{
  __assert_rtn("GetStencil", "stencilTable.h", 527, "(! _offsets.empty()) && i<(int)_offsets.size()");
}

uint64_t OpenSubdiv::v3_1_1::Far::GregoryBasis::ProtoBasis::ProtoBasis(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v5 = v4;
  v230 = v6;
  v232 = v7;
  v8 = v2;
  v9 = v1;
  v10 = 0;
  v273 = *MEMORY[0x277D85DE8];
  do
  {
    v11 = v1 + v10;
    *v11 = 0;
    *(v11 + 8) = v1 + v10 + 24;
    *(v11 + 344) = 0;
    *(v11 + 16) = 0x2800000028;
    v10 += 352;
  }

  while (v10 != 1408);
  for (i = 0; i != 1408; i += 352)
  {
    v13 = v1 + i;
    *(v13 + 1408) = 0;
    *(v13 + 1416) = v1 + i + 1432;
    *(v13 + 1752) = 0;
    *(v13 + 1424) = 0x2800000028;
  }

  for (j = 0; j != 1408; j += 352)
  {
    v15 = v1 + j;
    *(v15 + 2816) = 0;
    *(v15 + 2824) = v1 + j + 2840;
    *(v15 + 3160) = 0;
    *(v15 + 2832) = 0x2800000028;
  }

  v16 = v1 + 4224;
  v17 = 1408;
  do
  {
    *v16 = 0;
    *(v16 + 8) = v16 + 24;
    *(v16 + 344) = 0;
    *(v16 + 16) = 0x2800000028;
    v16 += 352;
    v17 -= 352;
  }

  while (v17);
  v228 = v1 + 1408;
  v229 = v1 + 2816;
  v226 = v1 + 4224;
  v18 = v1 + 5632;
  v19 = 1408;
  do
  {
    *v18 = 0;
    *(v18 + 8) = v18 + 24;
    *(v18 + 344) = 0;
    *(v18 + 16) = 0x2800000028;
    v18 += 352;
    v19 -= 352;
  }

  while (v19);
  v20 = *(v2 + 6) + 4 * *(*(v2 + 3) + 4 * ((2 * v3) | 1));
  FaceFVarValues = v20;
  if ((v4 & 0x80000000) == 0)
  {
    FaceFVarValues = OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceFVarValues(v2, v3, v4);
  }

  v21 = 0;
  v225 = v9 + 5632;
  v22 = *(v8 + 5);
  do
  {
    v23 = &(&v253)[v21];
    *v23 = &v256[v21 * 8];
    v23[1] = 0x2800000000;
    v23[22] = 0;
    v21 += 23;
  }

  while (v21 != 92);
  v24 = v22 + (v5 >= 0);
  v25 = 2 * v24;
  v227 = v24;
  if (v24)
  {
    if (v255 < v25)
    {
      operator delete(v257);
      v253 = v256;
      v255 = 40;
      v257 = operator new(4 * v25);
      v253 = v257;
      v255 = v25;
    }

    v254 = v25;
    if (v260 < v25)
    {
      operator delete(v262);
      v258 = v261;
      v260 = 40;
      v262 = operator new(4 * v25);
      v258 = v262;
      v260 = v25;
    }

    v259 = v25;
    if (v265 < v25)
    {
      operator delete(v267);
      v263 = v266;
      v265 = 40;
      v267 = operator new(4 * v25);
      v263 = v267;
      v265 = v25;
    }

    v264 = v25;
    if (v270 < v25)
    {
      operator delete(v272);
      v268 = v271;
      v270 = 40;
      v272 = operator new(4 * v25);
      v268 = v272;
      v270 = v25;
    }
  }

  else
  {
    operator delete(v257);
    v253 = v256;
    v254 = v25;
    v255 = 40;
    operator delete(v262);
    v258 = v261;
    v259 = v25;
    v260 = 40;
    operator delete(v267);
    v263 = v266;
    v265 = 40;
    v264 = v25;
    operator delete(v272);
    v268 = v271;
    v270 = 40;
  }

  v26 = 0;
  v269 = v25;
  v231 = v9;
  v235 = 4;
  do
  {
    *(v9 + 7040 + 4 * v26) = *(v20 + 4 * v26) + v230;
    v27 = (v232 + 6 * v26);
    v28 = *(v20 + 4 * v26);
    v29 = &(&v253)[23 * v26];
    if (*v27)
    {
      v30 = OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularPartialRingAroundVertex(v8, v28, v27, *v29, v5);
      if ((v30 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v30 = OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularRingAroundVertex(v8, v28, *v29, v5);
      if ((v30 & 1) == 0)
      {
LABEL_28:
        v31 = 0;
        v32 = v30 >> 1;
        v33 = 6.2832 / (v30 >> 1);
        LODWORD(v34) = v30 >> 1;
        goto LABEL_31;
      }
    }

    v35 = v30 - 1;
    v32 = v35 >> 1;
    LODWORD(v34) = (v35 >> 1) + 1;
    v33 = 3.1416 / (v35 >> 1);
    *(*v29 + 4 * v30) = *(*v29 + 4 * v35);
    v31 = 1;
LABEL_31:
    v242[v26] = v31;
    *(&v252[357] + v26) = v32;
    *(&v252[359] + v26) = v34;
    *(&v252[353] + v26) = v33;
    if (v34 < 1)
    {
LABEL_128:
      OpenSubdiv::v3_1_1::Far::GregoryBasis::ProtoBasis::ProtoBasis();
    }

    v36 = 0;
    v235 = v235 + v30 - 3;
    v37 = v26 + 1;
    v34 = v34;
    v38 = 2;
    v39 = *v29;
    while (1)
    {
      v40 = *v39;
      v39 += 2;
      if (v40 == *(FaceFVarValues + 4 * ((v26 + 1) & 3)))
      {
        v41 = v34 == 1 ? 0 : v38;
        if (*(*v29 + 4 * v41) == *(FaceFVarValues + 4 * ((v26 - 1) & 3)))
        {
          break;
        }
      }

      ++v36;
      v38 += 2;
      if (!--v34)
      {
        goto LABEL_128;
      }
    }

    *(&v252[355] + v26++) = v36;
  }

  while (v37 != 4);
  for (k = 0; k != 176; k += 44)
  {
    v43 = &v252[k + 177];
    *v43 = 0;
    v43[1] = &v252[k + 180];
    v43[43] = 0;
    v43[2] = 0x2800000028;
  }

  for (m = 0; m != 176; m += 44)
  {
    v45 = &v252[m + 1];
    *v45 = 0;
    v45[1] = &v252[m + 4];
    v45[43] = 0;
    v45[2] = 0x2800000028;
  }

  v46 = v251;
  v248 = v251;
  v249 = v227;
  v250 = 10;
  v252[0] = 0;
  LODWORD(v47) = v227;
  if (v227 >= 0xB)
  {
    v46 = operator new(352 * v227);
    v252[0] = v46;
    v248 = v46;
    v250 = v227;
    LODWORD(v47) = v249;
  }

  if (v47)
  {
    v47 = v47;
    do
    {
      *v46 = 0;
      v46[1] = v46 + 3;
      v46[43] = 0;
      v46[2] = 0x2800000028;
      v46 += 44;
      --v47;
    }

    while (v47);
  }

  v48 = 4 * v227;
  v49 = v246;
  v243 = v246;
  v244 = 4 * v227;
  v245 = 40;
  v247 = 0;
  if ((4 * v227) >= 0x29)
  {
    v49 = operator new(352 * v48);
    v247 = v49;
    v243 = v49;
    v245 = 4 * v227;
    v48 = v244;
  }

  if (v48)
  {
    v50 = v48;
    do
    {
      *v49 = 0;
      v49[1] = v49 + 3;
      v49[43] = 0;
      v49[2] = 0x2800000028;
      v49 += 44;
      --v50;
    }

    while (v50);
  }

  v51 = 0;
  v52 = 0;
  do
  {
    v238 = v51;
    v239 = *(FaceFVarValues + 4 * v52);
    v233 = v52;
    v53 = *(&v252[359] + v52);
    v240 = v53;
    if (v53 >= 1)
    {
      v54 = 0;
      v55 = 1.0 / (v53 + 5.0);
      v56 = v55 * v53;
      v236 = 352 * v53;
      v237 = &(&v253)[23 * v52];
      v57 = -1;
      v58 = 2;
      v59 = 4;
      do
      {
        v60 = (v53 + v57) % v53;
        v61 = *v237;
        v62 = (*v237 + v59);
        v64 = *(v62 - 1);
        v63 = *v62;
        if (v236 - 352 == v54)
        {
          v65 = 0;
        }

        else
        {
          v65 = v58;
        }

        v66 = *(v61 + 4 * v65);
        v67 = *(v61 + 8 * v60);
        v68 = *(v61 + 8 * v60 + 4);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v248[v54], 4);
        v69.n128_f32[0] = v56;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v248[v54], v239, v69);
        v70.n128_f32[0] = v55 + v55;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v248[v54], v66, v70);
        v71.n128_f32[0] = v55 + v55;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v248[v54], v64, v71);
        v72.n128_f32[0] = v55;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v248[v54], v63, v72);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v243[v238 + v54], 4);
        v73.n128_u32[0] = 1051372203;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v243[v238 + v54], v66, v73);
        v74.n128_u32[0] = -1096111445;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v243[v238 + v54], v67, v74);
        v75.n128_u32[0] = 1042983595;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v243[v238 + v54], v63, v75);
        v76 = v68;
        v53 = v240;
        v77.n128_u32[0] = -1104500053;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v243[v238 + v54], v76, v77);
        v54 += 352;
        v59 += 8;
        ++v57;
        v58 += 2;
      }

      while (v236 != v54);
    }

    v78 = v233;
    if ((*(v232 + 6 * v233 + 4) & 2) != 0)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear((v231 + 352 * v233), v235);
      v109.n128_u32[0] = 1.0;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v231 + 352 * v233), v239, v109);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v252[44 * v233 + 177], v235);
      v110.n128_u32[0] = 1059760811;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v252[44 * v233 + 177], *(FaceFVarValues + 4 * v233), v110);
      v111.n128_u32[0] = 1051372203;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v252[44 * v233 + 177], *(FaceFVarValues + 4 * ((v233 + 1) & 3)), v111);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v252[44 * v233 + 1], v235);
      v112.n128_u32[0] = 1059760811;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v252[44 * v233 + 1], *(FaceFVarValues + 4 * v233), v112);
      v113.n128_u32[0] = 1051372203;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v252[44 * v233 + 1], *(FaceFVarValues + 4 * ((v233 - 1) & 3)), v113);
    }

    else if (v242[v233])
    {
      v79 = &(&v253)[23 * v233];
      v80 = **v79;
      v81 = (*v79)[2 * v53 - 1];
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear((v231 + 352 * v233), v235);
      v82.n128_u32[0] = 1042983595;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v231 + 352 * v233), v80, v82);
      v83.n128_u32[0] = 1042983595;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v231 + 352 * v233), v81, v83);
      v84.n128_u32[0] = 1059760811;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v231 + 352 * v233), v239, v84);
      v85 = *(&v252[357] + v233);
      v86 = *(&v252[353] + v233);
      v87 = __sincosf_stret(v86);
      v88 = 1.0 / (v87.__cosval + (v85 * 3.0));
      v89 = (*v79)[1];
      v90 = (v88 * -(((v87.__cosval * 2.0) + 1.0) * sqrtf(v87.__cosval + 1.0))) / sqrtf(1.0 - v87.__cosval);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v252[44 * v233 + 177], v235);
      v91.n128_u32[0] = 1042983595;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v252[44 * v233 + 177], v80, v91);
      v92.n128_u32[0] = -1104500053;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v252[44 * v233 + 177], v81, v92);
      v93 = &v252[44 * v233 + 1];
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(v93, v235);
      v94.n128_f32[0] = (v87.__sinval * -4.0) * v88;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v93, v239, v94);
      v95.n128_f32[0] = v90;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v93, v80, v95);
      v96.n128_f32[0] = v87.__sinval * v88;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v93, v89, v96);
      v97.n128_f32[0] = v90;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v93, v81, v97);
      if (v240 >= 3)
      {
        v98 = 0;
        v99 = 1;
        do
        {
          v100 = sinf(v86 * v99);
          v101 = v88 * (v100 * 4.0);
          v102 = v88 * (v100 + sinf(v86 * ++v99));
          v103 = &(*v79)[v98 / 4];
          v104 = v103[3];
          v105.n128_f32[0] = v101;
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v93, v103[2], v105);
          v106.n128_f32[0] = v102;
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v93, v104, v106);
          v98 += 8;
        }

        while (8 * (v240 - 1) - 8 != v98);
      }

      v107 = *v93;
      v78 = v233;
      if (v107 >= 1)
      {
        v108 = (v93[1] + 4);
        do
        {
          *v108 = *v108 * 0.33333;
          v108 += 2;
          --v107;
        }

        while (v107);
      }
    }

    else
    {
      if (v53 <= 0)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::ProtoBasis::ProtoBasis();
      }

      v114 = *(&v252[353] + v233);
      if (v53 > 0x1D)
      {
        v117 = cosf(6.2832 / v53);
        v116 = 1.0;
        v115 = 1.0 / ((((v117 + 5.0) + sqrtf((v117 + 9.0) * (v117 + 1.0))) * v53) * 0.0625);
      }

      else
      {
        v115 = OpenSubdiv::v3_1_1::Far::computeCoefficient(int)::efTable[v53];
        v116 = 1.0;
      }

      v118 = v116 / v53;
      v119 = 44 * v233;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear((v231 + 352 * v233), v235);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v252[44 * v233 + 177], v235);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v252[44 * v233 + 1], v235);
      v121 = 0;
      v122 = 0;
      v123 = v115 * 0.5;
      v124 = v53 - 1;
      do
      {
        v125 = (v124 + v122) % v53;
        v120.n128_f32[0] = v118;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v231 + v119 * 8), &v248[v121], v120);
        v126 = __sincosf_stret(v114 * v122);
        v127.n128_f32[0] = v123 * v126.__cosval;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v252[v119 + 177], &v248[v121], v127);
        v128.n128_f32[0] = v123 * v126.__cosval;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v252[v119 + 177], &v248[352 * v125], v128);
        v129.n128_f32[0] = v123 * v126.__sinval;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v252[v119 + 1], &v248[v121], v129);
        LODWORD(v53) = v240;
        v130.n128_f32[0] = v123 * v126.__sinval;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v252[v119 + 1], &v248[352 * v125], v130);
        ++v122;
        v121 += 352;
      }

      while (v240 != v122);
    }

    v52 = v78 + 1;
    v51 = v238 + 352 * v227;
  }

  while (v52 != 4);
  v131 = 0;
  v132 = 0;
  v133 = (v232 + 4);
  v134 = v230;
  do
  {
    v135 = *v133;
    v133 += 6;
    if ((v135 & 2) != 0)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=((v231 + v131 + 1408), &v252[v131 / 8 + 177]);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=((v231 + v131 + 2816), &v252[v131 / 8 + 1]);
    }

    else
    {
      v136 = *(&v252[355] + v132);
      v137 = *(&v252[353] + v132);
      v138 = v137 * v136;
      v139 = v137 * ((v136 + 1) % *(&v252[359] + v132));
      if ((v242[v132] & 1) != 0 && *(&v252[357] + v132) < 2)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear((v231 + v131 + 1408), v235);
        v146.n128_u32[0] = 1059760811;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v231 + v131 + 1408), *(FaceFVarValues + 4 * v132), v146);
        v147.n128_u32[0] = 1051372203;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v231 + v131 + 1408), *(FaceFVarValues + 4 * ((v132 + 1) & 3)), v147);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear((v231 + v131 + 2816), v235);
        v148.n128_u32[0] = 1059760811;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v231 + v131 + 2816), *(FaceFVarValues + 4 * v132), v148);
        v149.n128_u32[0] = 1051372203;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v231 + v131 + 2816), *(FaceFVarValues + 4 * ((v132 - 1) & 3)), v149);
      }

      else
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=((v231 + v131 + 1408), (v231 + v131));
        v140 = __sincosf_stret(v138);
        v141.n128_u32[0] = LODWORD(v140.__cosval);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v231 + v131 + 1408), &v252[v131 / 8 + 177], v141);
        v142.n128_u32[0] = LODWORD(v140.__sinval);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v231 + v131 + 1408), &v252[v131 / 8 + 1], v142);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=((v231 + v131 + 2816), (v231 + v131));
        v143 = __sincosf_stret(v139);
        v144.n128_u32[0] = LODWORD(v143.__cosval);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v231 + v131 + 2816), &v252[v131 / 8 + 177], v144);
        v145.n128_u32[0] = LODWORD(v143.__sinval);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v231 + v131 + 2816), &v252[v131 / 8 + 1], v145);
      }
    }

    ++v132;
    v131 += 352;
  }

  while (v132 != 4);
  v150 = 0;
  v151 = 0;
  v152 = -2.0;
  v153 = v229;
  do
  {
    v241 = v151 + 1;
    v154 = (v151 + 1) & 3;
    v155 = (v151 - 1) & 3;
    v156 = *(&v252[355] + v151);
    v157 = &v243[352 * v156];
    v158 = &v243[352 * ((v156 + 1) % *(&v252[359] + v151))];
    v159 = cosf(*(&v252[353] + v151));
    v160 = cosf(*(&v252[353] + v155));
    v161 = cosf(*(&v252[353] + v154));
    v162 = (v159 * v152) + 3.0;
    v163 = v162 - v161;
    v164 = v159 + v159;
    v165 = v162 - v160;
    if (v242[v151])
    {
      v166 = *(&v252[357] + v151);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear((v153 + 1408), v235);
      if (v166 < 2)
      {
        v167.n128_u32[0] = 1055100473;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 1408), *(FaceFVarValues + 4 * v151), v167);
        v189.n128_u32[0] = 1038323257;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 1408), *(FaceFVarValues + 4 * (v151 ^ 2)), v189);
        v190.n128_u32[0] = 1046711865;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 1408), *(FaceFVarValues + 4 * v154), v190);
        v191.n128_u32[0] = 1046711865;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 1408), *(FaceFVarValues + 4 * v155), v191);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=((v153 + 2816), (v153 + 1408));
        v134 = v230;
      }

      else
      {
        v167.n128_f32[0] = v161 / 3.0;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 1408), (v153 - 2816), v167);
        v168.n128_f32[0] = v163 / 3.0;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 1408), (v153 - 1408), v168);
        v169.n128_f32[0] = v164 / 3.0;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 1408), (v229 + 352 * v154), v169);
        v170.n128_u32[0] = 1051372203;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 1408), &v157[v150], v170);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear((v153 + 2816), v235);
        *&v171 = v160 / 3.0;
        v172.n128_u32[0] = v171;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 2816), (v153 - 2816), v172);
        *&v173 = v165 / 3.0;
        v174.n128_u32[0] = v173;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 2816), v153, v174);
        v175.n128_f32[0] = v164 / 3.0;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 2816), (v228 + 352 * ((v151 - 1) & 3)), v175);
        v176.n128_u32[0] = -1096111445;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 2816), &v158[v150], v176);
        if (v242[v155] == 1)
        {
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear((v153 + 1408), v235);
          v177.n128_f32[0] = v161 / 3.0;
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 1408), (v153 - 2816), v177);
          v178.n128_f32[0] = v163 / 3.0;
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 1408), (v153 - 1408), v178);
          v179.n128_f32[0] = v164 / 3.0;
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 1408), (v229 + 352 * v154), v179);
          v180.n128_u32[0] = 1051372203;
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 1408), &v157[v150], v180);
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=((v153 + 2816), (v153 + 1408));
          v134 = v230;
          v152 = -2.0;
        }

        else
        {
          v134 = v230;
          v152 = -2.0;
          if (v242[v154] == 1)
          {
            OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear((v153 + 2816), v235);
            v192.n128_u32[0] = v171;
            OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 2816), (v153 - 2816), v192);
            v193.n128_u32[0] = v173;
            OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 2816), v153, v193);
            v194.n128_f32[0] = v164 / 3.0;
            OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 2816), (v228 + 352 * ((v151 - 1) & 3)), v194);
            v195.n128_u32[0] = -1096111445;
            OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 2816), &v158[v150], v195);
            OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=((v153 + 1408), (v153 + 2816));
          }
        }
      }
    }

    else
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear((v153 + 1408), v235);
      v181.n128_f32[0] = v161 / 3.0;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 1408), (v153 - 2816), v181);
      v182.n128_f32[0] = v163 / 3.0;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 1408), (v153 - 1408), v182);
      v183.n128_f32[0] = v164 / 3.0;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 1408), (v229 + 352 * v154), v183);
      v184.n128_u32[0] = 1051372203;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 1408), &v157[v150], v184);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear((v153 + 2816), v235);
      v185.n128_f32[0] = v160 / 3.0;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 2816), (v153 - 2816), v185);
      v186.n128_f32[0] = v165 / 3.0;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 2816), v153, v186);
      v187.n128_f32[0] = v164 / 3.0;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 2816), (v228 + 352 * ((v151 - 1) & 3)), v187);
      v188.n128_u32[0] = -1096111445;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v153 + 2816), &v158[v150], v188);
    }

    v150 += 352 * v227;
    v153 += 352;
    ++v151;
  }

  while (v241 != 4);
  for (n = 0; n != 4; ++n)
  {
    v197 = (v231 + 352 * n);
    v198 = *v197;
    if (v198 >= 1)
    {
      v199 = *(v197 + 1);
      do
      {
        *v199 += v134;
        v199 += 2;
        --v198;
      }

      while (v198);
    }

    v200 = (v228 + 352 * n);
    v201 = *v200;
    if (v201 >= 1)
    {
      v202 = *(v200 + 1);
      do
      {
        *v202 += v134;
        v202 += 2;
        --v201;
      }

      while (v201);
    }

    v203 = (v229 + 352 * n);
    v204 = *v203;
    if (v204 >= 1)
    {
      v205 = *(v203 + 1);
      do
      {
        *v205 += v134;
        v205 += 2;
        --v204;
      }

      while (v204);
    }

    v206 = (v226 + 352 * n);
    v207 = *v206;
    if (v207 >= 1)
    {
      v208 = *(v206 + 1);
      do
      {
        *v208 += v134;
        v208 += 2;
        --v207;
      }

      while (v207);
    }

    v209 = (v225 + 352 * n);
    v210 = *v209;
    if (v210 >= 1)
    {
      v211 = *(v209 + 1);
      do
      {
        *v211 += v134;
        v211 += 2;
        --v210;
      }

      while (v210);
    }
  }

  if (v244)
  {
    v212 = 0;
    v213 = 344;
    do
    {
      v214 = &v243[v213];
      v215 = &v243[v213 - 336];
      operator delete(*&v243[v213]);
      *v215 = v214 - 320;
      *(v214 - 81) = 40;
      ++v212;
      v213 += 352;
    }

    while (v212 < v244);
  }

  operator delete(v247);
  if (v249)
  {
    v216 = 0;
    v217 = 344;
    do
    {
      v218 = &v248[v217];
      v219 = &v248[v217 - 336];
      operator delete(*&v248[v217]);
      *v219 = v218 - 320;
      *(v218 - 81) = 40;
      ++v216;
      v217 += 352;
    }

    while (v216 < v249);
  }

  operator delete(v252[0]);
  v220 = 1408;
  do
  {
    operator delete(v252[v220 / 8]);
    *&v251[v220 + 3184] = &v251[v220 + 3200];
    *&v251[v220 + 3196] = 40;
    v220 -= 352;
  }

  while (v220);
  v221 = 176;
  do
  {
    operator delete(v252[v221 + 176]);
    v252[v221 + 134] = &v252[v221 + 136];
    HIDWORD(v252[v221 + 135]) = 40;
    v221 -= 44;
  }

  while (v221 * 8);
  v222 = 92;
  do
  {
    v223 = &(&v253)[v222];
    operator delete(v252[v222 + 360]);
    *(v223 - 23) = v223 - 168;
    *(v223 - 43) = 40;
    v222 -= 23;
  }

  while (v222 * 8);
  return v231;
}

void OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(void **this, signed int a2)
{
  *this = 0;
  if (*(this + 4) < a2)
  {
    if (a2)
    {
      if (*(this + 5) < a2)
      {
        operator delete(this[43]);
        this[1] = this + 3;
        *(this + 5) = 40;
        v4 = operator new(8 * a2);
        this[43] = v4;
        this[1] = v4;
        *(this + 5) = a2;
      }
    }

    else
    {
      operator delete(this[43]);
      this[1] = this + 3;
      *(this + 5) = 40;
    }

    *(this + 4) = a2;
  }
}

float OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(OpenSubdiv::v3_1_1::Far::GregoryBasis::Point *this, int a2, __n128 a3)
{
  v3 = *this;
  if (*this < 1)
  {
LABEL_5:
    if (v3 >= *(this + 4))
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight();
    }

    v6 = (*(this + 1) + 8 * v3);
    *v6 = a2;
    v6[1] = a3.n128_u32[0];
    *this = v3 + 1;
  }

  else
  {
    v4 = (*(this + 1) + 4);
    v5 = *this;
    while (*(v4 - 1) != a2)
    {
      v4 += 2;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    a3.n128_f32[0] = *v4 + a3.n128_f32[0];
    *v4 = a3.n128_f32[0];
  }

  return a3.n128_f32[0];
}

void OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(OpenSubdiv::v3_1_1::Far::GregoryBasis::Point *this, const OpenSubdiv::v3_1_1::Far::GregoryBasis::Point *a2, __n128 a3)
{
  if (*a2 >= 1)
  {
    v3 = a3.n128_f32[0];
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(a2 + 1) + v6;
      a3.n128_f32[0] = *(v8 + 4) * v3;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(this, *v8, a3);
      ++v7;
      v6 += 8;
    }

    while (v7 < *a2);
  }
}

int *OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(int *a1, int *a2)
{
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(a1, a2[4]);
  v4 = *a2;
  *a1 = *a2;
  if (v4 > a1[4])
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=();
  }

  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      *(*(a1 + 1) + 8 * v5) = *(*(a2 + 1) + 8 * v5);
      ++v5;
    }

    while (v5 < *a1);
  }

  return a1;
}

void OpenSubdiv::v3_1_1::Far::GregoryBasis::ProtoBasis::ProtoBasis()
{
  __assert_rtn("ProtoBasis", "gregoryBasis.cpp", 169, "cornerPatchFace[corner] != -1");
}

{
  __assert_rtn("computeCoefficient", "gregoryBasis.cpp", 53, "valence > 0");
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::Refinement(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  *result = &unk_282DCB3A8;
  *(result + 8) = a2;
  *(result + 16) = a3;
  v4 = *a4;
  *(result + 120) = 0u;
  *(result + 24) = v4;
  *(result + 32) = -1;
  *(result + 36) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 84) = 0u;
  *(result + 136) = 0u;
  *(result + 152) = 0u;
  *(result + 168) = 0u;
  *(result + 184) = 0u;
  *(result + 200) = 0u;
  *(result + 216) = 0u;
  *(result + 232) = 0u;
  *(result + 248) = 0u;
  *(result + 264) = 0u;
  *(result + 280) = 0u;
  *(result + 296) = 0u;
  *(result + 312) = 0u;
  *(result + 328) = 0u;
  *(result + 344) = 0u;
  *(result + 360) = 0u;
  *(result + 376) = 0u;
  *(result + 392) = 0u;
  *(result + 408) = 0u;
  *(result + 424) = 0u;
  *(result + 440) = 0u;
  *(result + 456) = 0u;
  *(result + 472) = 0u;
  *(result + 488) = 0u;
  if (*(a3 + 8))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::Refinement();
  }

  *(a3 + 12) = *(a2 + 12) + 1;
  return result;
}

void OpenSubdiv::v3_1_1::Vtr::internal::Refinement::~Refinement(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  *this = &unk_282DCB3A8;
  v4 = this + 480;
  v2 = *(this + 60);
  v3 = *(v4 + 1);
  if (((v3 - v2) >> 3) >= 1)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::~FVarRefinement(v2[v5]);
        MEMORY[0x21CF07610]();
        v2 = *(this + 60);
        v3 = *(this + 61);
      }

      ++v5;
    }

    while (v5 < ((v3 - v2) >> 3));
  }

  if (v2)
  {
    *(this + 61) = v2;
    operator delete(v2);
  }

  v6 = *(this + 57);
  if (v6)
  {
    *(this + 58) = v6;
    operator delete(v6);
  }

  v7 = *(this + 54);
  if (v7)
  {
    *(this + 55) = v7;
    operator delete(v7);
  }

  v8 = *(this + 51);
  if (v8)
  {
    *(this + 52) = v8;
    operator delete(v8);
  }

  v9 = *(this + 48);
  if (v9)
  {
    *(this + 49) = v9;
    operator delete(v9);
  }

  v10 = *(this + 45);
  if (v10)
  {
    *(this + 46) = v10;
    operator delete(v10);
  }

  v11 = *(this + 42);
  if (v11)
  {
    *(this + 43) = v11;
    operator delete(v11);
  }

  v12 = *(this + 39);
  if (v12)
  {
    *(this + 40) = v12;
    operator delete(v12);
  }

  v13 = *(this + 36);
  if (v13)
  {
    *(this + 37) = v13;
    operator delete(v13);
  }

  v14 = *(this + 33);
  if (v14)
  {
    *(this + 34) = v14;
    operator delete(v14);
  }

  v15 = *(this + 30);
  if (v15)
  {
    *(this + 31) = v15;
    operator delete(v15);
  }

  v16 = *(this + 27);
  if (v16)
  {
    *(this + 28) = v16;
    operator delete(v16);
  }

  v17 = *(this + 24);
  if (v17)
  {
    *(this + 25) = v17;
    operator delete(v17);
  }

  v18 = *(this + 21);
  if (v18)
  {
    *(this + 22) = v18;
    operator delete(v18);
  }

  v19 = *(this + 18);
  if (v19)
  {
    *(this + 19) = v19;
    operator delete(v19);
  }

  v20 = *(this + 15);
  if (v20)
  {
    *(this + 16) = v20;
    operator delete(v20);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::Refinement::initializeSparseSelectionTags(void *this)
{
  v2 = this[1];
  v3 = *v2;
  v4 = this[51];
  v5 = this[52] - v4;
  if (v3 <= v5)
  {
    if (v3 < v5)
    {
      this[52] = v4 + v3;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::SparseTag>::__append((this + 51), v3 - v5);
    v2 = this[1];
  }

  v6 = v2[1];
  v7 = this[54];
  v8 = this[55] - v7;
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      this[55] = v7 + v6;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::SparseTag>::__append((this + 54), v6 - v8);
    v2 = this[1];
  }

  v9 = v2[2];
  v10 = this[57];
  v11 = this[58] - v10;
  if (v9 <= v11)
  {
    if (v9 < v11)
    {
      this[58] = v10 + v9;
    }
  }

  else
  {

    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::SparseTag>::__append((this + 57), v9 - v11);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::Refinement::refine(std::vector<int> *this, char a2)
{
  end = this->__end_;
  if (!end || !this->__end_cap_.__value_)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::refine();
  }

  BYTE4(this[1].__end_) = (a2 & 1) == 0;
  BYTE5(this[1].__end_) = (a2 & 2) != 0;
  v5 = (*(end + 58) - *(end + 57)) >> 3;
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateParentToChildMapping(this);
  value = this->__end_cap_.__value_;
  begin_high = HIDWORD(this[2].__begin_);
  v8 = LODWORD(this[2].__begin_) + HIDWORD(this[1].__end_cap_.__value_);
  *value = this[1].__end_cap_.__value_;
  value[1] = v8;
  value[2] = LODWORD(this[2].__end_) + begin_high + HIDWORD(this[2].__end_);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateChildToParentMapping(this, v9, v10);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceTagVectors(this);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeTagVectors(this);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagVectors(this);
  if ((a2 & 4) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = -1;
  }

  v16[0] = v11;
  if (v5 < 1)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideTopology(this, v16);
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideEdgeSharpness(this, v14);
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideVertexSharpness(this, v15);

    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::reclassifySemisharpVertices(this);
  }

  else
  {
    v16[0] = v11 | 0x10;
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideTopology(this, v16);
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideEdgeSharpness(this, v12);
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideVertexSharpness(this, v13);
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::reclassifySemisharpVertices(this);

    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideFVarChannels(this);
  }
}